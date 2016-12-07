using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace 航天云态度表达.Lib
{
    public class MainLib
    {
        #region 定义
        static string responesUrl = "http://192.168.5.2:50002/Getresult";
        static string resetUrl = "http://192.168.5.2:50002/start";
        //static string postAll = "type=all";
        static Regex regexID = new Regex(@"(?<=^{)\d+");// 匹配学生id
        static Regex regexContent = new Regex(@"(?<={)\d+,\d+");// 匹配学生按键内容和时间
        static MatchCollection mc1, mc2;
        static Dictionary<string, string> timestamp = new Dictionary<string, string>();
        const string ERROR = "[ERROR]";
        #endregion
        /// <summary>
        /// POST请求与获取结果
        /// </summary>
        public static string HttpPostData(string Url, string postDataStr)
        {
            string retString = string.Empty;
            HttpWebRequest request;
            HttpWebResponse response;
            try
            {
                request = (HttpWebRequest)WebRequest.Create(Url);
                request.Method = "POST";
                request.Timeout = 2000;
                request.ContentType = "application/x-www-form-urlencoded";
                if (!string.IsNullOrEmpty(postDataStr))
                {
                    request.ContentLength = postDataStr.Length;
                    using (StreamWriter writer = new StreamWriter(request.GetRequestStream(), Encoding.ASCII))
                    {
                        writer.Write(postDataStr);
                        writer.Flush();
                    }
                }
                response = (HttpWebResponse)request.GetResponse();
                string encoding = response.ContentEncoding;
                if (string.IsNullOrEmpty(encoding))
                {
                    encoding = "UTF-8"; //默认编码
                }
                using (StreamReader reader = new StreamReader(response.GetResponseStream(), Encoding.GetEncoding(encoding)))
                {
                    retString = reader.ReadToEnd();
                }
                Log.ToFile(retString);
                return retString;
            }
            catch (Exception exc)
            {
                Log.ToFile("url=" + Url + "错误：" + exc.Message);
                return ERROR;
            }
            finally
            { 
                
            }
        }
        /// <summary>
        /// 读答题器结果返回一个统计态度的对象
        /// </summary>
        /// <param name="aData"></param>
        /// <returns></returns>
        public static void ReadData(ref ReportData rData, ref AttitudeData aData)
        {
            try
            {
                string html = HttpPostData(responesUrl, null);

                if (!string.IsNullOrEmpty(html) && !html.Equals(ERROR))
                {
                    AddData(html, timestamp, rData, aData);
                }
            }
            catch (Exception exc)
            {
                Log.ToFile(exc.Message);
            }
        }
        /// <summary>
        /// 读取新的数据汇总
        /// </summary>
        /// <param name="html"></param>
        /// <param name="dic"></param>
        /// <param name="aData"></param>
        public static void AddData(string html, Dictionary<string, string> dic, ReportData rData, AttitudeData aData)
        {
            string[] arr = html.Split(';');
            foreach (var item in arr)
            {
                mc1 = regexID.Matches(item);
                mc2 = regexContent.Matches(item);
                KeyPressInfo keyPress = new KeyPressInfo();
                keyPress.ID = mc1[0].ToString();
                foreach (var value in mc2)
                {
                    string[] temp = value.ToString().Split(',');
                    if (dic.ContainsKey(keyPress.ID))
                    {
                        //  比较时间戳
                        if (Convert.ToInt32(dic[keyPress.ID]) >= Convert.ToInt32(temp[1]))
                        {
                            continue;
                        }
                        else
                        {
                            keyPress.Key = temp[0];
                            keyPress.Time = temp[1];
                            rData.AddKeyPress(keyPress);
                            ConvertKeyToAttitude(temp[0], aData);
                        }
                    }
                }
                // 下次从该时间戳后面读取
                if (!dic.ContainsKey(keyPress.ID))
                {
                    dic.Add(keyPress.ID, keyPress.Time);
                }
                else
                {
                    if (Convert.ToInt32(dic[keyPress.ID]) < Convert.ToInt32(keyPress.Time))
                        dic[keyPress.ID] = keyPress.Time;
                }
            }
        }
        /// <summary>
        /// 累加按键表示的态度
        /// </summary>
        private static void ConvertKeyToAttitude(string key, AttitudeData aData)
        {
            switch (key)
            {
                case "A":
                case "1":
                    aData.PraiseCount++;
                    break;
                case "B":
                case "2":
                    aData.ObjectCount++;
                    break;
                case "C":
                case "3":
                    aData.PuzzleCount++;
                    break;
                case "D":
                case "4":
                    aData.BoringCount++;
                    break;
            }
        }
        /// <summary>
        /// 获取最后一个按答题器的学生信息
        /// </summary>
        /// <returns></returns>
        internal static Student GetStudent()
        {
            string html = HttpPostData(responesUrl, null);
            if (!string.IsNullOrEmpty(html) && !html.Equals(ERROR))
            {
                string[] ss = html.Split(';');
                MatchCollection mc = regexID.Matches(ss[ss.Length - 1]);
                string deviceID = mc[mc.Count - 1].ToString();
                return GetStudentInfo(deviceID);
            }
            else
                return new Student();
        }
        /// <summary>
        /// 根据答题器ID获取学生信息
        /// </summary>
        /// <param name="deviceID"></param>
        /// <returns></returns>
        private static Student GetStudentInfo(string deviceID)
        {
            Student stu = new Student();
            string postStr = "{\"answernum\":\"" + deviceID + "\"}";
            string html = HttpPostData(Program.StudentInterface, postStr);
            html = System.Web.HttpUtility.UrlDecode(html, Encoding.UTF8);
            Log.ToFile("获取学生信息接口返回：" + html);
            //{"result":"success","stuid":"11","realName":"张老师"，"stunum":"testUser001"} 
            //result:::paramInvalid:参数无效；success:成功；error:云平台数据库异常；Empty ：未查询到结果
            string result = string.Empty, stuID = string.Empty, stuName = string.Empty, stuNo = string.Empty;
            if (!string.IsNullOrEmpty(html) && html != ERROR)
            {
                JObject jo = (JObject)JsonConvert.DeserializeObject(html);
                JToken jt;
                if (jo.TryGetValue("result", out jt))
                    result = jt.ToString();
                if (result == "success")
                {
                    if (jo.TryGetValue("stuid", out jt))
                        stuID = jt.ToString();
                    if (jo.TryGetValue("realName", out jt))
                        stuName = jt.ToString();
                    if (jo.TryGetValue("stunum", out jt))
                        stuNo = jt.ToString();
                    stu.Id = stuID;
                    stu.Name = stuName;
                    stu.Number = stuNo;
                }
            }
            return stu;
        }
        /// <summary>
        /// 重置答题器结果（清零）
        /// </summary>
        /// <returns></returns>
        public static bool Reset()
        {
            bool result = false;
            string html = HttpPostData(resetUrl, string.Empty);

            if (!string.IsNullOrEmpty(html) && !html.Equals(ERROR))
                result = true;
            return result;
        }
        /// <summary>
        /// 时间戳转化成日期
        /// </summary>
        /// <param name="timeStamp"></param>
        /// <returns></returns>
        public static DateTime TimeStampConvertDateTime(string timeStamp)
        {
            DateTime dateTimeStart = TimeZone.CurrentTimeZone.ToLocalTime(new DateTime(1970, 1, 1));
            long lTime = long.Parse(timeStamp + "0000000");
            TimeSpan toNow = new TimeSpan(lTime);

            return dateTimeStart.Add(toNow);
        }
        /// <summary>
        /// 获取一个时间戳
        /// </summary>
        /// <returns></returns>
        public static string GetTimeStamp()
        {
            TimeSpan ts = DateTime.UtcNow - new DateTime(1970, 1, 1, 0, 0, 0, 0);
            return Convert.ToInt64(ts.TotalSeconds).ToString();
        }

        /// <summary>
        /// 给按钮增加鼠标效果
        /// </summary>
        /// <param name="btn">按钮对象</param>
        /// <param name="imageStatic">正常</param>
        /// <param name="imageHover">悬停</param>
        /// <param name="imageActive">激活</param>
        public static void AddButtonStyle(Button btn, Image imageStatic, Image imageHover, Image imageActive)
        {
            btn.MouseEnter += delegate(object sender, EventArgs e)
            {
                ((Button)sender).BackgroundImage = imageHover;
            };
            btn.MouseHover += delegate(object sender, EventArgs e)
            {
                ((Button)sender).BackgroundImage = imageHover;
            };
            btn.MouseLeave += delegate(object sender, EventArgs e)
            {
                ((Button)sender).BackgroundImage = imageStatic;
            };
            btn.MouseDown += delegate(object sender, MouseEventArgs e)
            {
                ((Button)sender).BackgroundImage = imageActive;
            };
            btn.MouseUp += delegate(object sender, MouseEventArgs e)
            {
                ((Button)sender).BackgroundImage = imageHover;
            };
        }
    }
}
