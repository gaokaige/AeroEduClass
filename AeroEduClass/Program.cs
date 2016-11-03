using AeroEduClass.Gui;
using AeroEduLib;
using System;
using System.Windows.Forms;

namespace AeroEduClass
{
    static class Program
    {
        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            bool noInstance;

            System.Threading.Mutex mutex = new System.Threading.Mutex(true, "Global\\" + System.Reflection.Assembly.GetExecutingAssembly().FullName, out noInstance);
            if (noInstance)
            {
                if (GetSystemInfo.GetLoaclMac() == string.Empty)
                {
                    MessageBox.Show("未发现本地网卡，程序未能启动。");
                    return;
                }
                string _license = Setting.GetLicense();
                bool checkLicense = GetSystemInfo.CheckLicense(_license);
                if (!checkLicense)
                {
                    Application.Run(new frmReg());// 注册窗口
                }
                else
                {
                    Application.Run(new frmMain());
                }
            }
            else
            {
                MessageBox.Show("程序已经启动，请不要同时运行多次。");
                Application.Exit();
            }
        }
    }
}
