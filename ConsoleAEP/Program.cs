using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleAEP
{
    class Program
    {
        static void Main(string[] args)
        {
            AeroEduPlatformLib.MachineAttribution ma = new AeroEduPlatformLib.MachineAttribution();
            ma.ReportAttribution();

            AeroEduPlatformLib.SystemInfomation si = new AeroEduPlatformLib.SystemInfomation();
            si.ReportSystemInfo();

            string cpuTemperature = AeroEduPlatformLib.CHardwareMonitor.HardWareMonitorInfo().ToString();
            Console.WriteLine(cpuTemperature);
        }
    }
}
