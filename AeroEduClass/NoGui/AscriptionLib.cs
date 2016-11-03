using AeroEduLib;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.IO;
using System.Net;
using System.Text;
using System.Xml;

namespace AeroEduClass.NoGui
{
    public class AscriptionLib
    {
        Config config;
        public AscriptionLib()
        {
            try
            {
                config = new Config();
            }
            catch (Exception exc) { ALog.ToDB(exc.Message); }
        }
        internal Ascription GetAscription()
        {
            // 取本机mac地址
            string mac = GetSystemInfo.GetLoaclMac();
            // 先从云端获取
            Ascription asc = GetAscriptionFromServer(mac);
            if (asc == null)
            {
                // 如果云端未获取到从本地获取
                XmlDocument xd = new XmlDocument();
                asc = new Ascription();
                try
                {
                    xd.Load(config.AscriptionFilePath);

                    asc.Province = ReadAeroEduPlatformValue(xd, "provinceName");
                    asc.City = ReadAeroEduPlatformValue(xd, "cityName");
                    asc.District = ReadAeroEduPlatformValue(xd, "districtName");
                    asc.School = ReadAeroEduPlatformValue(xd, "schoolName");
                    asc.ClassNo = ReadAeroEduPlatformValue(xd, "ClassName");
                    asc.IactiveUsername = "";
                    asc.IactivePwd = "";
                }
                catch (Exception exc) { ALog.ToDB(exc.Message); }
            }
            return asc;
        }

        string ReadAeroEduPlatformValue(XmlDocument xd, string key)
        {
            string value = string.Empty;
            XmlNodeList xl = xd.SelectNodes("configuration/appSettings/add");
            foreach (XmlNode xn in xl)
            {
                if (key == ((XmlElement)xn).GetAttribute("key").ToString())
                {
                    value = ((XmlElement)xn).GetAttribute("value").ToString();
                    break;
                }
            }
            return value;
        }

        internal Ascription GetAscriptionFromServer(string mac)//408D5CB16EA8
        {
            Ascription ap = null;
            try
            {
                HttpWebRequest webRequest = (HttpWebRequest)WebRequest.Create(config.AscriptionServer + mac);
                webRequest.Timeout = 3000;
                webRequest.Method = "GET";
                HttpWebResponse webResponse = (HttpWebResponse)webRequest.GetResponse();
                StreamReader sr = new StreamReader(webResponse.GetResponseStream(), Encoding.GetEncoding("utf-8"));
                string result = sr.ReadToEnd();
                if (!string.IsNullOrEmpty(result))
                {
                    JObject jo = (JObject)JsonConvert.DeserializeObject(result);
                    JToken jToken;
                    if (jo.TryGetValue("map", out jToken))
                    {
                        if (jToken.HasValues)
                        {
                            ap = new Ascription();
                            ap.IactiveUsername = jToken["luser"].ToString();
                            ap.IactivePwd = jToken["lpasswd"].ToString();
                            ap.Province = jToken["provinceName"].ToString();
                            ap.City = jToken["cityName"].ToString();
                            ap.District = jToken["districtName"].ToString();
                            ap.School = jToken["schoolName"].ToString();
                            ap.ClassNo = jToken["className"].ToString();
                        }
                    }
                }
            }
            catch (Exception exc) { ALog.ToDB("归属查询错误:" + exc.Message); }
            return ap;
        }
    }
    public class Ascription
    {
        string province;

        public string Province
        {
            get { return province; }
            set { province = value; }
        }
        string city;

        public string City
        {
            get { return city; }
            set { city = value; }
        }
        string district;

        public string District
        {
            get { return district; }
            set { district = value; }
        }
        string school;

        public string School
        {
            get { return school; }
            set { school = value; }
        }
        string classNo;

        public string ClassNo
        {
            get { return classNo; }
            set { classNo = value; }
        }
        string iactiveUsername;

        public string IactiveUsername
        {
            get { return iactiveUsername; }
            set { iactiveUsername = value; }
        }
        private string iactivePwd;

        public string IactivePwd
        {
            get { return iactivePwd; }
            set { iactivePwd = value; }
        }
        public Ascription()
        {
            province = string.Empty;
            city = string.Empty;
            district = string.Empty;
            school = string.Empty;
            classNo = string.Empty;
            iactiveUsername = string.Empty;
            iactivePwd = string.Empty;
        }
    }
}
