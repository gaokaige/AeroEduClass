using System;
using System.IO;

namespace AeroEduLib
{
    /// <summary>
    /// HTTP下载，有进度、完成、错误事件
    /// </summary>
    public class HttpDownloadHandler
    {
        public delegate void DownloadProgressHandler(object sender, AeroEventArgs e);
        public static event DownloadProgressHandler OnProgress;

        public delegate void DownloadCompleteHandler(object sender, AeroEventArgs e);
        public static event DownloadCompleteHandler OnComplete;

        public delegate void DownloadErrorHandler(object sender, AeroEventArgs e);
        public static event DownloadErrorHandler OnError;
        public static bool HttpDownloadFile(string url, string fileName)
        {
            Stream stream = null;
            FileStream fs = null;
            try
            {
                System.Net.HttpWebRequest Myrq = (System.Net.HttpWebRequest)System.Net.HttpWebRequest.Create(url);
                System.Net.HttpWebResponse myrp = (System.Net.HttpWebResponse)Myrq.GetResponse();
                long totalBytes = myrp.ContentLength;

                stream = myrp.GetResponseStream();
                fs = new System.IO.FileStream(fileName, System.IO.FileMode.Create);
                long totalDownloadedByte = 0;
                byte[] buffer = new byte[1024];
                int readL = stream.Read(buffer, 0, (int)buffer.Length);
                // 循环100次报一次进度吧
                int times = 0;
                while (readL > 0)
                {
                    totalDownloadedByte = readL + totalDownloadedByte;
                    fs.Write(buffer, 0, readL);
                    readL = stream.Read(buffer, 0, (int)buffer.Length);
                    if (times / 100 == 0)
                        OnProgress(null, new AeroEventArgs((totalDownloadedByte * 100 / totalBytes).ToString()));
                    times++;
                }
                OnProgress(null, new AeroEventArgs("100"));
                OnComplete(null, new AeroEventArgs("下载完成"));
            }
            catch (Exception exc)
            {
                OnError(null, new AeroEventArgs(exc.Message));
                Log.ToFile("下载失败:" + exc);
                return false;
            }
            finally
            {
                if (stream != null) stream.Close();
                if (fs != null) fs.Close();
            }
            return true;
        }

        public class AeroEventArgs : EventArgs
        {
            public string Message { get; set; }
            public AeroEventArgs(string message)
            {
                Message = message;
            }
        }
    }
}