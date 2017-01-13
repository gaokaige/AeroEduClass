using System.ServiceProcess;
using System.Threading;

namespace AeroEduPlatform
{
    public partial class Service1 : ServiceBase
    {
        Thread th1, th2;
        AeroEduPlatformLib.SystemInfomation systemInfomation;
        AeroEduPlatformLib.MachineAttribution machineAttribution;

        public Service1()
        {
            InitializeComponent();
        }

        protected override void OnStart(string[] args)
        {
            machineAttribution = new AeroEduPlatformLib.MachineAttribution();
            th2 = new Thread(machineAttribution.ReportAttribution);
            th2.IsBackground = true;
            th2.Start();
            Log.WriteLog("归属信息上报启动...");
           
            systemInfomation = new AeroEduPlatformLib.SystemInfomation();
            th1 = new Thread(systemInfomation.ReportSystemInfo);
            th1.IsBackground = true;
            th1.Start();
            Log.WriteLog("设备信息上报启动...");

            // 删除过期日志
            AeroEduPlatformLib.Log.DeleteLogFile();
        }

        protected override void OnStop()
        {
            th1.Abort();
            th2.Abort();
            Log.WriteLog("服务停止！");
        }
    }
}
