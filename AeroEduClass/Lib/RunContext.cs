using AeroEduClass.UI;

namespace AeroEduClass.Lib
{ 
    public class RunContext : SplashScreenApplicationContext
    {
        protected override void OnCreateSplashScreenForm()
        {
            this.SplashScreenForm = new frmSplashScreen();//启动窗体 
        }

        protected override void OnCreateMainForm()
        {
            this.PrimaryForm = new frmMain();//主窗体 
        }

        protected override void SetSeconds()
        {
            this.SecondsShow = 1;//启动窗体显示的时间(秒) 
        }
    }
}
