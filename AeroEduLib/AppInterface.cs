using Newtonsoft.Json.Linq;
using System;
using System.Net;
using System.Text;

namespace AeroEduLib
{
    public class AppInterface
    {
        private static string url = TypeDefinition.LocalServer;

        public static void CreateNewResource(Resource resource)
        {
            JObject jo = new JObject();
            jo.Add("index",  ((int)MethodType.CreateNewResource).ToString());
            jo.Add("fileType", resource.File.Extension.Replace(".", "").ToUpper());
            jo.Add("appType", ((int)resource.Apptype).ToString());
            jo.Add("filePath", resource.File.FullName);
            jo.Add("fileLength", resource.File.Length.ToString());
            string timeFormat = "yyyy-MM-dd HH:mm:ss";
            jo.Add("createTime", resource.File.CreationTime.ToString(timeFormat));

            string postString = "body=" + jo.ToString();//这里即为传递的参数，可以用工具抓包分析，也可以自己分析，主要是form里面每一个name都要加进来  
            byte[] postData = Encoding.UTF8.GetBytes(postString);//编码，尤其是汉字，事先要看下抓取网页的编码方式  
            PostData(url, postData);
        }
        public static void CreateNewResourceU4(Resource resource)
        {
            JObject jo = new JObject();
            jo.Add("index", ((int)MethodType.CreateNewResource).ToString());
            jo.Add("fileType", resource.FileType);
            jo.Add("appType", ((int)resource.Apptype).ToString());
            jo.Add("filePath", resource.FilePath);
            jo.Add("createTime", resource.CreateTime);

            string postString = "body=" + jo.ToString();//这里即为传递的参数，可以用工具抓包分析，也可以自己分析，主要是form里面每一个name都要加进来  
            byte[] postData = Encoding.UTF8.GetBytes(postString);//编码，尤其是汉字，事先要看下抓取网页的编码方式 
            PostData(url, postData);
        }
        public static string PostData(string url, byte[] data)
        {
            string srcString = string.Empty;
            WebClient webClient = new WebClient();
            webClient.Headers.Add("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");//采取POST方式必须加的header，如果改为GET方式的话就去掉这句话即可
            try
            {
                byte[] responseData = webClient.UploadData(url, "POST", data);//得到返回字符流  
                srcString = Encoding.UTF8.GetString(responseData);//解码
            }
            catch(Exception exc)
            {
                Log.ToFile(string.Format("post error:{0} \r\nurl[{1}]", exc.Message, url));
            }
            return srcString;
        }
    }
}
