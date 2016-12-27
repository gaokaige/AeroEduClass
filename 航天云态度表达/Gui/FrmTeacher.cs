using System;
using System.Drawing;
using System.Threading;
using System.Windows.Forms;
using 航天云态度表达.Lib;
using 航天云态度表达.UserControls;

namespace 航天云态度表达.Gui
{
    public partial class FrmTeacher : Form
    {
        AttitudeData aData;
        ReportData rData;
        DateTime startTime, realTime;
        FrmMenu frmMenu;
        MainLib mainLib;
        public FrmTeacher(FrmMenu _frmMenu)
        {
            InitializeComponent();
            frmMenu = _frmMenu;
            mainLib = new MainLib();
            aData = new AttitudeData();
            rData = new ReportData();
            rData.ClassID = Program.CLASSID;
            rData.OnlineTeacharID = Program.ONLINETEACHERID;
        }

        private void FrmTeacher_Load(object sender, EventArgs e)
        {
            realTimeChartLine1.AddData(aData);// 添加一个为0的点
        }

        public void DrawFlag()
        {
            realTimeChartLine1.DrawFlag();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            realTime = DateTime.Now;
            label5.Text = Convert.ToDateTime("00:00:00").AddSeconds((realTime - startTime).TotalSeconds).ToString("HH:mm:ss");
            mainLib.ReadData(ref rData, ref aData);
            realTimeChartLine1.AddData(aData);
        }

        private void SendDataToPlatform()
        {
            UploadData.SendTargetTeacherData(rData);
        }

        public void Start()
        {
            mainLib.Reset();

            rData.ClearKeyPress();
            rData.StartTime = mainLib.GetTimeStamp();
            rData.Date = DateTime.Now.ToString("yyyy-MM-dd");

            startTime = DateTime.Now;
            this.realTimeChartLine1.Start();
            label3.Text = startTime.ToString("yyyy-MM-dd HH:mm:ss");
            timer1.Interval = 1000;
            timer1.Start();
        }

        public void Stop()
        {
            timer1.Stop();
            realTimeChartLine1.Stop();

            rData.EndTime = mainLib.GetTimeStamp();
            rData.Duration = (DateTime.Now - startTime).TotalMinutes.ToString();
            // 使用前台线程上报评价数据明细；
            Thread thr = new Thread(new ThreadStart(SendDataToPlatform));
            thr.IsBackground = false;
            thr.Start();
        }

        private void dmButtonClose1_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        #region 拖动
        private Point mPoint = new Point();
        private void frmTeacher_MouseDown(object sender, MouseEventArgs e)
        {
            mPoint.X = e.X;
            mPoint.Y = e.Y;
        }

        private void frmTeacher_MouseMove(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                Point myPosittion = MousePosition;
                myPosittion.Offset(-mPoint.X, -mPoint.Y);
                this.Location = myPosittion;
            }
        }
        #endregion
    }
}
