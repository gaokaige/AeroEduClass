using Newtonsoft.Json.Linq;
using System;
using System.IO;
using System.Text;

namespace AeroEduLib
{
    public class Log
    {
        static string deviceId = GetSystemInfo.GetBiosID();
        public static void ToFile(string str)
        {
            System.IO.StreamWriter sw = null;
            System.IO.FileStream fs = null;
            try
            {
                if (!Directory.Exists(System.AppDomain.CurrentDomain.BaseDirectory + "Log\\"))
                    Directory.CreateDirectory(System.AppDomain.CurrentDomain.BaseDirectory + "Log\\");
                string strFilePath = System.AppDomain.CurrentDomain.BaseDirectory + string.Format("log\\log_{0}.txt", DateTime.Now.Date.ToString("yyyyMMdd"));
                fs = new System.IO.FileStream(strFilePath, System.IO.FileMode.Append);
                sw = new System.IO.StreamWriter(fs, System.Text.Encoding.Default);

                sw.WriteLine(DateTime.Now.ToString() + "\t" + str);
            }
            catch
            {

            }
            finally
            {
                if (sw != null)
                    sw.Close();
                if (fs != null)
                    fs.Close();
            }

            // 倒序日志
            /*
            string strFilePath = string.Format("log/log_{0}.txt", DateTime.Now.Date.ToString("yyyyMMdd"));
            string strOldText = File.ReadAllText(strFilePath, System.Text.Encoding.Default);
            File.WriteAllText(strFilePath, "'" + DateTime.Now.ToString() + "'\t'" + str + "\r\n", System.Text.Encoding.Default);
            File.AppendAllText(strFilePath, strOldText, System.Text.Encoding.Default);
            */
        }

        public static void ToDB(string content)
        {
            JObject jo = new JObject();
            jo.Add("index", ((int)MethodType.WriteLog).ToString());
            jo.Add("timespan", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
            jo.Add("content", content);
            jo.Add("deviceid", deviceId);
            string str = "body=" + jo.ToString();
            byte[] postData = Encoding.UTF8.GetBytes(str);
            AppInterface.PostData(TypeDefinition.LocalServer, postData);
        }
    }
}