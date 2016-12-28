using System.IO;
using System.Xml;

namespace AeroEduLib
{
    /// <summary>
    /// 接口地址
    /// U3:http://127.0.0.1:8089/assetsPost.json
    /// U4:http://192.168.5.122:8080/assetsPost.json
    /// 注意编译不同版本时候修改配置
    /// </summary>
    public class TypeDefinition
    {
        /// <summary>
        /// 联网WEB接收客户端传递消息的地址
        /// </summary>
        public static string LocalServer
        {
            get { return GetWebServerIp(); }
        }

        private static string GetWebServerIp()
        {
            XmlDocument xd = new XmlDocument();
            xd.Load(System.AppDomain.CurrentDomain.BaseDirectory + "Config.xml");
            return "http://" + xd.SelectSingleNode("/config/WebServerIp").InnerText + "/assetsPost.json";
        }
    }
    /// <summary>
    /// 文件类型定义
    /// </summary>
    public enum FileType
    {
        MP4 = 1,
        PPT = 2,
        JPG = 3
    }
    /// <summary>
    /// 应用类型定义
    /// </summary>
    public enum AppType
    {
        录播 = 1,
        实物展台 = 2,
        课联网 = 3
    }
    /// <summary>
    /// 错误码定义
    /// </summary>
    public enum ErrorCode
    {
        /// <summary>
        /// 成功
        /// </summary>
        OK = 0,
        /// <summary>
        /// 数据库连接错误
        /// </summary>
        ConnectDBError = 1,
        /// <summary>
        /// SQL语句执行错误
        /// </summary>
        ExecuteNonQueryError = 2
    }
    /// <summary>
    /// 调用接口方法类型定义
    /// </summary>
    public enum MethodType
    {
        CreateNewResource = 1,
        WriteLog = 2
    }
    /// <summary>
    /// 资源对象
    /// </summary>
    //public class Resource
    //{
    //    public string PackName;
    //    public FileInfo File;
    //    public Resource() { }
    //}
    public class Resource
    {
        public string PackName;
        public FileInfo File;
        public AppType Apptype;
        public string FileType;
        public string FilePath;
        public string CreateTime;
        public Resource() { CreateTime = System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"); }
    }
}
