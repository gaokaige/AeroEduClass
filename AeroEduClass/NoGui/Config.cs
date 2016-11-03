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

        public Config()
        {
            XmlDocument xd = new XmlDocument();
            xd.Load(System.AppDomain.CurrentDomain.BaseDirectory + "Config.xml");
            _loginPageUrl = xd.SelectSingleNode("/config/LoginPageUrl").InnerText;
            _homePageUrl = xd.SelectSingleNode("/config/HomePageUrl").InnerText;
            _recordPlayPath = xd.SelectSingleNode("/config/RecordPlayPath").InnerText;
            _boothCameraPath = xd.SelectSingleNode("/config/BoothCameraPath").InnerText;
            _activePath = xd.SelectSingleNode("/config/ActivePath").InnerText;
            _aeroBoardPath = xd.SelectSingleNode("/config/AeroBoardPath").InnerText;
            _liveServer = xd.SelectSingleNode("/config/LiveServer").InnerText;
            _ascriptionServer = xd.SelectSingleNode("/config/AscriptionServer").InnerText;
            _ascriptionFilePath = xd.SelectSingleNode("/config/AscriptionFilePath").InnerText;
            _mingBoUClass = xd.SelectSingleNode("/config/MingboUClass").InnerText;
            _postServer = xd.SelectSingleNode("/config/PostServer").InnerText;
            bool uke = false;
            bool.TryParse(xd.SelectSingleNode("/config/UseUKe").InnerText, out uke);
            _useUKe = uke;
        }
    }
}
