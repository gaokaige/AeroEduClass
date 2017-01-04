using System;
using System.IO;

namespace AeroUpdateSoft.NoGui
{
    internal class Log
    {
        internal static void WriteLog(string log)
        {
            System.IO.StreamWriter sw = null;
            System.IO.FileStream fs = null;
            try
            {
                if (!Directory.Exists(System.AppDomain.CurrentDomain.BaseDirectory + "Log\\"))
                    Directory.CreateDirectory(System.AppDomain.CurrentDomain.BaseDirectory + "Log\\");
                string strFilePath = System.AppDomain.CurrentDomain.BaseDirectory + string.Format("log\\{0}.txt", DateTime.Now.Date.ToString("yyyyMMdd"));
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

        /// <summary>
        /// 保留近X天的日志，其余的删除
        /// </summary>
        /// <param name="days"></param>
        internal static void DeleteLogFile()
        {
            try
            {
                int days = Convert.ToInt32(AeroEduLib.Setting.GetValue("ReserveLogDays"));
                string path = System.AppDomain.CurrentDomain.BaseDirectory + "Log\\";
                if (Directory.Exists(path))
                {
                    string[] files = Directory.GetFiles(path);
                    FileInfo fileInfo = null;
                    foreach (string file in files)
                    {
                        fileInfo = new FileInfo(file);
                        if (((TimeSpan)(DateTime.Now - fileInfo.CreationTime)).Days > days)
                        {
                            fileInfo.Delete();
                        }
                    }
                }
            }
            catch
            {
                ;
            }
        }
    }
}
