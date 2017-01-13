using System.IO;
using System.Xml;

namespace AeroEduLib
{
    /// <summary>
    /// 接口地址,注意编译U3/U4不同版本时候修改配置
    /// </summary>
    public class TypeDefinition
    {
        public static DeviceType _DeviceType = DeviceType.U3;
        /// <summary>
        /// 联网WEB接收客户端传递消息的地址
        /// </summary>
        public static string LocalServer
        {
            get { return ServerAddress(); }
        }

        private static string ServerAddress()
        {
            string ServerAddress = string.Empty;
            if (_DeviceType == DeviceType.U3)
#if !DEBUG
                ServerAddress = "http://127.0.0.1:8089/assetsPost.json";
#else
                ServerAddress = "http://192.168.0.112:8080/assetsPost.json";
#endif
            else if (_DeviceType == DeviceType.U4)
                ServerAddress = "http://192.168.5.122:8080/assetsPost.json";
            return ServerAddress;
        }

        //public const string LocalServer = "http://127.0.0.1:8089/assetsPost.json";//U3
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

    public enum DeviceType
    {
        U3,
        U4
    }
}