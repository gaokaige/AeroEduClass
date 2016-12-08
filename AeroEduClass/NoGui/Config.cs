using System;
using System.Windows.Forms;
using System.Xml;

namespace AeroEduClass.NoGui
{
    public class Config
    {
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
        bool useYCGK;
        /// <summary>
        /// 是否启用远程观课
        /// </summary>
        public bool UseYCGK
        {
            get { return useYCGK; }
            set { useYCGK = value; }
        }
        bool useYCBK;
        /// <summary>
        /// 是否启用远程播课
        /// </summary>
        public bool UseYCBK
        {
            get { return useYCBK; }
            set { useYCBK = value; }
        }
        public Config()
        {
            try
            {
                XmlDocument xd = new XmlDocument();
                xd.Load(System.AppDomain.CurrentDomain.BaseDirectory + "Config.xml");
                _loginPageUrl = xd.SelectSingleNode("/config/LoginPageUrl").InnerText;
                _homePageUrl = xd.SelectSingleNode("/config/HomePageUrl").InnerText;
                _recordPlayPath = xd.SelectSingleNode("/config/RecordPlayPath").InnerText;
                _boothCameraPath = xd.SelectSingleNode("/config/BoothCameraPath").InnerText;
                _activePath = xd.SelectSingleNode("/config/ActivePath").InnerText;
                _aeroBoardPath = xd.SelectSingleNode("/config/AeroBoardPath").InnerText;
                _attitudePath = xd.SelectSingleNode("/config/AttitudePath").InnerText;
                _liveServer = xd.SelectSingleNode("/config/LiveServer").InnerText;
                _ascriptionServer = xd.SelectSingleNode("/config/AscriptionServer").InnerText;
                _ascriptionFilePath = xd.SelectSingleNode("/config/AscriptionFilePath").InnerText;
                _mingBoUClass = xd.SelectSingleNode("/config/MingboUClass").InnerText;
                _postServer = xd.SelectSingleNode("/config/PostServer").InnerText;
                bool uke = false;
                bool.TryParse(xd.SelectSingleNode("/config/UseUKe").InnerText, out uke);
                bool uAtt = false;
                bool.TryParse(xd.SelectSingleNode("/config/UseAttitude").InnerText, out uAtt);
                _useAttitude = uAtt;
                bool uCCLive = false;
                bool.TryParse(xd.SelectSingleNode("/config/UseCCLive").InnerText, out uCCLive);
                _cCLiveServer = xd.SelectSingleNode("/config/CCLiveServer").InnerText;
            }
            catch (Exception exc)
            {
                MessageBox.Show("配置文件错误，请检查");
                throw exc;
            }
        }

        public static void Setting(string key ,string value)
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
