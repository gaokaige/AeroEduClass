using AeroEduLib;

namespace AeroEduClass.NoGui
{
    public class ALog
    {
        public static void ToDB(string str)
        {
#if !DEBUG
            str = "[" + AppType.课联网 + "]" + str;
            AeroEduLib.Log.ToDB(str);
#endif
        }
    }
}
