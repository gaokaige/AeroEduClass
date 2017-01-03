using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Xml;

namespace AeroEduLib
{
    public class Setting
    {
        /// <summary>   
        /// 写入值   
        /// </summary>   
        /// <param name="key"></param>   
        /// <param name="value"></param>   
        public static void SetValue(string key, string value)
        {
            //增加的内容写在appSettings段下 <add key="RegCode" value="0"/>   
            System.Configuration.Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            if (config.AppSettings.Settings[key] == null)
            {
                config.AppSettings.Settings.Add(key, value);
            }
            else
            {
                config.AppSettings.Settings[key].Value = value;
            }
            config.Save(ConfigurationSaveMode.Modified);
            ConfigurationManager.RefreshSection("appSettings");//重新加载新的配置文件    
        }

        /// <summary>   
        /// 读取指定key的值   
        /// </summary>   
        /// <param name="key"></param>   
        /// <returns></returns>   
        public static string GetValue(string key)
        {
            System.Configuration.Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            if (config.AppSettings.Settings[key] == null)
                return "";
            else
                return config.AppSettings.Settings[key].Value;
        }

        public static string GetLicense()
        {
            string license = string.Empty;
            try
            {
                XmlDocument xd = new XmlDocument();
                xd.Load(System.AppDomain.CurrentDomain.BaseDirectory + "License.xml");
                license = xd.SelectSingleNode("/Config/License").InnerText;
                return license; 
            }
            catch { return license; }
        }

        public static void SetLicense(string license)
        {
            XmlDocument xd = new XmlDocument();
            try
            {
                xd.Load(System.AppDomain.CurrentDomain.BaseDirectory + "License.xml");
                xd.SelectSingleNode("/Config/License").InnerText = license;
                xd.Save(System.AppDomain.CurrentDomain.BaseDirectory + "License.xml");
            }
            catch
            { 
                
            }
        }
    }
}
