﻿using AeroEduLib;
using System;
using System.Windows.Forms;
using System.Xml;

namespace AeroEduClass.Lib
{
    public class Config
    {
        #region Field

        string _webServerIp;
        /// <summary>
        /// 提供课联网web的服务器地址和端口，[U3]=127.0.0.1:8089,[U4]=192.168.5.122:8080
        /// </summary>
        public string WebServerIp
        {
            get { return _webServerIp; }
            set { _webServerIp = value; }
        }
        string _loginPageUrl;
        /// <summary>
        /// 登录页面地址
        /// </summary>
        public string LoginPageUrl
        {
            get { return _loginPageUrl; }
            set { _loginPageUrl = value; }
        }
        string _homePageUrl;
        /// <summary>
        /// 首页地址
        /// </summary>
        public string HomePageUrl
        {
            get { return _homePageUrl; }
            set { _homePageUrl = value; }
        }
        string _mingBoUClass;
        /// <summary>
        /// 名博优课app的路径
        /// </summary>
        public string MingBoUClass
        {
            get { return _mingBoUClass; }
            set { _mingBoUClass = value; }
        }
        string _recordPlayPath;
        /// <summary>
        /// 录播app的相对路径
        /// </summary>
        public string RecordPlayPath
        {
            get { return _recordPlayPath; }
            set { _recordPlayPath = value; }
        }
        string _boothCameraPath;
        /// <summary>
        /// 实物展台app的相对路径
        /// </summary>
        public string BoothCameraPath
        {
            get { return _boothCameraPath; }
            set { _boothCameraPath = value; }
        }
        string _activePath;
        /// <summary>
        /// 网动同频互动页面地址
        /// </summary>
        public string ActivePath
        {
            get { return _activePath; }
            set { _activePath = value; }
        }
        string _aeroBoardPath;
        /// <summary>
        /// 航天云白板app的路径
        /// </summary>
        public string AeroBoardPath
        {
            get { return _aeroBoardPath; }
            set { _aeroBoardPath = value; }
        }
        string _liveServer;
        /// <summary>
        /// 直播页面地址
        /// </summary>
        public string LiveServer
        {
            get { return _liveServer; }
            set { _liveServer = value; }
        }
        string _ascriptionServer;
        /// <summary>
        /// MAC归属查询服务器地址
        /// </summary>
        public string AscriptionServer
        {
            get { return _ascriptionServer; }
            set { _ascriptionServer = value; }
        }
        string _ascriptionFilePath;
        /// <summary>
        /// 本地归属查询地址
        /// </summary>
        public string AscriptionFilePath
        {
            get { return _ascriptionFilePath; }
            set { _ascriptionFilePath = value; }
        }
        string _postServer;
        /// <summary>
        /// post mac、同频互动列表的服务地址
        /// </summary>
        public string PostServer
        {
            get { return _postServer; }
            set { _postServer = value; }
        }
        bool _useUKe;
        /// <summary>
        /// 是否在主界面显示名博优课
        /// </summary>
        public bool UseUKe
        {
            get { return _useUKe; }
            set { _useUKe = value; }
        }
        string _attitudePath;
        /// <summary>
        /// 航天云态度表达软件的路径
        /// </summary>
        public string AttitudePath
        {
            get { return _attitudePath; }
            set { _attitudePath = value; }
        }
        bool _useAttitude;
        /// <summary>
        /// 是否启用航天云态度表达软件
        /// </summary>
        public bool UseAttitude
        {
            get { return _useAttitude; }
            set { _useAttitude = value; }
        }
        bool _useCCLive;
        /// <summary>
        /// 是否启用CCLive课程直播
        /// </summary>
        public bool UseCCLive
        {
            get { return _useCCLive; }
            set { _useCCLive = value; }
        }
        string _cCLiveServer;
        /// <summary>
        /// CCLive课程直播服务地址
        /// </summary>
        public string CCLiveServer
        {
            get { return _cCLiveServer; }
            set { _cCLiveServer = value; }
        }
        bool _useYCGK;
        /// <summary>
        /// 是否启用远程观课
        /// </summary>
        public bool UseYCGK
        {
            get { return _useYCGK; }
            set { _useYCGK = value; }
        }
        bool _useYCBK;
        /// <summary>
        /// 是否启用远程播课
        /// </summary>
        public bool UseYCBK
        {
            get { return _useYCBK; }
            set { _useYCBK = value; }
        }
        string _connectionString;
        /// <summary>
        /// PostgreSQL连接字符串
        /// </summary>
        public string ConnectionString
        {
            get { return _connectionString; }
            set { _connectionString = value; }
        }
        string _questionsPersonal;
        /// <summary>
        /// 个人题库页面
        /// </summary>
        public string QuestionsPersonal
        {
            get { return _questionsPersonal; }
            set { _questionsPersonal = value; }
        }
        string _questionsPublic;
        /// <summary>
        /// 公共题库页面
        /// </summary>
        public string QuestionsPublic
        {
            get { return _questionsPublic; }
            set { _questionsPublic = value; }
        }
        string _resourcePageName;
        /// <summary>
        /// 资源下载页面相对路径
        /// </summary>
        public string ResourcePageName
        {
            get { return _resourcePageName; }
            set { _resourcePageName = value; }
        }
        string _resourcePage;
        /// <summary>
        /// 资源下载页面
        /// </summary>
        public string ResourcePage
        {
            get { return _resourcePage; }
            set { _resourcePage = value; }
        }
        #endregion
        public Config()
        {
            try
            {
                _connectionString = "User ID=postgres;Password=passwd;Server=localhost;Port=5432;Database=postgres;";

                XmlDocument xd = new XmlDocument();
                xd.Load(System.AppDomain.CurrentDomain.BaseDirectory + "Config.xml");

                if (TypeDefinition._DeviceType == DeviceType.U3)
                    _webServerIp = "127.0.0.1:8089";
                else if (TypeDefinition._DeviceType == DeviceType.U4)
                    _webServerIp = "192.168.5.122:8080";

                _loginPageUrl = "http://" + _webServerIp + xd.SelectSingleNode("/config/LoginPageUrl").InnerText;
                _homePageUrl = "http://" + _webServerIp + xd.SelectSingleNode("/config/HomePageUrl").InnerText;
                _postServer = "http://" + _webServerIp + xd.SelectSingleNode("/config/PostServer").InnerText;
                _activePath = "http://" + _webServerIp + xd.SelectSingleNode("/config/ActivePath").InnerText;
                _liveServer = "http://" + _webServerIp + xd.SelectSingleNode("/config/LiveServer").InnerText;

                _ascriptionServer = xd.SelectSingleNode("/config/AscriptionServer").InnerText;
                _mingBoUClass = xd.SelectSingleNode("/config/MingboUClass").InnerText;
                _recordPlayPath = xd.SelectSingleNode("/config/RecordPlayPath").InnerText;
                _boothCameraPath = xd.SelectSingleNode("/config/BoothCameraPath").InnerText;
                _attitudePath = xd.SelectSingleNode("/config/AttitudePath").InnerText;
                _aeroBoardPath = xd.SelectSingleNode("/config/AeroBoardPath").InnerText;
                _ascriptionFilePath = xd.SelectSingleNode("/config/AscriptionFilePath").InnerText;
                _cCLiveServer = xd.SelectSingleNode("/config/CCLiveServer").InnerText;
                _questionsPersonal = xd.SelectSingleNode("/config/QuestionsPersonal").InnerText;
                _questionsPublic = xd.SelectSingleNode("/config/QuestionsPublic").InnerText;
                _resourcePageName = "aeroteacher/resourcesManage.do";
                _resourcePage = "http://" + _webServerIp + xd.SelectSingleNode("/config/ResourceDL").InnerText; ;


                bool.TryParse(xd.SelectSingleNode("/config/UseUKe").InnerText, out _useUKe);
                bool.TryParse(xd.SelectSingleNode("/config/UseAttitude").InnerText, out _useAttitude);
                bool.TryParse(xd.SelectSingleNode("/config/UseCCLive").InnerText, out _useCCLive);
                bool.TryParse(xd.SelectSingleNode("/config/UseYCGK").InnerText, out _useYCGK);
                bool.TryParse(xd.SelectSingleNode("/config/UseYCBK").InnerText, out _useYCBK);
            }
            catch (Exception exc)
            {
                MessageBox.Show("配置文件错误，请检查");
                throw exc;
            }
        }

        public static void Setting(string key, string value)
        {
            string file = System.AppDomain.CurrentDomain.BaseDirectory + "Config.xml";
            XmlDocument xd = new XmlDocument();
            try
            {
                xd.Load(file);
                xd.SelectSingleNode("/config/" + key).InnerText = value;
                xd.Save(file);
            }
            catch (Exception exc)
            {
                MessageBox.Show("设置错误：" + exc.Message);
            }
        }
    }
}