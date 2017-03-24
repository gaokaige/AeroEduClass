using AeroEduLib;

namespace AeroEduClass.Lib
{
    public class BLog
    {
        public static void ToDB(string str)
        {
#if !DEBUG
            str = "[" + AppType.实物展台 + "]" + str;
            AeroEduLib.Log.ToDB(str);
#endif
        }
    }
}
