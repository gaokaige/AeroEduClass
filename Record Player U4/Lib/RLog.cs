using AeroEduLib;

namespace lubo2012.Lib
{
    public class RLog
    {
        public static void ToDB(string str)
        {
            str = "[" + AppType.录播 + "]" + str;
            AeroEduLib.Log.ToDB(str);
        }
    }
}
