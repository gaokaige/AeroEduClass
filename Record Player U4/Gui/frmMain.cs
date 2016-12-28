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
        // ¼����Դ����
        Resource resource;
        public frmMain()
        {
            InitializeComponent();
            this.Width = 530;
            this.Height = 336;
            this.Text = "¼���������� �汾��1.1.1       ���������ƽ����Ƽ����޹�˾";
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
        /// ʹ�ø�����Ԥ��
        /// </summary>
        private void Prewiew()
        {
            audioName = "";// �����豸��¼��������
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

            //he messages received in SDK from DVR which need to upload�� such as alarm information��diary information��may do through callback function

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
                        strErr = string.Format("�������");//Passwd is Error
                        break;
                    case -11300:
                        strErr = string.Format("�û�δ��Ȩ");//The user has no permissions
                        break;
                    case -11302:
                        strErr = string.Format("�û�������");//The user does not exist
                        break;
                    case -11303:
                        strErr = string.Format("�û�������");//The user is locked
                        break;
                    case -11304:
                        strErr = string.Format("�������û�");//The user is in the blacklist
                        break;
                    case -11305:
                        strErr = string.Format("�û��ѵ�¼");//The user has landed
                        break;
                    case -11307:
                        strErr = string.Format("δ�����豸");// There is no equipment
                        break;
                    default:
                        {
                            strErr = string.Format("����ͷ��¼����:{0}", nError);//Login Error
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
                screenVideoPreviewerId = m_csAVFrm.startPreview(IntPtr.Zero, emAVDType.emDesk, 10, 300);//fps����10¼�Ƶ���Ƶ���Ȳ���ȷ
            }
            catch (Exception exc) { MessageBox.Show(exc.Message); }
        }
        bool isRecord = false;
        string savePath;// ¼���ļ��ı���Ŀ¼������Ŀ¼����
        // ¼��
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
                #region ����ɾ��
                // ��ʼ¼��------------------------
                //MinToIcon();
                #endregion
                nNetSenderId = m_csAVFrm.createNetSender("192.168.5.122", 8000, savePath);
                m_csAVFrm.addPreviewerToNetSender(nNetSenderId, screenVideoPreviewerId);
                m_csAVFrm.startNetSender(nNetSenderId);
                // ��С
                this.WindowState = FormWindowState.Minimized;
                isRecord = true;
                btnRecordControl.Image = Properties.Resources.stop;
                btnRecordControl.Tooltip = "ֹͣ¼��";
                btnPlay.Enabled = false;
                timer1.Start();
                // ��ʼ��ʱ
                t1 = DateTime.Now;
            }
        }
        private void PopWatingForm()
        {
            frmWating wating = new frmWating();
            wating.Show();
        }
        // ֹͣ¼��
        private void RecordStop()
        {
            //Record.StopRecord();
            m_csAVFrm.stopNetSender(nNetSenderId);
            t2 = DateTime.Now;
            if (isRecord)
            {
                lbRecordTime.Text = Convert.ToDateTime((t2 - t1).ToString()).ToString("HH:mm:ss");
                btnRecordControl.Image = Properties.Resources.start;
                btnRecordControl.Tooltip = "��ʼ¼��";
                btnPlay.Enabled = true;
                timer1.Stop();
            
                isRecord = false;
                string path = @"http://192.168.5.122/project/record/" + savePath;
                resource = new Resource();
                resource.Apptype = AppType.¼��;
                resource.FileType = "MP4";

                resource.FilePath = path + "/screen.mp4";
                AppInterface.CreateNewResource(resource);

                resource.FilePath = path + "/000.mp4";
                AppInterface.CreateNewResource(resource);


                resource.FilePath = path + "/001.mp4";
                AppInterface.CreateNewResource(resource);

                resource.FilePath = path + "/content.htm";
                AppInterface.CreateNewResource(resource);

                RLog.ToDB("ֹͣ¼��,��������Դ��" + path);
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
                DialogResult dr = MessageBox.Show("��ǰ¼�ƵĿμ�δ���棬�Ƿ񱣴���˳���", "��ʾ", MessageBoxButtons.YesNoCancel);
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
            ExitSDk();// ж��SDK
            CSAVFrameWork.uninitialize();
        }
        private void btnOpenDir_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://192.168.5.122/project/record");
        }
        private void TestNetConnect()// ¼��8000��ʵ��չ̨10001
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

                // Ϊ�˱��⹤���̱߳������������첽����ί��
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
                MessageBox.Show("�����������ʧ��");
            else
                MessageBox.Show("����������ӳɹ�");
        }
    }
}