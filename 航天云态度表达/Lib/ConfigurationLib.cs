using System.Configuration;
using System.Windows.Forms;

namespace 航天云态度表达.Lib
{
    public class ConfigurationLib
    {
        public static string fileName = System.IO.Path.GetFileName(Application.ExecutablePath);
        public static bool AddSetting(string key, string value)
        {
            Configuration config = System.Configuration.ConfigurationManager.OpenExeConfiguration(fileName);
            config.AppSettings.Settings.Add(key, value);
            config.Save();
            return true;
        }

        public static string GetSetting(string key)
        {
            Configuration config = System.Configuration.ConfigurationManager.OpenExeConfiguration(fileName);
            string value = config.AppSettings.Settings[key].Value;
            return value;
        }

        public static bool UpdateSetting(string key, string newValue)
        {
            Configuration config = System.Configuration.ConfigurationManager.OpenExeConfiguration(fileName);
            string value = config.AppSettings.Settings[key].Value = newValue;
            config.Save();
            return true;
        }
    }
}