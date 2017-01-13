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
        string responesUrl = "http://192.168.5.2:50002/Getresult";
        string resetUrl = "http://192.168.5.2:50002/start";
        //static string postAll = "type=all";
        Regex regexStuID = new Regex(@"(?<=^{)\d+");// 匹配学生id
        Regex regexPressInfo = new Regex(@"(?<={)\d+,\d+");// 匹配学生按键内容和时间
        MatchCollection mcStuID, mcPressInfo;
        /// <summary>
        /// <答题器ID, 时间戳> 
        /// 记录上一次该学生按键的时间戳，再次读取时从下一个时间戳开始
        /// </summary>
        Dictionary<string, string> timestampDic = new Dictionary<string, string>();

        public Dictionary<string, string> TimestampDic
        {
            get { return timestampDic; }
            set { timestampDic = value; }
        }
        const string ERROR = "[ERROR]";
        #endregion
        /// <summary>
        /// POST请求与获取结果
        /// </summary>
        public string HttpPostData(string Url, string postDataStr)
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
        public void ReadData(ref ReportData rData, ref AttitudeData aData)
        {
            try
            {
                string html = HttpPostData(responesUrl, null);

                if (!string.IsNullOrEmpty(html) && !html.Equals(ERROR))
                {
                    AddData(html, timestampDic, rData, aData);
                }
            }
            catch (Exception exc)
            {
                Log.ToFile(exc.Message);
            }
        }
        /// <summary>
        /// 从答题器服务器读取数据并汇总
        /// </summary>
        /// <param name="html">接收答题器结果的返回数据</param>
        /// <param name="timestampDic">学生ID与按键时间戳</param>
        /// <param name="rData">上报数据</param>
        /// <param name="aData">态度数据</param>
        public void AddData(string html, Dictionary<string, string> timestampDic, ReportData rData, AttitudeData aData)
        {
            string[] arr = html.Split(';');
            foreach (var item in arr)//item格式：{55,{1,1482374174}{2,1482374179}}
            {
                mcStuID = regexStuID.Matches(item);//55
                mcPressInfo = regexPressInfo.Matches(item);//{1,1482374174}{2,1482374179}
                KeyPressInfo keyPress = new KeyPressInfo();
                keyPress.ID = mcStuID[0].ToString();//55
                foreach (var pressInfo in mcPressInfo)//{1,1482374174}
                {
                    // press[0]:按键内容，press[1]:时间戳
                    string[] press = pressInfo.ToString().Split(',');
                    keyPress.Key = press[0];
                    keyPress.Time = press[1];
                    if (timestampDic.ContainsKey(keyPress.ID))//学生和时间戳的集合里是否有该学生
                    {
                        //  比较时间戳
                        if (Convert.ToInt32(timestampDic[keyPress.ID]) >= Convert.ToInt32(press[1]))
                        {
                            continue;
                        }
                        else
                        {
                            ConvertKeyToAttitude(keyPress, aData, rData);
                            timestampDic[keyPress.ID] = keyPress.Time;
                        }
                    }
                    else
                    {
                        timestampDic.Add(keyPress.ID, keyPress.Time);
                        keyPress.Key = press[0];
                        keyPress.Time = press[1];
                        ConvertKeyToAttitude(keyPress, aData, rData);
                    }
                }
            }
        }
        /// <summary>
        /// 累加按键表示的态度
        /// </summary>
        private void ConvertKeyToAttitude(KeyPressInfo keyPress, AttitudeData aData, ReportData rData)
        {
            switch (keyPress.Key)
            {
                case "1":
                    aData.PraiseCount++;
                    rData.AddKeyPress(keyPress);
                    break;
                case "2":
                    aData.PuzzleCount++;
                    rData.AddKeyPress(keyPress);
                    break;
                case "3":
                    aData.ObjectCount++;
                    rData.AddKeyPress(keyPress);
                    break;
                case "4":
                    aData.BoringCount++;
                    rData.AddKeyPress(keyPress);
                    break;
            }
        }
        /// <summary>
        /// 获取最后一个按答题器的学生信息
        /// </summary>
        /// <returns></returns>
        internal Student GetStudent()
        {
            string html = HttpPostData(responesUrl, null);
            if (!string.IsNullOrEmpty(html) && !html.Equals(ERROR))
            {
                string[] ss = html.Split(';');
                MatchCollection mc = regexStuID.Matches(ss[ss.Length - 1]);
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
        private Student GetStudentInfo(string deviceID)
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
        public bool Reset()
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
        public DateTime TimeStampConvertDateTime(string timeStamp)
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
        public string GetTimeStamp()
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
        public void AddButtonStyle(Button btn, Image imageStatic, Image imageHover, Image imageActive)
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
