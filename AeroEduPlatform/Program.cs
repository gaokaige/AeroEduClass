using System.ServiceProcess;
using System.Threading;

namespace AeroEduPlatform
{
    static class Program
    {
        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        static void Main()
        {
            ServiceBase[] ServicesToRun = new ServiceBase[] 
            { 
                new Service1() 
            };

            ServiceBase.Run(ServicesToRun);
            //AeroEduPlatformLib.RemoteMonitorLib lib = new AeroEduPlatformLib.RemoteMonitorLib();
            //lib.RemoteMonitor();
        }
    }
}
