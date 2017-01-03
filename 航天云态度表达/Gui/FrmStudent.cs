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
        MainLib mainLib;
        RunStatus runStatus;
        public bool pause;
        public FrmStudent(FrmMenu _frmMenu)
        {
            InitializeComponent();
            mainLib = new MainLib();
            runStatus = new RunStatus();
            runStatus.OnPause += runStatus_OnPause;
            runStatus.OnResume += runStatus_OnResume;
            runStatus.StartListen();
            aData = new AttitudeData();
            rData = new ReportData();
            rData.ClassID = Program.CLASSID;
            rData.OnlineTeacharID = Program.ONLINETEACHERID;

            frmMenu = _frmMenu;
            mainLib.Reset();

            mainLib.AddButtonStyle(btnStart, Resources.开始按钮, Resources.开始按钮, Resources.开始_按下);
            mainLib.AddButtonStyle(btnReset, Resources.删除, Resources.删除, Resources.关闭_选中);
        }

        void runStatus_OnResume()
        {
            pause = false;
        }

        void runStatus_OnPause()
        {
            pause = true;
        }

        private void FrmStudent_Load(object sender, EventArgs e)
        {
            //aData = new AttitudeData(1, 1, 1, 1);
            //realTimeCharPie1.AddData(aData);// 添加一个为0的点
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
            if (pause)
                return;
            if (start)
            {
                realTime = DateTime.Now;
                lbRealTime.Text = Convert.ToDateTime("00:00:00")
                    .AddSeconds((realTime - startTime).TotalSeconds).ToString("HH:mm:ss");
                mainLib.AddButtonStyle(btnStart, Resources.结束_默认, Resources.结束_默认, Resources.结束_按下);
                mainLib.ReadData(ref rData, ref aData);
                realTimeCharPie1.AddData(aData);
            }
            else
            {
                if (string.IsNullOrEmpty(lbStuName.Text) || lbStuName.Text == "学生姓名")
                {
                    btnStart.BackgroundImage = Resources.开始_不可选;
                    btnStart.Enabled = false;
                    stu = mainLib.GetStudent();
                    if (!string.IsNullOrEmpty(stu.Name))
                    {
                        lbStuName.Text = stu.Name;
                        lbStuNumber.Text = stu.Number;
                    }
                }
                else
                {
                    btnStart.BackgroundImage = Resources.开始按钮;
                    mainLib.AddButtonStyle(btnStart, Resources.开始按钮, Resources.开始按钮, Resources.开始_按下);
                    btnStart.Enabled = true;
                }
            }
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            lbStuNumber.Text = string.Empty;
            lbStuName.Text = string.Empty;
            mainLib.Reset();
        }

        public void Start()
        {
            if (pause)
            {
                MessageBox.Show("正在进行学生答题，不能使用该功能");
                return;
            }
            btnStart.BackgroundImage = Resources.结束评价;
            mainLib.AddButtonStyle(btnStart, Resources.结束_默认, Resources.结束_默认, Resources.结束_按下);

            rData.ClearKeyPress();
            realTimeCharPie1.Start();
            // 仅仅是为了能看到饼图
            aData = new AttitudeData(0, 0, 0, 0);
            realTimeCharPie1.AddData(aData);// 添加一个为0的点

            startTime = DateTime.Now;
            start = true;
            mainLib.Reset();
            mainLib.TimestampDic.Clear();

            rData.TargetStudentID = stu.Id;
            rData.StartTime = mainLib.GetTimeStamp();
            rData.Date = DateTime.Now.ToString("yyyy-MM-dd");

            realTimeCharPie1.Rotate = true;
            btnReset.Enabled = false;
        }

        public void Stop()
        {
            btnStart.BackgroundImage = Resources.开始按钮;
            mainLib.AddButtonStyle(btnStart, Resources.开始按钮, Resources.开始按钮, Resources.开始_按下);

            realTimeCharPie1.Rotate = start = false;
            btnReset.Enabled = true;

            rData.EndTime = mainLib.GetTimeStamp();
            rData.Duration = (DateTime.Now - startTime).TotalMinutes.ToString();


            Thread th = new Thread(new ThreadStart(Upload));
            th.IsBackground = true;
            th.Start();
        }

        private void Upload()
        {
            UploadData.SendTargetStudentData(rData);
            rData.ClearKeyPress();
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
                mainLib.AddButtonStyle(btnStart, Resources.开始按钮, Resources.开始按钮, Resources.开始_按下);
            }
            else
            {
                btnStart.BackgroundImage = Resources.开始_不可选;
                btnStart.Enabled = false;
            }
        }
    }
}
