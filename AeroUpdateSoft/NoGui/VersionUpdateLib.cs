using AeroEduLib;
using SevenZip;
using System;
using System.Configuration;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.ServiceProcess;
using System.Windows.Forms;
using System.Xml;

namespace AeroUpdateSoft.NoGui
{
    public class VersionUpdateLib
    {
        #region 常量&变量
        static string SERVICE_PATH = System.AppDomain.CurrentDomain.BaseDirectory + "tmp\\";

        static string VersionXML_DOWNLOAD_PATH = SERVICE_PATH + "VersionXML";
        static string XML_PATH = VersionXML_DOWNLOAD_PATH + "\\Version.xml";

        static string ftpUsername = Setting.GetValue("Username");
        static string ftpPassword = Setting.GetValue("Password");
        bool is64 = Environment.Is64BitOperatingSystem;

        public delegate void UpdateHandler();
        public event UpdateHandler OnUpdateStarted;
        public event UpdateHandler OnUpdateCompleted;

        public delegate void UpdateProgressHandler(int progress);
        public event UpdateProgressHandler OnUpdateProgressChanged;

        public delegate void UpdateMessageHandler(string msg);
        public event UpdateMessageHandler OnUpdateMessage;

        int updateInterval = Convert.ToInt32(Setting.GetValue("UpdateInterval"));// 升级检测间隔;
        bool isLoop = Convert.ToBoolean(Setting.GetValue("IsLoop"));

        string localVersion, serverVersion, VersionURL;
        #endregion

        private AppInfo[] appInfoArray;
        //private Dictionary<string,AppInfo> appInfoDict;
        public VersionUpdateLib()
        {
            // 读本地配置（应用的路径、版本号）
            localVersion = GetConnectionStringsConfig("Version");
            VersionURL = GetConnectionStringsConfig("XMLURL");
            DownloadServerXML(VersionURL);
            serverVersion = ReadVsersion(XML_PATH);

            try
            {
                appInfoArray = new AppInfo[6];
                for (int j = 0; j < appInfoArray.Length; j++)
                {
                    appInfoArray[j] = new AppInfo();
                }
                int i = 0;// 以下顺序不能更改
                appInfoArray[i].Name = Setting.GetValue("AEROEDUCLASS_APP_NAME"); i++;
                appInfoArray[i].Name = Setting.GetValue("RECORD PLAYER_APP_NAME"); i++;
                appInfoArray[i].Name = Setting.GetValue("BOOTH CAMERA_APP_NAME"); i++;
                appInfoArray[i].Name = Setting.GetValue("WAR_APP_NAME"); i++;
                appInfoArray[i].Name = Setting.GetValue("AEROEDUPLATFORM_APP_NAME"); i++;
                appInfoArray[i].Name = Setting.GetValue("CLOUD_APP_NAME");

                XmlDocument xd = new XmlDocument();
                xd.Load(XML_PATH);
                for (int j = 0; j < appInfoArray.Length; j++)
                {
                    appInfoArray[j].Path = Setting.GetValue(appInfoArray[j].Name.ToUpper() + "_APP_PATH");
                    appInfoArray[j].DownloadPath = SERVICE_PATH + "Download\\" + appInfoArray[j].Name;
                    appInfoArray[j].UnzipPath = SERVICE_PATH;
                    appInfoArray[j].LocalVersion = GetConnectionStringsConfig(appInfoArray[i].Name + "Version");
                    appInfoArray[j].LocalMD5 = GetConnectionStringsConfig(appInfoArray[i].Name + "MD5");
                    GetXmlValue(xd, ref appInfoArray[j]);
                }
            }
            catch (Exception exc)
            {
                Log.WriteLog("本地或服务器端的配置文件读取错误:" + exc.Message);
            }
        }

        void GetXmlValue(XmlDocument xd, ref AppInfo appInfo)
        {
            XmlNodeList xnList = xd.SelectSingleNode("Config").ChildNodes;
            foreach (XmlNode xn in xnList)
            {
                if (xn.Name == "App")
                {
                    if (xn.SelectSingleNode("Name").InnerText == appInfo.Name)
                    {
                        appInfo.ServerVersion = xn.SelectSingleNode("Version").InnerText;
                        appInfo.ServerMD5 = xn.SelectSingleNode("Md5").InnerText;
                        appInfo.Url = xn.SelectSingleNode("Url").InnerText;
                    }
                }
            }
        }

        private string ReadVsersion(string xmlPath)
        {
            XmlDocument xd = new XmlDocument();
            xd.Load(xmlPath);
            string s = xd.SelectSingleNode("Config//Version").InnerText;
            return s;
        }

        public void DownloadServerXML(string url)
        {
            string srcString = string.Empty;
            WebClient webClient = new WebClient();

            if (Directory.Exists(VersionXML_DOWNLOAD_PATH))
                Directory.Delete(VersionXML_DOWNLOAD_PATH, true);

            try
            {
                Directory.CreateDirectory(VersionXML_DOWNLOAD_PATH);
                //webClient.DownloadFile(url, VersionXML_DOWNLOAD_PATH);
                webClient.DownloadFile(url, VersionXML_DOWNLOAD_PATH + "\\" + System.IO.Path.GetFileName(url));
            }
            catch (Exception exc)
            {
                throw new Exception("下载版本信息文件错误:" + exc.Message);
            }
        }

        public bool DownloadUpdateFile(string url, string DownPath)
        {
            WebClient webClient = new WebClient();

            if (Directory.Exists(DownPath))
                Directory.Delete(DownPath, true);

            try
            {
                Directory.CreateDirectory(DownPath);
                //webClient.DownloadFile(url, DOWNLOAD_PATH);
                webClient.DownloadFile(url, DownPath + "\\" + System.IO.Path.GetFileName(url));
                OnUpdateMessage("下载完毕:" + url);
                return true;
            }
            catch (Exception exc)
            {
                OnUpdateMessage(exc.Message);
                return false;
            }
        }

        public void Update()
        {
            Version vserver, vlocal;
            while (true)
            {
                OnUpdateMessage(string.Format("本地版本:{0},服务器版本:{1}", localVersion, serverVersion));
                try
                {
                    vserver = new Version(serverVersion);
                    vlocal = new Version(localVersion);
                }
                catch
                {
                    OnUpdateMessage("错误:版本格式错误,不能比较.");
                    return;
                }
                if (vserver > vlocal) //比较总版本是否相同，如果不相同
                {
                    DialogResult dr = MessageBox.Show("课联网软件有新版本，是否升级？（如升级请确认冰点还原软件处于关闭状态）", "课联网更新", MessageBoxButtons.YesNo);
                    if (dr == DialogResult.No)
                        return;
                    OnUpdateMessage("升级开始");
                    OnUpdateStarted();
                    try
                    {
                        int n = 100 / appInfoArray.Length;
                        int m = n;
                        for (int i = 0; i < appInfoArray.Length; i++)
                        {
                            updateEstimate(appInfoArray[i]);
                            OnUpdateProgressChanged(m);
                            m += n;
                        }

                        bool versionCheck = true;


                        foreach (AppInfo item in appInfoArray)
                        {
                            if (!string.IsNullOrEmpty(item.ServerVersion))
                            {
                                if (!item.LocalVersion.Equals(item.ServerVersion))
                                {
                                    versionCheck = false;
                                }
                            }
                        }

                        if (versionCheck)
                        {
                            updateSetting("Version", serverVersion);
                            OnUpdateMessage("软件更新完毕，当前版本:" + serverVersion);
                            // 删除tmp文件夹
                            Directory.Delete(SERVICE_PATH, true);
                        }
                        else
                        {
                            OnUpdateMessage("未完全更新");
                        }
                        OnUpdateProgressChanged(100);
                        OnUpdateCompleted();
                    }
                    catch (Exception exc)
                    {
                        OnUpdateMessage("错误:" + exc.Message);
                    }
                }
                if (isLoop)
                    System.Threading.Thread.Sleep(updateInterval);
                else
                    break;
            }
        }

        private void updateEstimate(AppInfo appInfo)
        {
            if (string.IsNullOrEmpty(appInfo.Url))
                return;
            if (appInfo.LocalMD5 != appInfo.ServerMD5 && !string.IsNullOrEmpty(appInfo.ServerMD5))//如果本地软件md5与服务器版本不同
            {
                string FILE_PATH = appInfo.DownloadPath + "\\" + appInfo.Name + ".rar";
                if ((File.Exists(FILE_PATH)))
                {
                    string localMD5 = GetMD5.GetMD5HashFromFile(FILE_PATH);
                    if (appInfo.ServerMD5 != localMD5)//如果本地缓存包md5与服务器不同，需要重新从服务器下载；
                    {
                        UpdateProcess(appInfo, false);
                    }
                    else//如果本地缓存包md5与服务器相同，无需下载
                    {
                        UpdateProcess(appInfo, true);
                    }
                }
                else
                    UpdateProcess(appInfo, false);
            }
        }

        public static void updateSetting(string key, string newValue)
        {
            Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            config.AppSettings.Settings.Remove(key);
            config.AppSettings.Settings.Add(key, newValue);
            config.Save(ConfigurationSaveMode.Modified);
            ConfigurationManager.RefreshSection("appSettings");
        }

        public String GetConnectionStringsConfig(string connectionName)
        {
            try
            {
                return ConfigurationManager.AppSettings[connectionName];
            }
            catch (Exception exc)
            {
                OnUpdateMessage("读取配置错误：" + exc);
            }
            return "";
        }

        private void AppButtonClick(string appPath)
        {
            try
            {
                Process p = new System.Diagnostics.Process();

                p.StartInfo.WorkingDirectory = new System.IO.FileInfo(appPath).Directory.ToString();//要启动程序路径
                p.StartInfo.FileName = appPath;//需要启动的程序名  
                p.Start();//启动  
            }
            catch (Exception exc)
            {
                OnUpdateMessage(exc.Message);
            }
        }
        /// <summary>
        /// （下载）更新
        /// </summary>
        /// <param name="appInfo">被更新的应用类型</param>
        /// <param name="fileExist">更新包是否已经下载</param>
        private void UpdateProcess(AppInfo appInfo, bool fileExist)
        {
            string DOWNLOAD_PATH = appInfo.DownloadPath;
            string UNZIP_PATH = appInfo.UnzipPath;

            string APP_PATH = appInfo.Path;
            string NAME = appInfo.Name;
            string fileName = DOWNLOAD_PATH + "\\" + NAME + ".rar";
            string ZIPSOURCE_PATH = UNZIP_PATH + NAME;

            try
            {
                bool dl = true;
                if (!fileExist)
                {
                    if (Directory.Exists(DOWNLOAD_PATH))
                        Directory.Delete(DOWNLOAD_PATH, true);
                    if (Directory.Exists(ZIPSOURCE_PATH))
                        Directory.Delete(ZIPSOURCE_PATH, true);
                    // 创建目录
                    Directory.CreateDirectory(DOWNLOAD_PATH);
                    //Directory.CreateDirectory(UNZIP_PATH);

                    OnUpdateMessage("下载文件：" + NAME);
                    OnUpdateMessage("保存路径：" + DOWNLOAD_PATH);

                    dl = DownloadUpdateFile(appInfo.Url, DOWNLOAD_PATH);
                }

                if (dl)
                {
                    if (NAME == appInfoArray[4].Name)
                    {
                        try
                        {
                            OnUpdateMessage("开始解压缩...");
                            //解压文件
                            Unzip(UNZIP_PATH, fileName);
                            //停止服务
                            ServiceController sc = new ServiceController(appInfo.Name);
                            if (sc.Status != ServiceControllerStatus.Stopped)
                            {
                                sc.Stop();
                                OnUpdateMessage("停止服务...");
                                System.Threading.Thread.Sleep(10000);
                            }
                            OnUpdateMessage("更新文件...");
                            //拷贝文件
                            DirectoryCopy(ZIPSOURCE_PATH, APP_PATH);
                            //启动服务
                            sc.Refresh();
                            if (sc.Status != ServiceControllerStatus.Running)
                            {
                                sc.Start();
                                OnUpdateMessage("重新启动服务...");
                            }
                            UpdateConfigFile(appInfo);
                        }
                        catch (Exception exc) { OnUpdateMessage(exc.Message); }
                    }
                    else if (NAME == appInfoArray[3].Name)
                    {
                        try
                        {
                            // 解压缩(使用7zip)
                            Unzip(UNZIP_PATH, fileName);
                            // 复制到指定目录
                            OnUpdateMessage("解压缩完毕,复制到" + APP_PATH);
                            string rootDir = appInfo.Path + "\\Root";
                            if(Directory.Exists(rootDir))
                                Directory.Delete(appInfo.Path + "\\Root", true);
                            string cacheDir = appInfoArray[0].Path + "\\cache";
                            if (Directory.Exists(cacheDir))
                                Directory.Delete(cacheDir, true);// 删除缓存
                            DirectoryCopy(ZIPSOURCE_PATH, APP_PATH);
                            UpdateConfigFile(appInfo);   
                        }
                        catch (Exception exc)
                        {
                            OnUpdateMessage("错误：" + exc.Message);
                        }
                    }
                    else//课联网 录播 实物展台 升级
                    {
                        try
                        {
                            // 解压缩(使用7zip)
                            Unzip(UNZIP_PATH, fileName);
                            // 检测进程是否存在，若存在则不能升级
                            bool updateSucceed = false;
                            while (!updateSucceed)
                            {
                                if (!ProcessExist(NAME))
                                {
                                    // 复制到指定目录
                                    OnUpdateMessage("解压缩完毕,复制到" + APP_PATH);
                                    DirectoryCopy(ZIPSOURCE_PATH, APP_PATH);
                                    updateSucceed = true;
                                }
                                else
                                {
                                    if (NAME == appInfoArray[1].Name)
                                    {
                                        MessageBox.Show("请关闭录播软件");
                                    }
                                    else if (NAME == appInfoArray[2].Name)
                                    {
                                        MessageBox.Show("请关闭实物展台");
                                    }
                                    else if (NAME == appInfoArray[0].Name)
                                    {
                                        MessageBox.Show("请关闭课联网");
                                    }
                                    System.Threading.Thread.Sleep(5000);
                                }
                            }
                            UpdateConfigFile(appInfo);   
                        }
                        catch (Exception exc)
                        {
                            OnUpdateMessage("错误：" + exc.Message);
                        }
                    }
                }
            }
            catch (Exception exc)
            {
                OnUpdateMessage("错误：" + exc.Message);
            }
            finally
            {
                // 删除解压缩的文件夹
                if (Directory.Exists(ZIPSOURCE_PATH))
                    Directory.Delete(ZIPSOURCE_PATH, true);
            }
        }

        void UpdateConfigFile(AppInfo appInfo)
        {
            updateSetting(appInfo.Name + "Version", appInfo.ServerVersion);
            updateSetting(appInfo.Name + "MD5", appInfo.ServerMD5);
            OnUpdateMessage(string.Format("更新完毕:{0}，当前版本:{1}", appInfo.Name, appInfo.ServerVersion));
            appInfo.LocalVersion = appInfo.ServerVersion;
            appInfo.LocalMD5 = appInfo.ServerMD5;
        }

        private void DirectoryCopy(string sourceDirectory, string targetDirectory)
        {
            if (!Directory.Exists(sourceDirectory) || !Directory.Exists(targetDirectory))
            {
                throw new Exception("移动文件错误:源或目标文件夹不存在.");
            }
            DirectoryInfo sourceInfo = new DirectoryInfo(sourceDirectory);
            FileInfo[] fileInfo = sourceInfo.GetFiles();
            foreach (FileInfo fiTemp in fileInfo)
            {
                File.Copy(sourceDirectory + "\\" + fiTemp.Name, targetDirectory + "\\" + fiTemp.Name, true);
            }
            DirectoryInfo[] diInfo = sourceInfo.GetDirectories(); foreach (DirectoryInfo diTemp in diInfo)
            {
                string sourcePath = diTemp.FullName;
                string targetPath = diTemp.FullName.Replace(sourceDirectory, targetDirectory);
                Directory.CreateDirectory(targetPath);
                DirectoryCopy(sourcePath, targetPath);
            }
        }

        private void Unzip(string path, string fileFullName)
        {
            string dllPath = string.Empty;
            if (Environment.Is64BitOperatingSystem)
                dllPath = System.AppDomain.CurrentDomain.BaseDirectory + "7z64.dll";
            else
                dllPath = System.AppDomain.CurrentDomain.BaseDirectory + "7z.dll";
            path += "\\";
            SevenZipExtractor.SetLibraryPath(dllPath);
            SevenZipExtractor tmp = new SevenZipExtractor(fileFullName);
            try
            {
                for (int i = 0; i < tmp.ArchiveFileData.Count; i++)
                {
                    tmp.ExtractFiles(path, tmp.ArchiveFileData[i].Index);
                }
                OnUpdateMessage("解压完毕");
            }
            catch (Exception exc)
            {
                OnUpdateMessage("解压失败:" + exc.Message);
                throw exc;
            }
            finally
            {
                tmp.Dispose();
            }
        }
        /// <summary>
        /// 检测进程是否存在
        /// </summary>
        /// <param name="appName">进程名称</param>
        /// <returns></returns>
        public static bool ProcessExist(string appName)
        {
            bool existProcess = false;
            System.Diagnostics.Process[] processList = System.Diagnostics.Process.GetProcesses();
            foreach (System.Diagnostics.Process process in processList)
            {
                if (process.ProcessName.ToUpper() == appName)
                {
                    existProcess = true;
                }
            }
            return existProcess;
        }
    }

    public class AppInfo
    {
        string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        string path;

        public string Path
        {
            get { return path; }
            set { path = value; }
        }
        string unzipPath;

        public string UnzipPath
        {
            get { return unzipPath; }
            set { unzipPath = value; }
        }
        string downloadPath;

        public string DownloadPath
        {
            get { return downloadPath; }
            set { downloadPath = value; }
        }
        string localVersion;

        public string LocalVersion
        {
            get { return localVersion; }
            set { localVersion = value; }
        }
        string localMD5;

        public string LocalMD5
        {
            get { return localMD5; }
            set { localMD5 = value; }
        }
        string serverVersion;

        public string ServerVersion
        {
            get { return serverVersion; }
            set { serverVersion = value; }
        }
        string serverMD5;

        public string ServerMD5
        {
            get { return serverMD5; }
            set { serverMD5 = value; }
        }
        string url;

        public string Url
        {
            get { return url; }
            set { url = value; }
        }
    }
}