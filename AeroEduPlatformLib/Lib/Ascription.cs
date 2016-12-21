using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.IO;
using System.Net;
using System.Text;

namespace AeroEduPlatformLib.Lib
{
    public class Ascription
    {
        string province;

        public string Province
        {
            get { return province; }
            set { province = value; }
        }
        string provinceCode;

        public string ProvinceCode
        {
            get { return provinceCode; }
            set { provinceCode = value; }
        }
        string city;

        public string City
        {
            get { return city; }
            set { city = value; }
        }
        string cityCode;

        public string CityCode
        {
            get { return cityCode; }
            set { cityCode = value; }
        }
        string district;

        public string District
        {
            get { return district; }
            set { district = value; }
        }
        string districtCode;

        public string DistrictCode
        {
            get { return districtCode; }
            set { districtCode = value; }
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

        public Ascription()
        {
            province = string.Empty;
            provinceCode = string.Empty;
            city = string.Empty;
            cityCode = string.Empty;
            district = string.Empty;
            districtCode = string.Empty;
            school = string.Empty;
            classNo = string.Empty;
        }

        public static Ascription GetAscriptionFromServer(string server, string mac)//408D5CB16EA8
        {
            Ascription ap = null;
            try
            {
                HttpWebRequest webRequest = (HttpWebRequest)WebRequest.Create(server + mac);
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
                            ap.Province = jToken["provinceName"].ToString();
                            ap.ProvinceCode = jToken["provinceCode"].ToString();
                            ap.City = jToken["cityName"].ToString();
                            ap.CityCode = jToken["cityCode"].ToString();
                            ap.District = jToken["districtName"].ToString();
                            ap.DistrictCode = jToken["districtCode"].ToString();
                            ap.School = jToken["schoolName"].ToString();
                            ap.ClassNo = jToken["className"].ToString();
                        }
                    }
                }
            }
            catch (Exception exc) 
            {
                Log.WriteLog("归属查询错误:" + exc.Message, SystemType.Report.ToString()); 
            }
            return ap;
        }
    }
}
