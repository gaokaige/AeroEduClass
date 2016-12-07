using System;
using System.Configuration;
using System.Windows.Forms;
using 航天云态度表达.Gui;
using 航天云态度表达.Lib;

namespace 航天云态度表达
{
    static class Program
    {
        public static string CLASSID { get; set; }
        public static string ONLINETEACHERID { get; set; }
        public static bool ISLOG = false;
        public static string StudentInterface, StudentDataServer, TeachaerDataServer, Frmfloat_X, Frmfloat_Y;
        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        [STAThread]
        static void Main(string[] args)
        {
            try
            {
                if (ConfigurationLib.GetSetting("Log").ToLower().Equals("true"))
                    ISLOG = true;
                StudentInterface = ConfigurationLib.GetSetting("studentinterface");
                StudentDataServer = ConfigurationLib.GetSetting("stuuploaddataserver");
                TeachaerDataServer = ConfigurationLib.GetSetting("teauploadserver");
                Frmfloat_X = ConfigurationLib.GetSetting("frmfloat_x");
                Frmfloat_Y = ConfigurationLib.GetSetting("frmfloat_y");
            }
            catch { MessageBox.Show("配置文件参数错误"); }

            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            try
            {
                CLASSID = args[0];
                ONLINETEACHERID = args[1];
                Log.ToFile("参数个数:" + args.Length);
                Log.ToFile("CLASSID:" + args[0]);
                Log.ToFile("ONLINETEACHERID:" + args[1]);
            }
            catch
            {
                航天云态度表达.Lib.Log.ToFile("启动参数错误");
            }
            Application.Run(new FrmFloat());
        }
    }
}
