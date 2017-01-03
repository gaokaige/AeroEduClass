using System;
using System.Collections.Generic;

namespace 航天云态度表达.Lib
{
    /// <summary>
    /// 生评生/生评师明细上报类
    /// </summary>
    public class ReportData
    {
        /// <summary>
        /// 班级ID
        /// </summary>
        public string ClassID { get; set; }
        /// <summary>
        /// 被评学生ID
        /// </summary>
        public string TargetStudentID { get; set; }
        /// <summary>
        /// 被评教师ID
        /// </summary>
        public string TargetTeachaerID { get; set; }
        /// <summary>
        /// 当前在线教师ID
        /// </summary>
        public string OnlineTeacharID { get; set; }
        /// <summary>
        /// 开始时间（时间戳）
        /// </summary>
        public string StartTime { get; set; }
        /// <summary>
        /// 结束时间（时间戳）
        /// </summary>
        public string EndTime { get; set; }
        /// <summary>
        /// 上课日期
        /// </summary>
        public string Date { get; set; }
        /// <summary>
        /// 统计所用时长(以分钟为单位)
        /// </summary>
        public string Duration { get; set; }
        /// <summary>
        /// 学生按键内容和时间
        /// </summary>
        public List<KeyPressInfo> KeyPressInfos { get; set; }

        public ReportData()
        {
            KeyPressInfos = new List<KeyPressInfo>();
        }

        public void AddKeyPress(KeyPressInfo data)
        {
            Date = DateTime.Now.ToString("yyyy-MM-dd");
            KeyPressInfos.Add(data);
        }
        /// <summary>
        /// 清空按键信息
        /// </summary>
        public void ClearKeyPress()
        {
            KeyPressInfos.Clear();
        }
    }
    /// <summary>
    /// 学生按键内容
    /// </summary>
    public class KeyPressInfo
    {
        public string ID;
        public string Key;
        public string Time;
    }
}