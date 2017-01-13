using AeroEduLib;
using AeroEduPlatformLib.Lib;
using Microsoft.Win32;
using Newtonsoft.Json.Linq;
using System;
using System.Configuration;
using System.Text;

namespace AeroEduPlatformLib
{
    /// <summary>
    /// 系统信息存于文件系统，仅开机上报一次
    /// </summary>
    public class MachineAttribution
    {
        public void ReportAttribution()
        {
            try
            {
                SystemInfo info = GetSystemInfo_A();
                if (string.IsNullOrEmpty(info.Mac))
                {
                    Log.WriteLog("MAC为空，不能继续上报信息", SystemType.Infomation.ToString());
                    return;
                }
                    
                string postString = ConvertJSON(info);//这里即为传递的参数，可以用工具抓包分析，也可以自己分析，主要是form里面每一个name都要加进来  
                byte[] postData = Encoding.UTF8.GetBytes(postString);//编码，尤其是汉字，事先要看下抓取网页的编码方式  
                //AppInterface.PostData(TypeDefinition.LocalServer, postData);
                String postUrl = GetConnectionStringsConfig("MysqlPostUrl");
                AppInterface.PostData(postUrl, postData);
                //ReportToServer(info);
            }
            catch (Exception exc)
            {
                Log.WriteLog("错误:" + exc.Message, SystemType.Infomation.ToString());
            }
        }

        string ConvertJSON(SystemInfo info)
        {
            string provinceName, provinceCode, cityName, cityCode, districtName, districtCode, schoolName, className;
            // 首先从云平台获取本机的信息，再更新到本地配置文件。
            // 如果从云平台获取失败，再从本地获取
            string ascriptionServer = GetConnectionStringsConfig("AscriptionServer");
            Ascription asc = Ascription.GetAscriptionFromServer(ascriptionServer, info.Mac);
            HardWareMonitorInfo hwInfo = CHardwareMonitor.HardWareMonitorInfo();
            // 更新本地归属信息；
            if (asc != null)
            {
                provinceName = asc.Province;
                provinceCode = asc.ProvinceCode;
                cityName = asc.City;
                cityCode = asc.CityCode;
                districtName = asc.District;
                districtCode = asc.DistrictCode;
                schoolName = asc.School;
                className = asc.ClassNo;

                Setting.SetValue("provinceName", provinceName);
                Setting.SetValue("provinceCode", provinceCode);
                Setting.SetValue("cityName", cityName);
                Setting.SetValue("cityCode", cityCode);
                Setting.SetValue("districtName", districtName);
                Setting.SetValue("districtCode", districtCode);
                Setting.SetValue("schoolName", schoolName);
                Setting.SetValue("ClassName", className);
            }
            else
            {
                asc = new Ascription();
                provinceName = GetConnectionStringsConfig("provinceName");
                provinceCode = GetConnectionStringsConfig("provinceCode");
                cityName = GetConnectionStringsConfig("cityName");
                cityCode = GetConnectionStringsConfig("cityCode");
                districtName = GetConnectionStringsConfig("districtName");
                districtCode = GetConnectionStringsConfig("districtCode");
                schoolName = GetConnectionStringsConfig("schoolName");
                className = GetConnectionStringsConfig("ClassName");
            }

            JObject jo = new JObject();
            jo.Add("macAddress", info.Mac);
            jo.Add("provinceName", provinceName);
            jo.Add("provinceCode", provinceCode);
            jo.Add("cityName", cityName);
            jo.Add("cityCode", cityCode);
            jo.Add("districtName", districtName);
            jo.Add("districtCode", districtCode);
            jo.Add("schoolName", schoolName);
            jo.Add("className", className);
            jo.Add("OSname", info.OSname);
            jo.Add("productType", GetConnectionStringsConfig("HTYDeviceType"));
            jo.Add("cpuName", hwInfo.CpuName);
            jo.Add("mainBoardName", hwInfo.MainboardName);
            for (int i = 0; i < hwInfo.HDDInfo.Count; i++)
            {
                jo.Add("hdd" + i, hwInfo.HDDInfo[i].HDDName);
            }
            jo.Add("turnonTime", info.TurnOnTime);
            jo.Add("turnoffTime", info.TurnOffTime);
            return jo.ToString();
        }

        public String GetConnectionStringsConfig(string connectionName)
        {
            try
            {
                return ConfigurationManager.AppSettings[connectionName];
            }
            catch (Exception exc)
            {
                Log.WriteLog("读取配置错误：" + exc, SystemType.Infomation.ToString());
            }
            return "";
        }

        public SystemInfo GetSystemInfo_A()
        {
            SystemInfo obj = new SystemInfo();
            // MAC做主键
            obj.Mac = AeroEduLib.GetSystemInfo.GetLoaclMac();
            // 通过注册表读取系统版本
            RegistryKey rk;
            rk = Registry.LocalMachine.OpenSubKey("Software\\Microsoft\\Windows NT\\CurrentVersion");
            obj.OSname = rk.GetValue("ProductName").ToString() + " " + (Environment.Is64BitOperatingSystem ? "64位" : "32位"); // 是否为64位操作系统
            rk.Close();

            // 获取开机时间
            string[] s = SystemInfomation.GetStartupAndShutdownTime();
            obj.TurnOnTime = s[0];
            obj.TurnOffTime = s[1];

            return obj;
        }
    }

    public class SystemInfo
    {
        private string macField;

        private string timespanField;

        private string pcnameField;

        private string oSnameField;

        private string loginUserField;

        private string memeryField;

        private double cDiskSizeField;

        private double cDiskFreeSpaceField;

        private double dDiskSizeField;

        private double dDiskFreeSpaceField;

        private string recordDataSpaceField;

        private string boothDataSpaceField;

        private string networkInfoField;

        private string turnOnTimeField;

        private string turnOffTimeField;

        private string boothCameraStatusField;

        private string teacherCameraStatusField;

        private string studentCameraStatusField;

        private string lampHourField;

        /// <remarks/>
        public string Mac
        {
            get
            {
                return this.macField;
            }
            set
            {
                this.macField = value;
            }
        }

        /// <remarks/>
        public string Timespan
        {
            get
            {
                return this.timespanField;
            }
            set
            {
                this.timespanField = value;
            }
        }

        /// <remarks/>
        public string Pcname
        {
            get
            {
                return this.pcnameField;
            }
            set
            {
                this.pcnameField = value;
            }
        }

        /// <remarks/>
        public string OSname
        {
            get
            {
                return this.oSnameField;
            }
            set
            {
                this.oSnameField = value;
            }
        }

        /// <remarks/>
        public string LoginUser
        {
            get
            {
                return this.loginUserField;
            }
            set
            {
                this.loginUserField = value;
            }
        }

        /// <remarks/>
        public string Memery
        {
            get
            {
                return this.memeryField;
            }
            set
            {
                this.memeryField = value;
            }
        }

        /// <remarks/>
        public double CDiskSize
        {
            get
            {
                return this.cDiskSizeField;
            }
            set
            {
                this.cDiskSizeField = value;
            }
        }

        /// <remarks/>
        public double CDiskFreeSpace
        {
            get
            {
                return this.cDiskFreeSpaceField;
            }
            set
            {
                this.cDiskFreeSpaceField = value;
            }
        }

        /// <remarks/>
        public double DDiskSize
        {
            get
            {
                return this.dDiskSizeField;
            }
            set
            {
                this.dDiskSizeField = value;
            }
        }

        /// <remarks/>
        public double DDiskFreeSpace
        {
            get
            {
                return this.dDiskFreeSpaceField;
            }
            set
            {
                this.dDiskFreeSpaceField = value;
            }
        }

        /// <remarks/>
        public string RecordDataSpace
        {
            get
            {
                return this.recordDataSpaceField;
            }
            set
            {
                this.recordDataSpaceField = value;
            }
        }

        /// <remarks/>
        public string BoothDataSpace
        {
            get
            {
                return this.boothDataSpaceField;
            }
            set
            {
                this.boothDataSpaceField = value;
            }
        }

        /// <remarks/>
        public string NetworkInfo
        {
            get
            {
                return this.networkInfoField;
            }
            set
            {
                this.networkInfoField = value;
            }
        }

        /// <remarks/>
        public string TurnOnTime
        {
            get
            {
                return this.turnOnTimeField;
            }
            set
            {
                this.turnOnTimeField = value;
            }
        }

        /// <remarks/>
        public string TurnOffTime
        {
            get
            {
                return this.turnOffTimeField;
            }
            set
            {
                this.turnOffTimeField = value;
            }
        }

        /// <remarks/>
        public string BoothCameraStatus
        {
            get
            {
                return this.boothCameraStatusField;
            }
            set
            {
                this.boothCameraStatusField = value;
            }
        }

        /// <remarks/>
        public string TeacherCameraStatus
        {
            get
            {
                return this.teacherCameraStatusField;
            }
            set
            {
                this.teacherCameraStatusField = value;
            }
        }

        /// <remarks/>
        public string StudentCameraStatus
        {
            get
            {
                return this.studentCameraStatusField;
            }
            set
            {
                this.studentCameraStatusField = value;
            }
        }

        /// <remarks/>
        public string LampHour
        {
            get
            {
                return this.lampHourField;
            }
            set
            {
                this.lampHourField = value;
            }
        }
    }
}