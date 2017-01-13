using System;

namespace 航天云态度表达.Lib
{
    public class AttitudeData
    {
        /// <summary>
        /// 点赞的数量
        /// </summary>
        public int PraiseCount;
        /// <summary>
        /// 反对的数量
        /// </summary>
        public int ObjectCount;
        /// <summary>
        /// 无聊的数量
        /// </summary>
        public int BoringCount;
        /// <summary>
        /// 困惑的数量
        /// </summary>
        public int PuzzleCount;

        public AttitudeData()
        {
            PraiseCount = 0;
            ObjectCount = 0;
            BoringCount = 0;
            PuzzleCount = 0;
        }

        public AttitudeData(int a, int b, int c, int d)
        {
            PraiseCount = a;
            ObjectCount = b;
            BoringCount = c;
            PuzzleCount = d;
        }

        public int Max()
        {
            return Math.Max(PraiseCount, Math.Max(ObjectCount, Math.Max(BoringCount, PuzzleCount)));
        }
    }

    public class Student
    {
        private string id;
        /// <summary>
        /// 学生ID
        /// </summary>
        public string Id
        {
            get { return id; }
            set { id = value; }
        }
        private string number;
        /// <summary>
        /// 学生学号
        /// </summary>
        public string Number
        {
            get { return number; }
            set { number = value; }
        }
        private string name;
        /// <summary>
        /// 学生姓名
        /// </summary>
        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public Student()
        {
            id = string.Empty;
            number = string.Empty;
            name = string.Empty;
        }
    }
}
