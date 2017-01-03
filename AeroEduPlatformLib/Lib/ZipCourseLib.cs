using SevenZip;
using System;
using System.Configuration;
using System.IO;

namespace AeroEduPlatformLib
{
    public class ZipCourseLib
    {
        bool _stop = false;

        public bool Stop
        {
            get { return _stop; }
            set { _stop = value; }
        }

        public void Run()
        {
            Log.WriteLog("服务启动...", "ZipCourse");
            int interval = Convert.ToInt32(ConfigurationManager.AppSettings["ZipCourseInterval"]);
            while (!_stop)
            {
                try
                {
                    string dirRecord = ConfigurationManager.AppSettings["RecordDataPath"];
                    string dirBooth = ConfigurationManager.AppSettings["BoothDataPath"];
                    Log.WriteLog("开始检查录播文件...", "ZipCourse");
                    CreateZipFile(dirRecord, FileType.录播);
                    //CreateZipFile(dirBooth, FileType.实物展台);
                }
                catch (Exception exc)
                {
                    Log.WriteLog("错误：" + exc.Message, "ZipCourse");
                }
                System.Threading.Thread.Sleep(interval);
            }
            Log.WriteLog("服务停止.", "ZipCourse");
        }
        // 使用7Zip压缩文件
        public void SevenZipDir(string dirName, string zipFileName)
        {
            string dllPath = string.Empty;
            if (Environment.Is64BitOperatingSystem)
                dllPath = System.AppDomain.CurrentDomain.BaseDirectory + "7z64.dll";
            else
                dllPath = System.AppDomain.CurrentDomain.BaseDirectory + "7z.dll";

            SevenZipExtractor.SetLibraryPath(dllPath);
            SevenZipCompressor tmp = new SevenZipCompressor();
            //tmp.CompressFiles(@"d:\Temp\arch.7z", @"d:\Temp\log.txt");// 压缩文件
            try
            {
                tmp.CompressDirectory(dirName, zipFileName);// 压缩目录
                Log.WriteLog("压缩完毕：" + dirName, "ZipCourse");
            }
            catch (Exception exc)
            {
                Log.WriteLog("压缩错误:" + exc.Message, "ZipCourse");
                if (File.Exists(zipFileName))
                    File.Delete(zipFileName);
            }
        }

        public void CreateZipFile(string dirName, FileType type)
        {
            // 查找每个文件夹是否都有对应的压缩包
            string[] dirs = Directory.GetDirectories(dirName);
            string zipFileName = string.Empty;
            if (type == FileType.录播)
            {
                foreach (string dir in dirs)
                {
                    zipFileName = dir + ".rar";
                    if (!File.Exists(zipFileName) &&
                        File.Exists(dir + dir.Substring(dir.LastIndexOf('\\'), dir.Length - dir.LastIndexOf('\\')) + ".cwi"))
                    {
                        Log.WriteLog("压缩录播文件：" + dir, "ZipCourse");
                        SevenZipDir(dir, zipFileName);
                    }
                }
            }
            else if (type == FileType.实物展台)
            {
                foreach (string dir in dirs)
                {
                    zipFileName = dir + ".rar";
                    if (!File.Exists(zipFileName) &&
                        File.Exists(dirName + dirName.Substring(dirName.LastIndexOf('\\'), dirName.Length - dirName.LastIndexOf('\\')) + ".cwi"))
                    {
                        SevenZipDir(dir, zipFileName);
                    }
                }
            }
        }
    }

    public enum FileType
    {
        录播,
        实物展台
    }
}
