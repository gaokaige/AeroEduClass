using OpenHardwareMonitor;
using OpenHardwareMonitor.GUI;
using OpenHardwareMonitor.Hardware;
using System;
using System.Collections.Generic;

namespace AeroEduPlatformLib
{
    public class CHardwareMonitor
    {
        public static HardWareMonitorInfo HardWareMonitorInfo()
        {
            HardWareMonitorInfo hmi = new HardWareMonitorInfo();
            try
            {
                HDD hdd;
                PersistentSettings settings = new PersistentSettings();
                UpdateVisitor updateVisitor = new UpdateVisitor();
                Computer computer = new Computer() { CPUEnabled = true, MainboardEnabled = true, HDDEnabled = true, FanControllerEnabled = true };
                computer.Open();
                computer.Accept(updateVisitor);
                // 对computer对象解析
                foreach (var hardwareItem in computer.Hardware)
                {
                    if (hardwareItem.HardwareType == HardwareType.CPU)
                    {
                        hmi.CpuName = hardwareItem.Name;
                        foreach (var sensor in hardwareItem.Sensors)
                        {
                            if (sensor.Identifier.ToString().Contains("/intelcpu/0/temperature")
                                && sensor.SensorType == SensorType.Temperature)
                            {
                                hmi.CpuTemperature = sensor.Value;
                            }

                            if (sensor.Name == "CPU Package" && sensor.SensorType == SensorType.Temperature)
                            {
                                hmi.CpuTemperature = sensor.Value;
                            }
                        }
                    }
                    else if (hardwareItem.HardwareType == HardwareType.Mainboard)
                    {
                        hmi.MainboardName = hardwareItem.Name;
                    }
                    else if (hardwareItem.HardwareType == HardwareType.HDD)
                    {
                        hdd = new HDD();
                        hdd.HDDName = hardwareItem.Name;
                        foreach (ISensor sensor in hardwareItem.Sensors)
                        {
                            //找到温度
                            if (sensor.SensorType == SensorType.Temperature)
                            {
                                hdd.HDDTemperature = sensor.Value;
                            }
                        }
                        hmi.HDDInfo.Add(hdd);
                    }
                }
            }
            catch { }
            return hmi;
        }
    }

    public class HardWareMonitorInfo
    {
        public string CpuName = string.Empty;
        public float? CpuTemperature = 0;
        public string MainboardName = string.Empty;
        public float? MainboardTemperature = 0;
        public List<HDD> HDDInfo;
        public HardWareMonitorInfo()
        {
            HDDInfo = new List<HDD>();
        }
    }

    public class HDD
    {
        public string HDDName = string.Empty;
        public float? HDDTemperature = 0;
    }
}
