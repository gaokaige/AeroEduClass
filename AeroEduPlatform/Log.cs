using System;
using System.IO;

namespace AeroEduPlatform
{
    public class Log
    {
        public static void WriteLog(string log)
        {
            System.IO.StreamWriter sw = null;
            System.IO.FileStream fs = null;
            try
            {
                if (!Directory.Exists(System.AppDomain.CurrentDomain.BaseDirectory + "Log\\"))
                    Directory.CreateDirectory(System.AppDomain.CurrentDomain.BaseDirectory + "Log\\");
                string strFilePath = System.AppDomain.CurrentDomain.BaseDirectory + string.Format("log\\{0}_{1}.txt", "Service", DateTime.Now.Date.ToString("yyyyMMdd"));
                fs = new System.IO.FileStream(strFilePath, System.IO.FileMode.Append);
                sw = new System.IO.StreamWriter(fs, System.Text.Encoding.Default);

                sw.WriteLine(DateTime.Now.ToString() + "\t" + log);
            }
            catch
            {
                ;
            }
            finally
            {
                if (sw != null)
                    sw.Close();
                if (fs != null)
                    fs.Close();
            }
        }
    }
}
