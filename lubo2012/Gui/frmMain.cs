using AeroEduLib;
using cs_framework;
using lubo2012.NoGui;
using System;
using System.IO;
using System.Windows.Forms;
using System.Xml;

namespace lubo2012
{
    public partial class frmMain : DevComponents.DotNetBar.RibbonForm
    {
        #region 变量定义
        private MenuItem stopRecord = new MenuItem("停止录制");
        private MenuItem exitMenu = new MenuItem("退出");

        private CSAVFrameWork m_csAVFrm = new CSAVFrameWork();

        DateTime t1, t2;
        /// <summary>
        /// rtsp源
        /// </summary>
        string rtspTeaCam, rtspStuCam;
        /// <summary>
        /// 视频保存根目录
        /// </summary>
        string videoFileSavePath;
        /// <summary>
        /// 视频文件路径
        /// </summary>
        string stuVideoFileName, teaVideoFileName, screenVideoFileName;
        /// <summary>
        /// 播放资源的页面
        /// </summary>
        string palyPage;
        /// <summary>
        /// 声音预览id
        /// </summary>
        int stuAudioPreviewerId, teaAudioPreviewerId, screenAudioPreviewerId;
        /// <summary>
        /// 视频预览id
        /// </summary>
        int stuVideoPreviewerId, teaVideoPreviewerId, screenVideoPreviewerId;
        /// <summary>
        /// 是否有声音输入
        /// </summary>
        bool stuAudioInput, teaAudioInput, scrAudioInput;
        /// <summary>
        /// rtsp预览id
        /// </summary>
        int stuRtspRecorderId = 0, teaRtspRecorderId = 0, screenRecorderId = 0;
        string timespan;
        /// <summary>
        /// 默认声音设备名称
        /// </summary>
        string audioName;
        /// <summary>
        /// 保存文件父文件夹
        /// </summary>
        string packName;
        /// <summary>
        /// 是否在录制
        /// </summary>
        bool isRecord = false;
        /// <summary>
        /// 屏幕码率
        /// </summary>
        int scrFrameRate = 300;
        /// <summary>
        /// 声音输入的路数
        /// </summary>
        int audioInputCount = 0;
        /// <summary>
        /// 视频输入的路数
        /// </summary>
        int videoInputCount = 0;

        /// <summary>
        /// 录播资源对象
        /// </summary>
        Resource resource;
        #endregion

        public frmMain()
        {
            InitializeComponent();
            // 有时长宽会变化，这里固定死
            this.Width = 523;
            this.Height = 328;
            //----------------------
            sbRecordScreen.Enabled = true;

            this.stopRecord.Click += new EventHandler(stopRecordDlgMenu_Click);
            this.exitMenu.Click += new EventHandler(exitMenu_Click);

            this.notifyIcon1.ContextMenu = new System.Windows.Forms.ContextMenu();
            this.notifyIcon1.ContextMenu.MenuItems.Add(this.stopRecord);
            this.notifyIcon1.ContextMenu.MenuItems.Add(this.exitMenu);
            notifyIcon1.Visible = false;

            string split = "       ";
            labelX1.Text = "学生画面";
            labelX2.Text = "教师画面";

            LoadConfig(); //*****读取参数*****
            GetAudioInputCount();
            this.Text = "常态录播" + split + "北京航天云教育科技有限公司" + split + "版本：2.0.0";
            if (!Directory.Exists(videoFileSavePath))
                Directory.CreateDirectory(videoFileSavePath);
        }
        private void frmMain_Load(object sender, EventArgs e)
        {
            Init();
        }
        private void Init()
        {
            // 初始化
            if (!CSAVFrameWork.initialize())
            {
                MessageBox.Show("初始化失败!");//avframework库初始化失败!
                return;
            }
            // 获取
            GetVideoInputCount();
            GetAudioInputCount();
            // 默认录音设备配置
            audioName = CSAVFrameWork.getAudioDefaultInputDeviceName();
            // 开始预览
            StuPreviewer();
            TeaPreviewer();
            ScreenPreviewer();
        }
        #region 预览
        private void StuPreviewer()
        {
            try
            {
                stuAudioPreviewerId = m_csAVFrm.startPreview(IntPtr.Zero, emAVDType.emUSBMicroPhone, audioName);
                stuVideoPreviewerId = m_csAVFrm.startPreview(plStudent.Handle, emAVDType.emRtsp, rtspStuCam);
            }
            catch { MessageBox.Show("学生预览画面加载失败"); }
        }
        private void TeaPreviewer()
        {
            try
            {
                teaAudioPreviewerId = m_csAVFrm.startPreview(IntPtr.Zero, emAVDType.emUSBMicroPhone, audioName);
                teaVideoPreviewerId = m_csAVFrm.startPreview(plTeacher.Handle, emAVDType.emRtsp, rtspTeaCam);
            }
            catch { MessageBox.Show("教师预览画面加载失败"); }
        }
        private void ScreenPreviewer()
        {
            try
            {
                screenAudioPreviewerId = m_csAVFrm.startPreview(IntPtr.Zero, emAVDType.emUSBMicroPhone, audioName);
                screenVideoPreviewerId = m_csAVFrm.startPreview(IntPtr.Zero, emAVDType.emDesk, 10, 300);//fps超过10录制的视频长度不正确
            }
            catch { MessageBox.Show("屏幕预览画面加载失败"); }
        }
        #endregion
        // 录像/停止
        private void btnRecordControl_Click(object sender, EventArgs e)
        {
            if (isRecord)
            {

                RecordStop();
            }
            else
            {
                RLog.ToDB("开始录像");
                SetConfig();//保存配置
                timespan = DateTime.Now.ToString("yyyy-MM-dd HH-mm-ss");
                packName = videoFileSavePath + "\\" + timespan;
                stuVideoFileName = packName + "\\学生.mp4";
                teaVideoFileName = packName + "\\教师.mp4";
                screenVideoFileName = packName + "\\屏幕.mp4";
                palyPage = packName + "\\Play.htm";

                resource = new Resource()
                {
                    PackName = packName,
                };

                if (!Directory.Exists(packName))
                    Directory.CreateDirectory(packName);

                this.WindowState = FormWindowState.Minimized;

                try
                {
                    #region 创建教师录像器
                    try
                    {
                        if (sbRecordTea.Value && teaVideoPreviewerId > 0)
                        {
                            teaRtspRecorderId = m_csAVFrm.createMp4Recorder(teaVideoFileName);
                            if (teaRtspRecorderId <= 0)
                            {
                                throw new Exception("创建教师录像器失败");
                            }
                            if (sbTeaAudioInput.Value)
                            {
                                if (!m_csAVFrm.addPreviewerToRecorder(teaRtspRecorderId, teaAudioPreviewerId))
                                {
                                    throw new Exception("教师录像器添加录像音频设备失败");
                                }
                            }
                            if (!m_csAVFrm.addPreviewerToRecorder(teaRtspRecorderId, teaVideoPreviewerId))
                            {
                                m_csAVFrm.removePreviewerForRecorder(teaRtspRecorderId, teaVideoPreviewerId);
                                throw new Exception("教师录像器添加录像视频设备失败");
                            }
                        }
                    }
                    catch { MessageBox.Show("教师摄像头故障！"); }
                    #endregion

                    #region 创建学生录像器
                    try
                    {
                        if (sbRecordStu.Value && stuVideoPreviewerId > 0)
                        {
                            stuRtspRecorderId = m_csAVFrm.createMp4Recorder(stuVideoFileName);
                            if (stuRtspRecorderId <= 0)
                            {
                                throw new Exception("创建学生录像器失败");
                            }
                            if (sbStuAudioInput.Value)
                            {
                                if (!m_csAVFrm.addPreviewerToRecorder(stuRtspRecorderId, stuAudioPreviewerId))
                                {
                                    throw new Exception("学生录像器添加录像音频设备失败");
                                }
                            }
                            if (!m_csAVFrm.addPreviewerToRecorder(stuRtspRecorderId, stuVideoPreviewerId))
                            {
                                m_csAVFrm.removePreviewerForRecorder(stuRtspRecorderId, stuVideoPreviewerId);
                                throw new Exception("学生录像器添加录像视频设备失败");
                            }
                        }
                    }
                    catch { MessageBox.Show("学生摄像头故障！"); }
                    #endregion

                    #region 创建屏幕录像器
                    try
                    {
                        if (sbRecordScreen.Value && screenVideoPreviewerId > 0)
                        {
                            screenRecorderId = m_csAVFrm.createMp4Recorder(screenVideoFileName);
                            if (screenRecorderId <= 0)
                            {
                                throw new Exception("创建屏幕录像器失败");
                            }
                            if (sbScrAudioInput.Value)
                            {
                                if (!m_csAVFrm.addPreviewerToRecorder(screenRecorderId, screenAudioPreviewerId))
                                {
                                    throw new Exception("屏幕录像器添加录像音频设备失败");
                                }
                            }
                            if (!m_csAVFrm.addPreviewerToRecorder(screenRecorderId, screenVideoPreviewerId))
                            {
                                throw new Exception("屏幕录像器添加录像视频设备失败");
                            }
                        }
                    }
                    catch { MessageBox.Show("桌面录制故障！"); }
                    #endregion

                    // 启动
                    t1 = DateTime.Now;

                    #region 启动教师录像器
                    if (sbRecordTea.Value && teaVideoPreviewerId > 0)
                    {
                        if (!m_csAVFrm.startRecordMp4(teaRtspRecorderId))
                        {
                            throw new Exception("启动教师录像失败");
                        }
                    }
                    #endregion

                    #region 启动学生录像器
                    if (sbRecordStu.Value && stuVideoPreviewerId > 0)
                    {
                        if (!m_csAVFrm.startRecordMp4(stuRtspRecorderId))
                        {
                            throw new Exception("启动学生录像失败");
                        }
                    }
                    #endregion

                    #region 启动屏幕录像器
                    if (sbRecordScreen.Value && screenVideoPreviewerId > 0)
                    {
                        if (!m_csAVFrm.startRecordMp4(screenRecorderId))
                        {
                            throw new Exception("启动屏幕录像失败");
                        }
                    }
                    #endregion

                    isRecord = true;
                    btnRecordControl.Image = Properties.Resources.stop1;
                    btnRecordControl.Tooltip = "停止录制";
                    btnRecordControl.Text = "停止录制";
                    btnPlay.Enabled = false;
                    rbiParameterControl.Enabled = false;
                    timer1.Start();
                }
                catch (Exception exc)
                {
                    MessageBox.Show(exc.Message);
                }
            }
        }
        // 停止录制
        private void RecordStop()
        {
            t2 = DateTime.Now;
            if (sbRecordTea.Value && teaVideoPreviewerId > 0)
                m_csAVFrm.stopRecordMp4(teaRtspRecorderId);
            if (sbRecordStu.Value && stuVideoPreviewerId > 0)
                m_csAVFrm.stopRecordMp4(stuRtspRecorderId);
            if (sbRecordScreen.Value && screenVideoPreviewerId > 0)
                m_csAVFrm.stopRecordMp4(screenRecorderId);
            lbRecordTime.Text = Convert.ToDateTime((t2 - t1).ToString()).ToString("HH:mm:ss");
            isRecord = false;
            btnRecordControl.Tooltip = "开始录制";
            btnRecordControl.Text = "开始录制";
            btnRecordControl.Image = Properties.Resources.record;
            btnPlay.Enabled = true;
            rbiParameterControl.Enabled = true;
            timer1.Stop();
            CopyTemplate();

            FileInfo screenVideoFileInfo = new FileInfo(screenVideoFileName);
            if (screenVideoFileInfo.Exists)
            {
                resource.File = screenVideoFileInfo;
                AppInterface.CreateNewResource(resource);
            }

            FileInfo teaVideoFileInfo = new FileInfo(teaVideoFileName);
            if (teaVideoFileInfo.Exists)
            {
                resource.File = teaVideoFileInfo;
                AppInterface.CreateNewResource(resource);
            }

            FileInfo stuVideoFileInfo = new FileInfo(stuVideoFileName);
            if (stuVideoFileInfo.Exists)
            {
                resource.File = stuVideoFileInfo;
                AppInterface.CreateNewResource(resource);
            }

            resource.File = new FileInfo(palyPage);
            AppInterface.CreateNewResource(resource);

            RLog.ToDB("停止录像,生成新资源：" + packName);

        }
        private void CopyTemplate()
        {
            string templateFile = "屏幕带声音.htm";
            if (sbScrAudioInput.Value)
                templateFile = "屏幕带声音.htm";
            else if (sbTeaAudioInput.Value)
                templateFile = "教师带声音.htm";
            else
                templateFile = "学生带声音.htm";
            File.Copy(System.AppDomain.CurrentDomain.BaseDirectory + "Template\\" + templateFile, packName + "\\Play.htm", true);
            File.Copy(System.AppDomain.CurrentDomain.BaseDirectory + "Template\\jquery-1.7.2.js", packName + "\\jquery-1.7.2.js", true);
        }
        private void btnExit_Click(object sender, EventArgs e)
        {
            RecordStop();
            this.Dispose(true);
            Application.Exit();
        }
        // 隐藏到托盘图标
        private void MinToIcon()
        {
            this.Hide();
            this.ShowInTaskbar = false;
            this.notifyIcon1.Visible = true;
        }
        // 从托盘图标显示界面
        private void ShowDlg()
        {
            RecordStop();
            this.ShowInTaskbar = true;
            this.notifyIcon1.Visible = false;
            // 重新显示预览窗口
            //Init();
            //System.Threading.Thread.Sleep(2000);
            this.Show();
        }
        private void btnMinToIcon_Click(object sender, EventArgs e)
        {
            MinToIcon();
        }
        private void stopRecordDlgMenu_Click(object sender, EventArgs e)
        {
            ShowDlg();
        }
        private void exitMenu_Click(object sender, EventArgs e)
        {
            btnExit_Click(null, null);
            //Application.ExitThread();
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
                    RLog.ToDB("保存录制文件后退出");
                    btnExit_Click(null, null);
                }
                else if (dr == DialogResult.No)
                {
                    // 删除已经录制的视频和目录
                    RecordStop();
                    DeleteFile();
                    RLog.ToDB("未保存录制文件直接退出");
                    this.Dispose(true);
                    Application.Exit();
                }
                else if (dr == DialogResult.Cancel)
                {
                    RLog.ToDB("取消退出");
                    e.Cancel = true;
                    return;
                }
            }
            else
            {
                RLog.ToDB("退出程序");
            }
            CSAVFrameWork.uninitialize();
        }
        private void DeleteFile()
        {
            try
            {
                if (Directory.Exists(packName))
                    Directory.Delete(packName, true);
            }
            catch { }
        }
        private void btnOpenSavePath_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(videoFileSavePath))
            {
                System.Diagnostics.Process.Start(videoFileSavePath);
                RLog.ToDB("打开录制文件路径");
            }
            else
                MessageBox.Show("没有设置保存路径");
        }
        private void btnPlay_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(packName))
            {
                //调用IE浏览器
                System.Diagnostics.Process.Start("iexplore.exe", packName + "\\Play.htm");
                RLog.ToDB("回放录制文件");
            }
            else
            {
                MessageBox.Show("请先录制");
            }
        }
        XmlDocument xd = new XmlDocument();
        private void LoadConfig()
        {
            xd.Load(System.AppDomain.CurrentDomain.BaseDirectory + "Config.xml");
            videoFileSavePath = xd.SelectSingleNode("/config/projectPath").InnerText;
            if (videoFileSavePath.LastIndexOf('\\') != videoFileSavePath.Length - 1)
            {
                videoFileSavePath = videoFileSavePath.TrimEnd('\\');
            }
            rtspTeaCam = xd.SelectSingleNode("/config/teacherRtspSource/rtspFormat").InnerText;
            rtspStuCam = xd.SelectSingleNode("/config/studentRtspSource/rtspFormat").InnerText;
            int.TryParse(xd.SelectSingleNode("/config/screenFrameRate").InnerText, out scrFrameRate);

            stuAudioInput = xd.SelectSingleNode("/config/studentRtspSource/audioInput").InnerText == "1" ? true : false;
            teaAudioInput = xd.SelectSingleNode("/config/teacherRtspSource/audioInput").InnerText == "1" ? true : false;
            scrAudioInput = xd.SelectSingleNode("/config/screenSource/audioInput").InnerText == "1" ? true : false;

            sbTeaAudioInput.Value = teaAudioInput;
            sbStuAudioInput.Value = stuAudioInput;
            sbScrAudioInput.Value = scrAudioInput;

            sbRecordTea.Value = xd.SelectSingleNode("/config/teacherRtspSource/videoInput").InnerText == "1" ? true : false;
            sbRecordStu.Value = xd.SelectSingleNode("/config/studentRtspSource/videoInput").InnerText == "1" ? true : false;
            sbRecordScreen.Value = xd.SelectSingleNode("/config/screenSource/videoInput").InnerText == "1" ? true : false;
        }
        private void SetConfig()
        {
            if (sbTeaAudioInput.Value)
                xd.SelectSingleNode("/config/teacherRtspSource/audioInput").InnerText = "1";
            else
                xd.SelectSingleNode("/config/teacherRtspSource/audioInput").InnerText = "0";

            if (sbStuAudioInput.Value)
                xd.SelectSingleNode("/config/studentRtspSource/audioInput").InnerText = "1";
            else
                xd.SelectSingleNode("/config/studentRtspSource/audioInput").InnerText = "0";

            if (sbScrAudioInput.Value)
                xd.SelectSingleNode("/config/screenSource/audioInput").InnerText = "1";
            else
                xd.SelectSingleNode("/config/screenSource/audioInput").InnerText = "0";

            if (sbRecordTea.Value)
                xd.SelectSingleNode("/config/teacherRtspSource/videoInput").InnerText = "1";
            else
                xd.SelectSingleNode("/config/teacherRtspSource/videoInput").InnerText = "0";

            if (sbRecordStu.Value)
                xd.SelectSingleNode("/config/studentRtspSource/videoInput").InnerText = "1";
            else
                xd.SelectSingleNode("/config/studentRtspSource/videoInput").InnerText = "0";

            if (sbRecordScreen.Value)
                xd.SelectSingleNode("/config/screenSource/videoInput").InnerText = "1";
            else
                xd.SelectSingleNode("/config/screenSource/videoInput").InnerText = "0";

            xd.Save("Config.xml");
        }
        private void rbiParameterControl_CheckedChanged(object sender, EventArgs e)
        {
            RLog.ToDB("设置声音和视频");
            if (ribbonControl1.SelectedRibbonTabItem == rbiRecordControl)
            {
                if (videoInputCount == 0)
                {
                    MessageBox.Show("注意：您没有选择录制输入，请重新选择。");
                    ribbonControl1.SelectedRibbonTabItem = rbiParameterControl;
                }
                else
                {
                    if (audioInputCount == 0)
                        MessageBox.Show("注意：您没有选择声音输入，播放时候没有声音。");
                    else if (audioInputCount > 1)
                        MessageBox.Show("注意：您已选择一路以上的声音输入，同时播放多个课件时会有重复声音。");
                }
            }
        }
        #region 录制开关控制

        private void sbRecordStu_ValueChanged(object sender, EventArgs e)
        {
            GetVideoInputCount();
            if (!sbRecordStu.Value)
                sbStuAudioInput.Value = false;
        }

        private void sbRecordTea_ValueChanged(object sender, EventArgs e)
        {
            GetVideoInputCount();
            if (!sbRecordTea.Value)
                sbTeaAudioInput.Value = false;
        }

        private void sbRecordScreen_ValueChanged(object sender, EventArgs e)
        {
            GetVideoInputCount();
            if (!sbRecordScreen.Value)
                sbScrAudioInput.Value = false;
        }

        private void sbTeaAudioInput_ValueChanged(object sender, EventArgs e)
        {
            GetAudioInputCount();
            if (!sbRecordTea.Value && sbTeaAudioInput.Value)
                sbRecordTea.Value = true;
        }

        private void sbStuAudioInput_ValueChanged(object sender, EventArgs e)
        {
            GetAudioInputCount();
            if (!sbRecordStu.Value && sbStuAudioInput.Value)
                sbRecordStu.Value = true;
        }

        private void sbScrAudioInput_ValueChanged(object sender, EventArgs e)
        {
            GetAudioInputCount();
            if (!sbRecordScreen.Value && sbScrAudioInput.Value)
                sbRecordScreen.Value = true;
        }

        private void GetVideoInputCount()
        {
            videoInputCount = 0;
            if (sbRecordStu.Value) videoInputCount++;
            if (sbRecordTea.Value) videoInputCount++;
            if (sbRecordScreen.Value) videoInputCount++;
        }

        private void GetAudioInputCount()
        {
            audioInputCount = 0;
            if (sbTeaAudioInput.Value) audioInputCount++;
            if (sbStuAudioInput.Value) audioInputCount++;
            if (sbScrAudioInput.Value) audioInputCount++;
        }

        #endregion
    }
}