using AeroEduLib;

namespace AeroEduClass.NoGui
{
    public class BLog
    {
        public static void ToDB(string str)
        {
            str = "[" + AppType.实物展台 + "]" + str;
            AeroEduLib.Log.ToDB(str);
        }
    }
}
