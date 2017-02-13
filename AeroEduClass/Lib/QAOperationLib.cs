using AeroEduLib;

namespace AeroEduClass.Lib
{
    /// <summary>
    /// 答题器操作类，仅对U3使用
    /// </summary>
    public class QAOperationLib
    {
        /// <summary>
        /// 重置答题器结果（清零），同"态度表达->Lib.MainLib.Reset()"
        /// </summary>
        /// <returns></returns>
        public static bool QAReset()
        {
            string resetUrl = "http://192.168.5.2:50002/start";
            bool result = false;
            string html = AppInterface.PostData(resetUrl, new byte[0]);

            if (!string.IsNullOrEmpty(html) && !html.Equals("[ERROR]"))
                result = true;
            return result;
        }
    }
}
