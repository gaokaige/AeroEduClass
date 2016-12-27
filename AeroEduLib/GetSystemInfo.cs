using System.Collections.Generic;
using System.Management;
using System.Net.NetworkInformation;

namespace AeroEduLib
{
    public class GetSystemInfo
    {
        /// <summary>
        /// 获取本机的mac地址生成license
        /// </summary>
        /// <param name="mac"></param>
        /// <returns></returns>
        public static string GetLicense()
        {
            string mac = GetLoaclMac().ToLower();
            string license = string.Empty;
            if (!string.IsNullOrEmpty(mac))
            {
                mac = mac.Replace(":", "");
                license = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(mac + "aero-edu.com", "MD5");
            }
            return license;
        }
        /// <summary>
        /// 生成license
        /// </summary>
        /// <param name="mac"></param>
        /// <returns></returns>
        public static string GenerateLicense(string mac)
        {
            mac = mac.Replace(":", "").ToLower();
            string license = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(mac + "aero-edu.com", "MD5");
            return license;
        }
        /// <summary>
        /// 获取名称为“本地连接”（win7）或“以太网”（win10）的网卡的mac地址
        /// </summary>
        /// <returns></returns>
        public static string GetLoaclMac()
        {
            string mac = string.Empty;
            NetworkInterface[] netWorks = NetworkInterface.GetAllNetworkInterfaces();
            Dictionary<string, string> macList = new Dictionary<string, string>();

            foreach (NetworkInterface netWork in netWorks)
            {
                if (netWork.NetworkInterfaceType == NetworkInterfaceType.Ethernet)
                {
                    macList.Add(netWork.Name, netWork.GetPhysicalAddress().ToString());
                }
            }

            if (macList.Count == 1)
            {
                foreach (KeyValuePair<string, string> item in macList)
                {
                    mac = item.Value;
                }
            }
            else if (macList.Count > 1)
            {
                foreach (KeyValuePair<string, string> item in macList)
                {
                    if (item.Key == "本地连接" || item.Key == "以太网")
                    {
                        mac = item.Value;
                    }
                }
            }

            return mac;
        }
        /// <summary>
        /// 检查注册码的有效性
        /// </summary>
        /// <param name="license"></param>
        /// <returns></returns>
        public static bool CheckLicense(string license)
        {
            bool result = false;
            string mac = string.Empty;
            NetworkInterface[] netWorks = NetworkInterface.GetAllNetworkInterfaces();
            foreach (NetworkInterface netWork in netWorks)
            {
                mac = netWork.GetPhysicalAddress().ToString();
                if (license == GenerateLicense(mac))
                {
                    result = true;
                    break;
                }
            }
            return result;
        }

        public static string GetBiosID()
        {
            ManagementObjectSearcher searcher = new ManagementObjectSearcher("select * from Win32_baseboard");
            string biosNumber = null;
            foreach (ManagementObject mgt in searcher.Get())
            {
                biosNumber = mgt["SerialNumber"].ToString();
            }
            return biosNumber;
        }
    }
}
