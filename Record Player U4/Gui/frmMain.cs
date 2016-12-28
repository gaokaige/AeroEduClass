using AeroEduLib;
using cs_framework;
using lubo2012.Gui;
using lubo2012.Lib;
using System;
using System.Drawing;
using System.IO;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading;
using System.Windows.Forms;

namespace lubo2012
{
    public partial class frmMain : DevComponents.DotNetBar.RibbonForm
    {
        private CSAVFrameWork m_csAVFrm = new CSAVFrameWork();
        int nNetSenderId;
        DateTime t1, t2;
        // 录制资源对象
        Resource resource;
        public frmMain()
        {
            InitializeComponent();
            this.Width = 530;
            this.Height = 336;
            this.Text = "录播软件网络版 版本：1.1.1       北京航天云教育科技有限公司";
            OnTestNetConnectEvent += frmMain_OnTestNetConnectEvent;
        }
        private void frmMain_Load(object sender, EventArgs e)
        {
            Init();
            Thread th = new Thread(TestNetConnect);
            th.IsBackground = true;
            th.Start();
        }
        private void Init()
        {
            CSAVFrameWork.initialize();
            InitSDK();
            Prewiew();
        }
        /// <summary>
        /// 使用副码流预览
        /// </summary>
        private void Prewiew()
        {
            audioName = "";// 试音设备，录制桌面用
            StuPreviewer();
            TeaPreviewer();
            ScreenPreviewer();
        }
        string ipStu = "192.168.5.5", ipTea = "192.168.5.4";
        ushort port = 34567;
        string username = "admin", password = "";

        private void StuPreviewer()
        {
            RealPlay(ipStu, port, username, password, plStudent.Handle);
        }
        private void TeaPreviewer()
        {
            RealPlay(ipTea, port, username, password, plTeacher.Handle);
        }
        private XMSDK.fDisConnect disCallback;
        public int InitSDK()
        {
            //initialize
            disCallback = new XMSDK.fDisConnect(DisConnectBackCallFunc);
            GC.KeepAlive(disCallback);
            int bResult = XMSDK.H264_DVR_Init(disCallback, this.Handle);

            //he messages received in SDK from DVR which need to upload， such as alarm information，diary information，may do through callback function

            //XMSDK.H264_DVR_SetDVRMessCallBack(msgcallback, this.Handle);

            XMSDK.H264_DVR_SetConnectTime(2000, 2);

            return bResult;
        }

        public bool ExitSDk()
        {
            return XMSDK.H264_DVR_Cleanup();
        }

        private void DisConnectBackCallFunc(int lLoginID, string pchDVRIP, int nDVRPort, IntPtr dwUser)
        {

            XMSDK.H264_DVR_StopRealPlay(lLoginID, (uint)this.Handle);
            XMSDK.H264_DVR_Logout(lLoginID);
        }
        int nLoginID;
        private void RealPlay(string ip, ushort port, string username, string password, IntPtr hWnd)
        {
            H264_DVR_DEVICEINFO dvrdevInfo = new H264_DVR_DEVICEINFO();
            int nError;
            nLoginID = XMSDK.H264_DVR_Login(ip, port, username, password, out dvrdevInfo, out nError, SocketStyle.TCPSOCKET);
            if (nLoginID > 0)
            {
                H264_DVR_CLIENTINFO playstru = new H264_DVR_CLIENTINFO();
                playstru.nChannel = 0;
                playstru.nStream = 0;
                playstru.nMode = 0;
                playstru.hWnd = hWnd;
                int m_iPlayhandle = XMSDK.H264_DVR_RealPlay(nLoginID, ref playstru);
            }
            else
            {
                string strErr;
                switch (nError)
                {
                    case -11301:
                        strErr = string.Format("密码错误");//Passwd is Error
                        break;
                    case -11300:
                        strErr = string.Format("用户未授权");//The user has no permissions
                        break;
                    case -11302:
                        strErr = string.Format("用户不存在");//The user does not exist
                        break;
                    case -11303:
                        strErr = string.Format("用户被锁定");//The user is locked
                        break;
                    case -11304:
                        strErr = string.Format("黑名单用户");//The user is in the blacklist
                        break;
                    case -11305:
                        strErr = string.Format("用户已登录");//The user has landed
                        break;
                    case -11307:
                        strErr = string.Format("未发现设备");// There is no equipment
                        break;
                    default:
                        {
                            strErr = string.Format("摄像头登录错误:{0}", nError);//Login Error
                        }
                        break;
                }
                MessageBox.Show(strErr);
            }
        }

        int screenAudioPreviewerId, screenVideoPreviewerId;
        string audioName = "";
        private void ScreenPreviewer()
        {
            try
            {
                screenAudioPreviewerId = m_csAVFrm.startPreview(IntPtr.Zero, emAVDType.emUSBMicroPhone, audioName);
                screenVideoPreviewerId = m_csAVFrm.startPreview(IntPtr.Zero, emAVDType.emDesk, 10, 300);//fps超过10录制的视频长度不正确
            }
            catch (Exception exc) { MessageBox.Show(exc.Message); }
        }
        bool isRecord = false;
        string savePath;// 录像文件的保存目录名（仅目录名）
        // 录制
        private void btnRecordControl_Click(object sender, EventArgs e)
        {
            if (isRecord)
            {
                RecordStop();
            }
            else
            {
                PopWatingForm();

                //Thread th = new Thread(PopWatingForm);
                //th.Start();

                savePath = DateTime.Now.ToString("yyyyMMddHHmmss");
                #region 即将删除
                // 开始录制------------------------
                //MinToIcon();
                #endregion
                nNetSenderId = m_csAVFrm.createNetSender("192.168.5.122", 8000, savePath);
                m_csAVFrm.addPreviewerToNetSender(nNetSenderId, screenVideoPreviewerId);
                m_csAVFrm.startNetSender(nNetSenderId);
                // 缩小
                this.WindowState = FormWindowState.Minimized;
                isRecord = true;
                btnRecordControl.Image = Properties.Resources.stop;
                btnRecordControl.Tooltip = "停止录制";
                btnPlay.Enabled = false;
                timer1.Start();
                // 开始计时
                t1 = DateTime.Now;
            }
        }
        private void PopWatingForm()
        {
            frmWating wating = new frmWating();
            wating.Show();
        }
        // 停止录制
        private void RecordStop()
        {
            //Record.StopRecord();
            m_csAVFrm.stopNetSender(nNetSenderId);
            t2 = DateTime.Now;
            if (isRecord)
            {
                lbRecordTime.Text = Convert.ToDateTime((t2 - t1).ToString()).ToString("HH:mm:ss");
                btnRecordControl.Image = Properties.Resources.start;
                btnRecordControl.Tooltip = "开始录制";
                btnPlay.Enabled = true;
                timer1.Stop();
            
                isRecord = false;
                string path = @"http://192.168.5.122/project/record/" + savePath;
                resource = new Resource();
                resource.Apptype = AppType.录播;
                resource.FileType = "MP4";

                resource.FilePath = path + "/screen.mp4";
                AppInterface.CreateNewResource(resource);

                resource.FilePath = path + "/000.mp4";
                AppInterface.CreateNewResource(resource);


                resource.FilePath = path + "/001.mp4";
                AppInterface.CreateNewResource(resource);

                resource.FilePath = path + "/content.htm";
                AppInterface.CreateNewResource(resource);

                RLog.ToDB("停止录像,生成新资源：" + path);
            }
        }
        private void btnExit_Click(object sender, EventArgs e)
        {
            //RecordStop();
            this.Dispose(true);
            Application.Exit();
        }
        private void btnPlay_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("iexplore.exe", string.Format("http://192.168.5.122/project/record/{0}/content.htm", savePath));
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            t2 = DateTime.Now;
            lbRecordTime.Text = Convert.ToDateTime((t2 - t1).ToString()).ToString("HH:mm:ss");
        }
        private void frmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (isRecord)
            {
                DialogResult dr = MessageBox.Show("当前录制的课件未保存，是否保存后退出？", "提示", MessageBoxButtons.YesNoCancel);
                if (dr == DialogResult.Yes)
                {
                    btnExit_Click(null, null);
                }
                else if (dr == DialogResult.No)
                {
                    this.Dispose(true);
                    Application.Exit();
                }
                else if (dr == DialogResult.Cancel)
                {
                    e.Cancel = true;
                    return;
                }
            }
            ExitSDk();// 卸载SDK
            CSAVFrameWork.uninitialize();
        }
        private void btnOpenDir_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://192.168.5.122/project/record");
        }
        private void TestNetConnect()// 录播8000，实物展台10001
        {
            bool pingServer = false;
            Ping ping = new Ping();
            string data = "ceshi ceshi";
            PingOptions poptions = new PingOptions();
            poptions.DontFragment = true;
            Byte[] buffer = Encoding.ASCII.GetBytes(data);

            PingReply pingReply = null;

            while (true)
            {
                try
                {
                    pingReply = ping.Send("192.168.5.122", 1000, buffer, poptions);
                    if (pingReply.Status == IPStatus.Success)
                        pingServer = true;
                    else
                        pingServer = false;
                }
                catch { pingServer = false; }

                if (pingServer)
                    OnTestNetConnectEvent(true);
                else
                    OnTestNetConnectEvent(false);
                Thread.Sleep(5000);
            }
        }
        private delegate void TestNetConnectHandle(bool b);
        private event TestNetConnectHandle OnTestNetConnectEvent;
        private void frmMain_OnTestNetConnectEvent(bool b)
        {
            if (plStatus.InvokeRequired)
            {
                TestNetConnectHandle dl = new TestNetConnectHandle(frmMain_OnTestNetConnectEvent);

                // 为了避免工作线程被阻塞，采用异步调用委托
                this.BeginInvoke(dl, new object[] { b });
            }
            else
            {
                if (!b) { plStatus.BackColor = Color.Red; }
                else { plStatus.BackColor = Color.Green; }
            }
        }
        private void plStatus_DoubleClick(object sender, EventArgs e)
        {
            if (plStatus.BackColor == Color.Red)
                MessageBox.Show("与服务器连接失败");
            else
                MessageBox.Show("与服务器连接成功");
        }
    }
}