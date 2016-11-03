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
        #region ��������
        private MenuItem stopRecord = new MenuItem("ֹͣ¼��");
        private MenuItem exitMenu = new MenuItem("�˳�");

        private CSAVFrameWork m_csAVFrm = new CSAVFrameWork();

        DateTime t1, t2;
        /// <summary>
        /// rtspԴ
        /// </summary>
        string rtspTeaCam, rtspStuCam;
        /// <summary>
        /// ��Ƶ�����Ŀ¼
        /// </summary>
        string videoFileSavePath;
        /// <summary>
        /// ��Ƶ�ļ�·��
        /// </summary>
        string stuVideoFileName, teaVideoFileName, screenVideoFileName;
        /// <summary>
        /// ������Դ��ҳ��
        /// </summary>
        string palyPage;
        /// <summary>
        /// ����Ԥ��id
        /// </summary>
        int stuAudioPreviewerId, teaAudioPreviewerId, screenAudioPreviewerId;
        /// <summary>
        /// ��ƵԤ��id
        /// </summary>
        int stuVideoPreviewerId, teaVideoPreviewerId, screenVideoPreviewerId;
        /// <summary>
        /// �Ƿ�����������
        /// </summary>
        bool stuAudioInput, teaAudioInput, scrAudioInput;
        /// <summary>
        /// rtspԤ��id
        /// </summary>
        int stuRtspRecorderId = 0, teaRtspRecorderId = 0, screenRecorderId = 0;
        string timespan;
        /// <summary>
        /// Ĭ�������豸����
        /// </summary>
        string audioName;
        /// <summary>
        /// �����ļ����ļ���
        /// </summary>
        string packName;
        /// <summary>
        /// �Ƿ���¼��
        /// </summary>
        bool isRecord = false;
        /// <summary>
        /// ��Ļ����
        /// </summary>
        int scrFrameRate = 300;
        /// <summary>
        /// ���������·��
        /// </summary>
        int audioInputCount = 0;
        /// <summary>
        /// ��Ƶ�����·��
        /// </summary>
        int videoInputCount = 0;

        /// <summary>
        /// ¼����Դ����
        /// </summary>
        Resource resource;
        #endregion

        public frmMain()
        {
            InitializeComponent();
            // ��ʱ�����仯������̶���
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
            labelX1.Text = "ѧ������";
            labelX2.Text = "��ʦ����";

            LoadConfig(); //*****��ȡ����*****
            GetAudioInputCount();
            this.Text = "��̬¼��" + split + "���������ƽ����Ƽ����޹�˾" + split + "�汾��2.0.0";
            if (!Directory.Exists(videoFileSavePath))
                Directory.CreateDirectory(videoFileSavePath);
        }
        private void frmMain_Load(object sender, EventArgs e)
        {
            Init();
        }
        private void Init()
        {
            // ��ʼ��
            if (!CSAVFrameWork.initialize())
            {
                MessageBox.Show("��ʼ��ʧ��!");//avframework���ʼ��ʧ��!
                return;
            }
            // ��ȡ
            GetVideoInputCount();
            GetAudioInputCount();
            // Ĭ��¼���豸����
            audioName = CSAVFrameWork.getAudioDefaultInputDeviceName();
            // ��ʼԤ��
            StuPreviewer();
            TeaPreviewer();
            ScreenPreviewer();
        }
        #region Ԥ��
        private void StuPreviewer()
        {
            try
            {
                stuAudioPreviewerId = m_csAVFrm.startPreview(IntPtr.Zero, emAVDType.emUSBMicroPhone, audioName);
                stuVideoPreviewerId = m_csAVFrm.startPreview(plStudent.Handle, emAVDType.emRtsp, rtspStuCam);
            }
            catch { MessageBox.Show("ѧ��Ԥ���������ʧ��"); }
        }
        private void TeaPreviewer()
        {
            try
            {
                teaAudioPreviewerId = m_csAVFrm.startPreview(IntPtr.Zero, emAVDType.emUSBMicroPhone, audioName);
                teaVideoPreviewerId = m_csAVFrm.startPreview(plTeacher.Handle, emAVDType.emRtsp, rtspTeaCam);
            }
            catch { MessageBox.Show("��ʦԤ���������ʧ��"); }
        }
        private void ScreenPreviewer()
        {
            try
            {
                screenAudioPreviewerId = m_csAVFrm.startPreview(IntPtr.Zero, emAVDType.emUSBMicroPhone, audioName);
                screenVideoPreviewerId = m_csAVFrm.startPreview(IntPtr.Zero, emAVDType.emDesk, 10, 300);//fps����10¼�Ƶ���Ƶ���Ȳ���ȷ
            }
            catch { MessageBox.Show("��ĻԤ���������ʧ��"); }
        }
        #endregion
        // ¼��/ֹͣ
        private void btnRecordControl_Click(object sender, EventArgs e)
        {
            if (isRecord)
            {

                RecordStop();
            }
            else
            {
                RLog.ToDB("��ʼ¼��");
                SetConfig();//��������
                timespan = DateTime.Now.ToString("yyyy-MM-dd HH-mm-ss");
                packName = videoFileSavePath + "\\" + timespan;
                stuVideoFileName = packName + "\\ѧ��.mp4";
                teaVideoFileName = packName + "\\��ʦ.mp4";
                screenVideoFileName = packName + "\\��Ļ.mp4";
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
                    #region ������ʦ¼����
                    try
                    {
                        if (sbRecordTea.Value && teaVideoPreviewerId > 0)
                        {
                            teaRtspRecorderId = m_csAVFrm.createMp4Recorder(teaVideoFileName);
                            if (teaRtspRecorderId <= 0)
                            {
                                throw new Exception("������ʦ¼����ʧ��");
                            }
                            if (sbTeaAudioInput.Value)
                            {
                                if (!m_csAVFrm.addPreviewerToRecorder(teaRtspRecorderId, teaAudioPreviewerId))
                                {
                                    throw new Exception("��ʦ¼�������¼����Ƶ�豸ʧ��");
                                }
                            }
                            if (!m_csAVFrm.addPreviewerToRecorder(teaRtspRecorderId, teaVideoPreviewerId))
                            {
                                m_csAVFrm.removePreviewerForRecorder(teaRtspRecorderId, teaVideoPreviewerId);
                                throw new Exception("��ʦ¼�������¼����Ƶ�豸ʧ��");
                            }
                        }
                    }
                    catch { MessageBox.Show("��ʦ����ͷ���ϣ�"); }
                    #endregion

                    #region ����ѧ��¼����
                    try
                    {
                        if (sbRecordStu.Value && stuVideoPreviewerId > 0)
                        {
                            stuRtspRecorderId = m_csAVFrm.createMp4Recorder(stuVideoFileName);
                            if (stuRtspRecorderId <= 0)
                            {
                                throw new Exception("����ѧ��¼����ʧ��");
                            }
                            if (sbStuAudioInput.Value)
                            {
                                if (!m_csAVFrm.addPreviewerToRecorder(stuRtspRecorderId, stuAudioPreviewerId))
                                {
                                    throw new Exception("ѧ��¼�������¼����Ƶ�豸ʧ��");
                                }
                            }
                            if (!m_csAVFrm.addPreviewerToRecorder(stuRtspRecorderId, stuVideoPreviewerId))
                            {
                                m_csAVFrm.removePreviewerForRecorder(stuRtspRecorderId, stuVideoPreviewerId);
                                throw new Exception("ѧ��¼�������¼����Ƶ�豸ʧ��");
                            }
                        }
                    }
                    catch { MessageBox.Show("ѧ������ͷ���ϣ�"); }
                    #endregion

                    #region ������Ļ¼����
                    try
                    {
                        if (sbRecordScreen.Value && screenVideoPreviewerId > 0)
                        {
                            screenRecorderId = m_csAVFrm.createMp4Recorder(screenVideoFileName);
                            if (screenRecorderId <= 0)
                            {
                                throw new Exception("������Ļ¼����ʧ��");
                            }
                            if (sbScrAudioInput.Value)
                            {
                                if (!m_csAVFrm.addPreviewerToRecorder(screenRecorderId, screenAudioPreviewerId))
                                {
                                    throw new Exception("��Ļ¼�������¼����Ƶ�豸ʧ��");
                                }
                            }
                            if (!m_csAVFrm.addPreviewerToRecorder(screenRecorderId, screenVideoPreviewerId))
                            {
                                throw new Exception("��Ļ¼�������¼����Ƶ�豸ʧ��");
                            }
                        }
                    }
                    catch { MessageBox.Show("����¼�ƹ��ϣ�"); }
                    #endregion

                    // ����
                    t1 = DateTime.Now;

                    #region ������ʦ¼����
                    if (sbRecordTea.Value && teaVideoPreviewerId > 0)
                    {
                        if (!m_csAVFrm.startRecordMp4(teaRtspRecorderId))
                        {
                            throw new Exception("������ʦ¼��ʧ��");
                        }
                    }
                    #endregion

                    #region ����ѧ��¼����
                    if (sbRecordStu.Value && stuVideoPreviewerId > 0)
                    {
                        if (!m_csAVFrm.startRecordMp4(stuRtspRecorderId))
                        {
                            throw new Exception("����ѧ��¼��ʧ��");
                        }
                    }
                    #endregion

                    #region ������Ļ¼����
                    if (sbRecordScreen.Value && screenVideoPreviewerId > 0)
                    {
                        if (!m_csAVFrm.startRecordMp4(screenRecorderId))
                        {
                            throw new Exception("������Ļ¼��ʧ��");
                        }
                    }
                    #endregion

                    isRecord = true;
                    btnRecordControl.Image = Properties.Resources.stop1;
                    btnRecordControl.Tooltip = "ֹͣ¼��";
                    btnRecordControl.Text = "ֹͣ¼��";
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
        // ֹͣ¼��
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
            btnRecordControl.Tooltip = "��ʼ¼��";
            btnRecordControl.Text = "��ʼ¼��";
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

            RLog.ToDB("ֹͣ¼��,��������Դ��" + packName);

        }
        private void CopyTemplate()
        {
            string templateFile = "��Ļ������.htm";
            if (sbScrAudioInput.Value)
                templateFile = "��Ļ������.htm";
            else if (sbTeaAudioInput.Value)
                templateFile = "��ʦ������.htm";
            else
                templateFile = "ѧ��������.htm";
            File.Copy(System.AppDomain.CurrentDomain.BaseDirectory + "Template\\" + templateFile, packName + "\\Play.htm", true);
            File.Copy(System.AppDomain.CurrentDomain.BaseDirectory + "Template\\jquery-1.7.2.js", packName + "\\jquery-1.7.2.js", true);
        }
        private void btnExit_Click(object sender, EventArgs e)
        {
            RecordStop();
            this.Dispose(true);
            Application.Exit();
        }
        // ���ص�����ͼ��
        private void MinToIcon()
        {
            this.Hide();
            this.ShowInTaskbar = false;
            this.notifyIcon1.Visible = true;
        }
        // ������ͼ����ʾ����
        private void ShowDlg()
        {
            RecordStop();
            this.ShowInTaskbar = true;
            this.notifyIcon1.Visible = false;
            // ������ʾԤ������
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
                DialogResult dr = MessageBox.Show("��ǰ¼�ƵĿμ�δ���棬�Ƿ񱣴���˳���", "��ʾ", MessageBoxButtons.YesNoCancel);
                if (dr == DialogResult.Yes)
                {
                    RLog.ToDB("����¼���ļ����˳�");
                    btnExit_Click(null, null);
                }
                else if (dr == DialogResult.No)
                {
                    // ɾ���Ѿ�¼�Ƶ���Ƶ��Ŀ¼
                    RecordStop();
                    DeleteFile();
                    RLog.ToDB("δ����¼���ļ�ֱ���˳�");
                    this.Dispose(true);
                    Application.Exit();
                }
                else if (dr == DialogResult.Cancel)
                {
                    RLog.ToDB("ȡ���˳�");
                    e.Cancel = true;
                    return;
                }
            }
            else
            {
                RLog.ToDB("�˳�����");
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
                RLog.ToDB("��¼���ļ�·��");
            }
            else
                MessageBox.Show("û�����ñ���·��");
        }
        private void btnPlay_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(packName))
            {
                //����IE�����
                System.Diagnostics.Process.Start("iexplore.exe", packName + "\\Play.htm");
                RLog.ToDB("�ط�¼���ļ�");
            }
            else
            {
                MessageBox.Show("����¼��");
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
            RLog.ToDB("������������Ƶ");
            if (ribbonControl1.SelectedRibbonTabItem == rbiRecordControl)
            {
                if (videoInputCount == 0)
                {
                    MessageBox.Show("ע�⣺��û��ѡ��¼�����룬������ѡ��");
                    ribbonControl1.SelectedRibbonTabItem = rbiParameterControl;
                }
                else
                {
                    if (audioInputCount == 0)
                        MessageBox.Show("ע�⣺��û��ѡ���������룬����ʱ��û��������");
                    else if (audioInputCount > 1)
                        MessageBox.Show("ע�⣺����ѡ��һ·���ϵ��������룬ͬʱ���Ŷ���μ�ʱ�����ظ�������");
                }
            }
        }
        #region ¼�ƿ��ؿ���

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