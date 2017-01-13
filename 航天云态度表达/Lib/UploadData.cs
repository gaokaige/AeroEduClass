using System;
using System.Collections.Generic;
using System.Text;

namespace 航天云态度表达.Lib
{
    public class UploadData
    {
        static MainLib mainLib = new MainLib();
        /// <summary>
        /// 每次上传学生按键信息的最大条数
        /// </summary>
        const int BATCHCOUNT = 10;
        /// <summary>
        /// 
        /// </summary>
        /// <param name="reportdata"></param>
        /// <param name="cursor"></param>
        /// <param name="batch"></param>
        /// <returns></returns>
        public static string ConvertToJson(ReportData reportdata, int cursor, int batch, JsonType jtype)
        {
            int i = 0;
            int total = 0;
            string keyPressInfoStr = string.Empty;

            if (batch >= reportdata.KeyPressInfos.Count - cursor)
                total = reportdata.KeyPressInfos.Count - cursor;
            else
                total = batch;

            while (i < total)
            {
                keyPressInfoStr += "{\"id\": \"" + reportdata.KeyPressInfos[i + cursor].ID + "\",\"key\": \"" + reportdata.KeyPressInfos[i + cursor].Key + "\",\"time\": \"" + reportdata.KeyPressInfos[i + cursor].Time + "\"},";
                i++;
            }

            keyPressInfoStr = keyPressInfoStr.TrimEnd(',');
            
            string json;

            json = "{inClassInfo :"
            + "{\"Date\":\"" + reportdata.Date + "\",\"duration\":\"" + reportdata.Duration + "\"},stuArray:["
            + keyPressInfoStr;

            if (jtype == JsonType.Student)
            {
                json+="],\"passiveStuId\": \"" + reportdata.TargetStudentID +"\",";
            }
            if (jtype == JsonType.Teacher)
            {
                json+="],\"passiveTeaId\": \"" + reportdata.TargetTeachaerID + "\",";
            }
            
            json+= "\"onlineTeaId\":\"" + reportdata.OnlineTeacharID + "\",\"classId\": \"" + reportdata.ClassID + "\",\"startTime\": \"" + reportdata.StartTime + "\",\"endTime\": \"" + reportdata.EndTime + "\"}";
            Log.ToFile("total=" + total + "|||JSON=" + json);
            return json;
        }

        public static void SendTargetStudentData(ReportData rData)
        {
            Log.ToFile("开始上传学生评价,条数：" + rData.KeyPressInfos.Count);
            SendData(rData, Program.StudentDataServer, JsonType.Student);
        }

        public static void SendTargetTeacherData(ReportData rData)
        {
            Log.ToFile("开始上传教师评价,条数：" + rData.KeyPressInfos.Count);
            SendData(rData, Program.TeachaerDataServer, JsonType.Student);
        }

        private static void SendData(ReportData rData, string url, JsonType jtype)
        {
            int cursor = 0;
            string json;
            // 数据量较大时循环上报
            while (cursor < rData.KeyPressInfos.Count)
            {
                json = ConvertToJson(rData, cursor, BATCHCOUNT, jtype);
                mainLib.HttpPostData(url, json);
                cursor += BATCHCOUNT;
            }
        }
    }

    public enum JsonType
    { 
        Teacher,
        Student
    }
}