using System.IO;

namespace AeroEduLib
{
    /// <summary>
    /// 接口地址
    /// </summary>
    public class TypeDefinition
    {
#if !DEBUG
        public const string LocalServer = "http://127.0.0.1:8089/assetsPost.json";
#else
        public const string LocalServer = "http://192.168.0.108:8080/ROOT/assetsPost.json";
#endif
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
    public class Resource
    {
        public string PackName;
        public FileInfo File;
        public Resource() { }
    }
}
