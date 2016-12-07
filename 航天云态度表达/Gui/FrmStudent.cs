using System;
using System.Drawing;
using System.Threading;
using System.Windows.Forms;
using 航天云态度表达.Lib;
using 航天云态度表达.Properties;

namespace 航天云态度表达.Gui
{
    public partial class FrmStudent : Form
    {
        AttitudeData aData;
        ReportData rData;
        DateTime startTime, realTime;
        Boolean start = false;
        FrmMenu frmMenu;
        Student stu;

        public FrmStudent(FrmMenu _frmMenu)
        {
            InitializeComponent();
           
            aData = new AttitudeData();

            rData = new ReportData();
            rData.ClassID = Program.CLASSID;
            rData.OnlineTeacharID = Program.ONLINETEACHERID;
            
            frmMenu = _frmMenu;
            MainLib.Reset();

            MainLib.AddButtonStyle(btnStart, Resources.开始按钮, Resources.开始按钮, Resources.开始_按下);
            MainLib.AddButtonStyle(btnReset, Resources.删除, Resources.删除, Resources.关闭_选中);
        }

        private void FrmStudent_Load(object sender, EventArgs e)
        {
            aData = new AttitudeData(1, 1, 1, 1);
            realTimeCharPie1.AddData(aData);// 添加一个为0的点
            timer1.Interval = 1000;
            timer1.Start();
        }

        private void btnStart_Click(object sender, EventArgs e)
        {
            if (!start)
            {
                Start();
            }
            else
            {
                Stop();
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (start)
            {
                realTime = DateTime.Now;
                lbRealTime.Text = Convert.ToDateTime("00:00:00")
                    .AddSeconds((realTime - startTime).TotalSeconds).ToString("HH:mm:ss");
                MainLib.AddButtonStyle(btnStart, Resources.结束_默认, Resources.结束_默认, Resources.结束_按下);
                MainLib.ReadData(ref rData, ref aData);
                realTimeCharPie1.AddData(aData);
            }
            else
            {
                if (string.IsNullOrEmpty(lbStuName.Text) || lbStuName.Text == "学生姓名")
                {
                    btnStart.BackgroundImage = Resources.开始_不可选;
                    btnStart.Enabled = false;
                }
                else
                {
                    btnStart.BackgroundImage = Resources.开始按钮;
                    MainLib.AddButtonStyle(btnStart, Resources.开始按钮, Resources.开始按钮, Resources.开始_按下);
                    btnStart.Enabled = true;
                }
                stu = MainLib.GetStudent();
                if (!string.IsNullOrEmpty(stu.Name))
                {
                    lbStuName.Text = stu.Name;
                    lbStuNumber.Text = stu.Number;
                }
            }
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            lbStuNumber.Text = string.Empty;
            lbStuName.Text = string.Empty;
            MainLib.Reset();
        }

        public void Start()
        {
            btnStart.BackgroundImage = Resources.结束评价;
            MainLib.AddButtonStyle(btnStart, Resources.结束_默认, Resources.结束_默认, Resources.结束_按下);

            this.realTimeCharPie1.Start();
            aData = new AttitudeData(1, 1, 1, 1);
            realTimeCharPie1.AddData(aData);// 添加一个为0的点

            startTime = DateTime.Now;
            start = true;
            MainLib.Reset();
            rData.TargetStudentID = stu.Id;
            rData.StartTime = MainLib.GetTimeStamp();
            rData.Date = DateTime.Now.ToString("yyyy-MM-dd");

            realTimeCharPie1.Rotate = true;
            btnReset.Enabled = false;
        }

        public void Stop()
        {
            btnStart.BackgroundImage = Resources.开始按钮;
            MainLib.AddButtonStyle(btnStart, Resources.开始按钮, Resources.开始按钮, Resources.开始_按下);

            realTimeCharPie1.Rotate = start = false;
            btnReset.Enabled = true;

            rData.EndTime = MainLib.GetTimeStamp();
            rData.Duration = (DateTime.Now - startTime).TotalMinutes.ToString();

           
            Thread th = new Thread(new ThreadStart(Upload));
            th.IsBackground = true;
            th.Start();
        }

        private void Upload()
        {
            UploadData.SendTargetStudentData(rData);
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnMin_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void FrmStudent_FormClosing(object sender, FormClosingEventArgs e)
        {
            frmMenu.S2SStop();
            timer1.Stop();
        }

        #region 拖动
        private Point mPoint = new Point();
        private void FrmStudent_MouseDown(object sender, MouseEventArgs e)
        {
            mPoint.X = e.X;
            mPoint.Y = e.Y;
        }

        private void FrmStudent_MouseMove(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                Point myPosittion = MousePosition;
                myPosittion.Offset(-mPoint.X, -mPoint.Y);
                this.Location = myPosittion;
            }
        }
        #endregion

        private void lbStuName_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(lbStuName.Text) && lbStuName.Text != "学生姓名")
            {
                btnStart.BackgroundImage = Resources.开始按钮;
                btnStart.Enabled = true;
                MainLib.AddButtonStyle(btnStart, Resources.开始按钮, Resources.开始按钮, Resources.开始_按下);
            }
            else
            {
                btnStart.BackgroundImage = Resources.开始_不可选;
                btnStart.Enabled = false;
            }
        }
    }
}
