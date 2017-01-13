using AeroEduLib;
using Microsoft.VisualBasic.Devices;
using Microsoft.Win32;
using Newtonsoft.Json.Linq;
using System;
using System.Collections;
using System.Configuration;
using System.Diagnostics;
using System.IO;
using System.IO.Ports;
using System.Management;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading;

namespace AeroEduPlatformLib
{
    public class SystemInfomation
    {
        bool _stop = false;

        public bool Stop
        {
            get { return _stop; }
            set { _stop = value; }
        }

        SerialPort sp;
        string answer = string.Empty;
        string lamp = string.Empty;
        HardWareMonitorInfo harWareMonitorInfo;
        string cpuTemperature;

        public void ReportSystemInfo()
        {
            Log.WriteLog("服务启动，延时5分钟等待网络", SystemType.Report.ToString());
            Thread.Sleep(5 * 60 * 1000);

            int interval = Convert.ToInt32(GetConnectionStringsConfig("RemoteMonitorInterval"));//写一个接口从服务器读Interval，如果请求失败从本地读
            SystemInfo info = GetSystemInfo_B();
            if (string.IsNullOrEmpty(info.Mac))
            {
                Log.WriteLog("MAC为空，不能继续上报信息", SystemType.Infomation.ToString());
                return;
            }

            String postUrl = GetConnectionStringsConfig("OpentsdbPostUrl");//服务器地址

            string data = "[";
            data += send("cDiskSize", info.CDiskSize.ToString(), info.Mac, info.Timespan) + ",";
            data += send("cDiskFreeSpace", info.CDiskFreeSpace.ToString(), info.Mac, info.Timespan) + ",";
            data += send("dDiskSize", info.DDiskSize.ToString(), info.Mac, info.Timespan) + ",";
            data += send("dDiskFreeSpace", info.DDiskFreeSpace.ToString(), info.Mac, info.Timespan) + ",";
            data += send("recordDataSpace", info.RecordDataSpace, info.Mac, info.Timespan) + ",";
            data += send("boothDataSpace", info.BoothDataSpace, info.Mac, info.Timespan) + ",";
            data += send("boothCameraStatus", info.BoothCameraStatus, info.Mac, info.Timespan) + ",";
            data += send("teacherCameraStatus", info.TeacherCameraStatus, info.Mac, info.Timespan) + ",";
            if (info.LampHour != null)
            {
                data += send("studentCameraStatus", info.StudentCameraStatus, info.Mac, info.Timespan) + ",";
                data += send("lampHour", info.LampHour, info.Mac, info.Timespan);
            }
            else
                data += send("studentCameraStatus", info.StudentCameraStatus, info.Mac, info.Timespan);
            data += "]";
            byte[] Data = Encoding.UTF8.GetBytes(data);
            AppInterface.PostData(postUrl, Data);

            while (!Stop)
            {
                try
                {
                    Process[] processes = Process.GetProcesses();
                    int record = 5;
                    int camera = 7;
                    int donview = 1;
                    int meeting = 3;
                    foreach (Process process in processes)
                    {
                        switch (process.ProcessName)
                        {
                            case "Record Player": { record = 6; break; }
                            case "Booth Camera": { camera = 8; break; }
                            case "DonviewBoard": { donview = 2; break; }
                            case "ActiveMeeting": { meeting = 4; break; }
                            default: break;
                        }
                    }
                    TimeSpan ts = DateTime.UtcNow - new DateTime(1970, 1, 1, 0, 0, 0, 0);
                    info.Timespan = Convert.ToInt64(ts.TotalSeconds).ToString();
                    PerformanceCounter pc = new PerformanceCounter();
                    pc.CategoryName = "Processor";
                    pc.CounterName = "% Processor Time";
                    pc.InstanceName = "_Total";
                    pc.MachineName = ".";
                    pc.ReadOnly = true;
                    Thread.Sleep(1000);
                    pc.NextValue();
                    //第一次取值为0
                    float CPUUsageRate = pc.NextValue();
                    int count = 0;
                    while (CPUUsageRate == 0 || CPUUsageRate == 100)
                    {
                        CPUUsageRate = pc.NextValue();
                        count++;
                        Thread.Sleep(1000);
                        if (count > 1000)
                            break;
                    }

                    ComputerInfo ci = new ComputerInfo();
                    ulong am = ci.AvailablePhysicalMemory;
                    ulong tm = ci.TotalPhysicalMemory;
                    double OccupyMemory = 1 - Convert.ToDouble(am) / Convert.ToDouble(tm);
                    OccupyMemory *= 100;
                    harWareMonitorInfo = CHardwareMonitor.HardWareMonitorInfo();
                    cpuTemperature = harWareMonitorInfo.CpuTemperature.ToString();

                    data = "[";
                    data += send("cpuTemperature", cpuTemperature, info.Mac, info.Timespan) + ",";
                    data += send("recordProcess", record.ToString(), info.Mac, info.Timespan) + ",";
                    data += send("boothProcess", camera.ToString(), info.Mac, info.Timespan) + ",";
                    data += send("donviewBoard", donview.ToString(), info.Mac, info.Timespan) + ",";
                    data += send("activeMeeting", meeting.ToString(), info.Mac, info.Timespan) + ",";
                    data += send("CPUUsageRate", Convert.ToInt32(CPUUsageRate).ToString(), info.Mac, info.Timespan) + ",";
                    data += send("OccupyMemory", Convert.ToInt32(OccupyMemory).ToString(), info.Mac, info.Timespan) + ",";
                    for (int i = 0; i < harWareMonitorInfo.HDDInfo.Count; i++)
                    {
                        data += send("HDDTemperature" + i, harWareMonitorInfo.HDDInfo[i].HDDTemperature.ToString(), info.Mac, info.Timespan) + ",";
                    }
                    data = data.TrimEnd(',');
                    data += "]";
                    byte[] postData = Encoding.UTF8.GetBytes(data);
                    AppInterface.PostData(postUrl, postData);
                }
                catch (Exception exc)
                {
                    Log.WriteLog("错误：" + exc.Message, SystemType.Report.ToString());
                }
#if !DEBUG
                System.Threading.Thread.Sleep(interval);
#else
                System.Threading.Thread.Sleep(15 * 1000);
#endif
            }
            Log.WriteLog("服务停止.", SystemType.Report.ToString());
        }

        public string send(string metricName, string metricInfo, string mac, string timeSpan)
        {
            if (string.IsNullOrEmpty(metricInfo))
                metricInfo = "0";
            JObject jo = new JObject();
            jo.Add("metric", metricName);
            jo.Add("timestamp", timeSpan);
            jo.Add("value", metricInfo);
            JObject jn = new JObject();
            jn.Add("host", mac);
            jo.Add("tags", jn);
            string data = jo.ToString();
            return data;
        }

        /**
         * 获取配置文件信息
         */
        public String GetConnectionStringsConfig(string connectionName)
        {
            try
            {
                return ConfigurationManager.AppSettings[connectionName];
            }
            catch (Exception exc)
            {
                Log.WriteLog("读取配置错误：" + exc, SystemType.Report.ToString());
            }
            return "";
        }

        public SystemInfo GetSystemInfo_B()
        {
            SystemInfo obj = new SystemInfo();
            // MAC做主键
            obj.Mac = AeroEduLib.GetSystemInfo.GetLoaclMac();
            // 时间戳
            //obj.Timespan = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss fff");
            TimeSpan ts = DateTime.UtcNow - new DateTime(1970, 1, 1, 0, 0, 0, 0);
            obj.Timespan = Convert.ToInt64(ts.TotalSeconds).ToString();
            // 获取计算机名
            obj.Pcname = Environment.MachineName;
            // 用户名
            obj.LoginUser = Environment.UserName;
            // 内存大小
            //ComputerInfo ci = new ComputerInfo();
            //obj.Memery = Math.Round(1.0 * ci.TotalPhysicalMemory / 1024 / 1024 / 1024, 0) + "G";
            ManagementClass mc = new ManagementClass("Win32_PhysicalMemory");
            ManagementObjectCollection moc = mc.GetInstances();
            double total = 0;
            foreach (ManagementObject mo in moc)
            {
                total += ((Math.Round(Int64.Parse(mo.Properties["Capacity"].Value.ToString()) / 1024 / 1024 / 1024.0, 1)));
            }
            moc.Dispose();
            mc.Dispose();
            obj.Memery = total.ToString() + "G";
            // 硬盘信息（空间、剩余空间）
            double totalSize, freeSpace;

            System.IO.DriveInfo[] driveInfo = System.IO.DriveInfo.GetDrives();
            foreach (System.IO.DriveInfo drive in driveInfo)
            {
                try
                {
                    totalSize = Math.Round(1.0 * drive.TotalSize / (1024 * 1024 * 1024), 2);
                    freeSpace = Math.Round(1.0 * drive.TotalFreeSpace / (1024 * 1024 * 1024), 2);
                    if (drive.ToString() == "C:\\")
                    {
                        obj.CDiskSize = totalSize;
                        obj.CDiskFreeSpace = freeSpace;
                    }
                    else if (drive.ToString() == "D:\\")
                    {
                        obj.DDiskSize = totalSize;
                        obj.DDiskFreeSpace = freeSpace;
                    }
                }
                catch { }
            }
            // 录播文件夹大小
            string recordDataPath = Setting.GetValue("RecordDataPath");
            string boothDataPath = Setting.GetValue("BoothDataPath");
            Scripting.FileSystemObject fso = new Scripting.FileSystemObject();
            if (Directory.Exists(recordDataPath))
            {
                obj.RecordDataSpace = Math.Round(1.0 * fso.GetFolder(recordDataPath).Size / 1024 / 1024, 2).ToString();
            }

            // 实物展台文件夹大小
            if (Directory.Exists(boothDataPath))
            {
                obj.BoothDataSpace = Math.Round(1.0 * fso.GetFolder(boothDataPath).Size / 1024 / 1024, 2).ToString();
            }
            // 通过注册表读取系统版本
            RegistryKey rk;
            rk = Registry.LocalMachine.OpenSubKey("Software\\Microsoft\\Windows NT\\CurrentVersion");
            obj.OSname = rk.GetValue("ProductName").ToString() + " " + (Environment.Is64BitOperatingSystem ? "64位" : "32位"); // 是否为64位操作系统
            rk.Close();
            // 获取开机时间
            string[] s = GetStartupAndShutdownTime();
            obj.TurnOnTime = s[0];
            obj.TurnOffTime = s[1];

            //获取各路摄像头状态
            //构造Ping实例
            Ping ping = new Ping();

            //Ping选项设置，用于控制如何传输数据包
            PingOptions poptions = new PingOptions();
            poptions.DontFragment = true;

            string[] t = new string[3];
            //实物展台IP
            string boothaddress = GetConnectionStringsConfig("boothcameraurl");

            //教师画面IP
            string teacheraddress = GetConnectionStringsConfig("teachercameraurl");

            //学生画面IP
            string studentaddress = GetConnectionStringsConfig("studentcameraurl");

            //测试数据
            string data = "ceshi ceshi";
            Byte[] buffer = Encoding.ASCII.GetBytes(data);

            //设置超时时间
            int timeout = 1000;

            //调用同步send方法发送数据，将返回结果保存至PingReply实例
            //此处如果直接ping IP的话，先引用命名空间using System.Net;
            PingReply pingreply1 = null, pingreply2 = null, pingreply3 = null;
            try
            {
                pingreply1 = ping.Send(boothaddress, timeout, buffer, poptions);
            }
            catch { }

            if (pingreply1 != null && pingreply1.Status == IPStatus.Success)
            {
                //MessageBox.Show("实物展台网络通畅", "提示");
                obj.BoothCameraStatus = "1";
            }
            else
            {
                //MessageBox.Show("实物展台网络不通", "提示");
                obj.BoothCameraStatus = "0";
            }

            try
            {
                pingreply2 = ping.Send(teacheraddress, timeout, buffer, poptions);
            }
            catch { }

            if (pingreply2 != null && pingreply2.Status == IPStatus.Success)
            {
                //MessageBox.Show("教师摄像头网络通畅", "提示");
                obj.TeacherCameraStatus = "1";
            }
            else
            {
                //MessageBox.Show("教师摄像头网络不通", "提示");
                obj.TeacherCameraStatus = "0";
            }

            try
            {
                pingreply3 = ping.Send(studentaddress, timeout, buffer, poptions);
            }
            catch { }

            if (pingreply3 != null && pingreply3.Status == IPStatus.Success)
            {
                //MessageBox.Show("学生摄像头网络通畅", "提示");
                obj.StudentCameraStatus = "1";
            }
            else
            {
                //MessageBox.Show("学生摄像头网络不通", "提示");
                obj.StudentCameraStatus = "0";
            }
            if (GetConnectionStringsConfig("HTYDeviceType").ToLower() != "yj-202")
                lampHour();

            if (this.lamp.Contains("H"))
            {
                lamp = lamp.Replace("=SLT:", "");
                int a = lamp.IndexOf("H");
                this.answer = this.lamp.Substring(0, a);
                obj.LampHour = answer;
            }

            return obj;
        }

        private void lampHour()
        {
#if !DEBUG
            Thread.Sleep(1000 * 60);//防止与开机开投影串口冲突;
#endif
            sp = new SerialPort();
            //获取投影仪灯泡使用时间
            //sp.DataReceived += new SerialDataReceivedEventHandler(sp_DataReceived);
            try
            {
                sp.ReadTimeout = 1000 * 5;
                sp.WriteTimeout = 1000 * 5;
                sp.PortName = SerialPort.GetPortNames()[0];
                sp.BaudRate = 9600;
                sp.DataBits = 8;
                sp.StopBits = StopBits.One;
                sp.Parity = Parity.None;
                int i = 0;
                while (!sp.IsOpen && i < 10)
                {
                    try { sp.Open(); break; }
                    catch (Exception exc)
                    {
                        Thread.Sleep(1000);
                        Log.WriteLog("串口打开错误:" + exc.Message, "Information");
                        i++;
                    }
                }

                if (sp.IsOpen)
                {
                    byte[] a = new byte[5];
                    a[0] = 0x23;
                    a[1] = 0x53;
                    a[2] = 0x4C;
                    a[3] = 0x54;
                    a[4] = 0x0D;
                    for (int j = 0; j < 5; j++)
                    {
                        sp.Write(a, 0, 5);
                        Thread.Sleep(1000);
                        sp_DataReceived(null, null);
                        if (this.lamp.Contains("H"))
                            break;
                    }
                }
            }
            catch (Exception exc)
            {
                Log.WriteLog("投影灯泡是使用时间获取错误:" + exc.Message, SystemType.Report.ToString());
            }
            finally
            {
                //SaveLog("------------------");
                if (sp != null && sp.IsOpen)
                    sp.Close();
            }
        }

        public static string[] GetStartupAndShutdownTime()
        {
            string[] t = new string[3];
            SortedList startupTimeList = new SortedList();
            SortedList shutdownTimeList = new SortedList();
            EventLog eventlog = new EventLog();
            eventlog.Log = "System";
            EventLogEntryCollection eventLogEntryCollection = eventlog.Entries;
            StringBuilder sb = new StringBuilder();
            foreach (EventLogEntry entry in eventLogEntryCollection)
            {
                //这边可以自行改条件
                if (12 == entry.InstanceId && entry.Source == "Microsoft-Windows-Kernel-General")
                {
                    startupTimeList.Add(entry.TimeGenerated.ToString("yyyy-MM-dd HH:mm:ss.fff"), entry.TimeGenerated);
                }
                else if (13 == entry.InstanceId && entry.Source == "Microsoft-Windows-Kernel-General")
                {
                    shutdownTimeList.Add(entry.TimeGenerated.ToString("yyyy-MM-dd HH:mm:ss.fff"), entry.TimeGenerated);
                }
            }
            t[0] = startupTimeList.GetKey(startupTimeList.Count - 2).ToString();
            t[1] = shutdownTimeList.GetKey(shutdownTimeList.Count - 1).ToString();
            t[2] = startupTimeList.GetKey(startupTimeList.Count - 1).ToString();
            return t;
        }
        private void sp_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            byte[] readBuffer = new byte[sp.ReadBufferSize + 1];
            try
            {
                int count = sp.Read(readBuffer, 0, sp.ReadBufferSize);
                this.lamp = Encoding.Default.GetString(readBuffer, 0, count);
                Log.WriteLog("---------" + this.lamp, SystemType.Report.ToString());
            }
            catch (Exception exc)
            {
                Log.WriteLog("串口返回数据错误:" + exc.Message, SystemType.Report.ToString());
            }
        }
    }
    public enum SystemType
    {
        // Mac上报服务
        Report,
        // 系统信息获取服务
        Infomation,
    }
}
