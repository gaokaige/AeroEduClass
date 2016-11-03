using System;
using System.IO;
using System.Net;

namespace AeroEduLib
{
    public class FtpHelper
    {
        #region 摒弃了http下载，不能下载特殊扩展名文件
        /*
        public static bool HttpDownloadFile(string url, string fileName)
        {
            WebClient wc = null;
            Stream stream = null;
            FileStream fs = null;
            try
            {
                //wc = new WebClient();
                //wc.DownloadFile(url, fileName);
                wc = new WebClient();
                stream = wc.OpenRead(url);
                byte[] buffer = new byte[1024];
                int readL = stream.Read(buffer, 0, 1024);
                fs = new FileStream(fileName, FileMode.OpenOrCreate, FileAccess.Write);
                //读取流
                while (readL != 0)
                {
                    fs.Write(buffer, 0, readL);//写文件
                    readL = stream.Read(buffer, 0, 1024);//读流
                }
            }
            catch (Exception exc)
            {
                Log.SaveLog("下载失败:" + exc);
                return false;
            }
            finally
            {
                if (wc != null) wc.Dispose();
                if (stream != null) stream.Close();
                if (fs != null) fs.Close();
            }
            return true;
        }
        
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
                while (readL > 0)
                {
                    totalDownloadedByte = readL + totalDownloadedByte;
                    fs.Write(buffer, 0, readL);
                    readL = stream.Read(buffer, 0, (int)buffer.Length);
                }
            }
            catch (Exception exc)
            {
                Log.SaveLog("下载失败:" + exc);
                return false;
            }
            finally
            {
                if (stream != null) stream.Close();
                if (fs != null) fs.Close();
            }
            return true;
        }
        */
        #endregion
        /// <summary>
        /// ftp方式上传 
        /// </summary>
        public static bool FtpUploadFtp(string filePath, string filename, string ftpServerIP, string ftpUserID, string ftpPassword)
        {
            FileInfo fileInf = new FileInfo(filePath + "\\" + filename);
            string uri = "ftp://" + ftpServerIP + "/" + fileInf.Name;
            FtpWebRequest reqFTP;
            // Create FtpWebRequest object from the Uri provided 
            reqFTP = (FtpWebRequest)FtpWebRequest.Create(new Uri("ftp://" + ftpServerIP + "/" + fileInf.Name));
            try
            {
                // Provide the WebPermission Credintials 
                reqFTP.Credentials = new NetworkCredential(ftpUserID, ftpPassword);

                // By default KeepAlive is true, where the control connection is not closed 
                // after a command is executed. 
                reqFTP.KeepAlive = false;

                // Specify the command to be executed. 
                reqFTP.Method = WebRequestMethods.Ftp.UploadFile;

                // Specify the data transfer type. 
                reqFTP.UseBinary = true;

                // Notify the server about the size of the uploaded file 
                reqFTP.ContentLength = fileInf.Length;

                // The buffer size is set to 2kb 
                int buffLength = 2048;
                byte[] buff = new byte[buffLength];
                int contentLen;

                // Opens a file stream (System.IO.FileStream) to read the file to be uploaded 
                //FileStream fs = fileInf.OpenRead(); 
                FileStream fs = fileInf.Open(FileMode.Open, FileAccess.Read, FileShare.ReadWrite);

                // Stream to which the file to be upload is written 
                Stream strm = reqFTP.GetRequestStream();

                // Read from the file stream 2kb at a time 
                contentLen = fs.Read(buff, 0, buffLength);

                // Till Stream content ends 
                while (contentLen != 0)
                {
                    // Write Content from the file stream to the FTP Upload Stream 
                    strm.Write(buff, 0, contentLen);
                    contentLen = fs.Read(buff, 0, buffLength);
                }

                // Close the file stream and the Request Stream 
                strm.Close();
                fs.Close();
                return true;
            }
            catch (Exception exc)
            {
                Log.ToFile("ftp上传错误:" + exc.Message);
                reqFTP.Abort();
                return false;
            }
        }
        /// <summary>
        /// ftp下载,用户名写死
        /// </summary>
        /// <param name="url">目标文件全名</param>
        /// <param name="fileName">保存文件全名</param>
        /// <returns></returns>
        public static bool FtpDownloadFtp(string url, string fileName, string userName, string passWord)
        {
            FtpWebRequest reqFTP = null;
            Stream ftpStream = null;
            FileStream outputStream = null;
            FtpWebResponse response = null;
            try
            {
                //filePath = < <The full path where the file is to be created.>>, 
                //fileName = < <Name of the file to be created(Need not be the name of the file on FTP server).>> 
                //FileStream outputStream = new FileStream(filePath + "\\" + fileName, FileMode.Create);
                outputStream = new FileStream(fileName, FileMode.Create);
                reqFTP = (FtpWebRequest)FtpWebRequest.Create(new Uri(url));
                reqFTP.Method = WebRequestMethods.Ftp.DownloadFile;
                reqFTP.UseBinary = true;
                reqFTP.KeepAlive = false;
                reqFTP.UsePassive = false;
                reqFTP.Credentials = new NetworkCredential(userName, passWord);
                reqFTP.Timeout = 60000;
                response = (FtpWebResponse)reqFTP.GetResponse();
                ftpStream = response.GetResponseStream();
                long cl = response.ContentLength;
                int bufferSize = 2048;
                int readCount;
                byte[] buffer = new byte[bufferSize];

                readCount = ftpStream.Read(buffer, 0, bufferSize);
                while (readCount > 0)
                {
                    outputStream.Write(buffer, 0, readCount);
                    readCount = ftpStream.Read(buffer, 0, bufferSize);
                }

                return true;
            }
            catch (Exception exc)
            {
                throw exc;
                //Log.SaveLog("ftp下载错误:" + exc.Message);
                //return false;
            }
            finally
            {
                if (ftpStream != null) ftpStream.Close();
                if (outputStream != null) outputStream.Close();
                if (response != null) response.Close();
            }
        }
    }
}
