using AeroEduLib;

namespace UpgradePackageBuild.lib
{
    public class Config
    {
        string _ServerAddress;
        /// <summary>
        /// 版本服务器地址
        /// </summary>
        public string ServerAddress
        {
            get { return _ServerAddress; }
            set { _ServerAddress = value; }
        }
        string _Version;
        /// <summary>
        /// 当前版本号
        /// </summary>
        public string Version
        {
            get { return _Version; }
            set { _Version = value; }
        }

        public Config()
        {
            _Version = Setting.GetValue("version");
            _ServerAddress = Setting.GetValue("server");
        }

        public void Refresh()
        {
            _Version = Setting.GetValue("version");
            _ServerAddress = Setting.GetValue("server");
        }
    }
}
