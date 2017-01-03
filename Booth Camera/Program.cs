using System;
using System.Reflection;
using System.Threading;
using System.Windows.Forms;

namespace AeroEduClass
{
    static class Program
    {
        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        [STAThread]
        static void Main(string[] args)
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            bool noInstance;

            Mutex mutex = new Mutex(true, "Global\\" + Assembly.GetExecutingAssembly().FullName, out noInstance);

            String[] CmdArgs = System.Environment.GetCommandLineArgs();
            if (CmdArgs.Length > 1 && CmdArgs[1].ToString() == "AeroEduClass")
            {
                //String arg0 = CmdArgs[0].ToString();//参数0是它本身的路径
                //appName = CmdArgs[1].ToString();
            }
            else
            {
#if !DEBUG
                MessageBox.Show("请从课联网平台启动本程序");
                return;
#endif
            }

            if (noInstance)
            {
                Application.Run(new frmMain());
                mutex.ReleaseMutex();
            }
            else
            {
                MessageBox.Show("程序已经启动，请不要同时运行多次。");
                Application.Exit();
            }
        }
    }
}