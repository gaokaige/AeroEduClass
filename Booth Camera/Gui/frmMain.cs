using AeroEduClass.Lib;
using AeroEduClass.Lib;
using AeroEduLib;
using cs_framework;
using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO;
using System.Threading;
using System.Windows.Forms;
using System.Xml;

namespace AeroEduClass
{
    public partial class frmMain : DevComponents.DotNetBar.RibbonForm
    {
        #region MyRegion

        string rtspCam;
        string savePath;
        bool isRecord = false;
        bool isMouseDown;// ����Ƿ���
        bool isPause;//�Ƿ���ͣ
        bool isEnlarge; // �Ƿ�Ŵ�
        Rectangle MouseRect;// �����ק�ľ���
        Point pStart, pEnd;// �����ק��������յ������
        bool isDraw = false;// ���ʿ����Ƿ��

        Graphics gp = null;//��ʾ�Ļ���
        Graphics gp1 = null;//���صĻ��� ������עʹ��
        Graphics gp2 = null;//��С��ʱ���浱ǰͼ��Ļ���
        Pen pen = null;
        Image img = null;
        int penWidth = 2;
        int saveCommentInterval = 5;
        int maxCommentImageCount = 20;
        string[] subjects;
        Resource resource;
        #endregion

        public frmMain()
        {
            InitializeComponent();
            lbSoftName.Text = "������ʵ��չ̨��� �汾��2.1.0";
            
        }

        private void RibbonForm1_Resize(object sender, EventArgs e)
        {
            // ������Ƶ���ڱ���Ϊ16:9
            plCamera.Height = (plCamera.Width * 9) / 16;
            if (img != null)
                ReDraw();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            Init();
            btnColor.SelectedColor = Color.Red;
            SetPen(ref pen);
            imglist1.Visible = true;
            comboTree1.SelectedIndex = 0;
            comboTree2.SelectedIndex = 0;

            comboTree1.Location = new Point(18, 110);
            btnColor.Location = new Point(92, 110);
            comboTree2.Location = new Point(165, 110);
        }
        // ��ʼ��
        private void Init()
        {
            LoadConfig();
            Booth.fnInit(this.Handle, plCamera.Handle);
            Preview();
            BuildDir();
            DisablePenControl();
        }
        /// <summary>
        /// ��������Ŀ¼ 
        /// </summary>
        private void BuildDir()
        {
            if (!Directory.Exists(savePath))
                Directory.CreateDirectory(savePath);
            if (!Directory.Exists(savePath + "\\ͼƬ"))
                Directory.CreateDirectory(savePath + "\\ͼƬ");
            if (!Directory.Exists(savePath + "\\��Ƶ"))
                Directory.CreateDirectory(savePath + "\\��Ƶ");
            if (!Directory.Exists(savePath + "\\���⼯"))
                Directory.CreateDirectory(savePath + "\\���⼯");

            if (subjects.Length > 0)
            {
                comboTree2.Nodes.Add(new DevComponents.AdvTree.Node("��Ŀ"));
                foreach (string item in subjects)
                {
                    comboTree2.Nodes.Add(new DevComponents.AdvTree.Node(item));
                    if (!Directory.Exists(savePath + "\\���⼯\\" + item))
                        Directory.CreateDirectory(savePath + "\\���⼯\\" + item);
                }
            }
        }

        // Ԥ����������
        private CSAVFrameWork m_csAVFrm;
        int audioPreviewerId, videoPreviewerId;
        int rtspRecorderId;
        string audioName;
        void Preview()
        {
            m_csAVFrm = new CSAVFrameWork();
            CSAVFrameWork.initialize();
            audioName = CSAVFrameWork.getAudioDefaultInputDeviceName();
            audioPreviewerId = m_csAVFrm.startPreview(IntPtr.Zero, emAVDType.emUSBMicroPhone, audioName);
            videoPreviewerId = m_csAVFrm.startPreview(btnRecordPause.Handle, emAVDType.emRtsp, rtspCam);
        }
        // ¼��
        string timespan, packName, fileName;
        void RecordStart()
        {
             timespan = DateTime.Now.ToString("yyyy-MM-dd HH-mm-ss");
             packName = savePath + "\\��Ƶ\\" + timespan;
            fileName = packName + "\\video.mp4";

            if (!Directory.Exists(packName))
                Directory.CreateDirectory(packName);

            rtspRecorderId = m_csAVFrm.createMp4Recorder(fileName);
            m_csAVFrm.addPreviewerToRecorder(rtspRecorderId, audioPreviewerId);
            m_csAVFrm.addPreviewerToRecorder(rtspRecorderId, videoPreviewerId);
            m_csAVFrm.startRecordMp4(rtspRecorderId);

            resource = new Resource()
            {
                PackName = packName,
            };
        }
        // ֹͣ
        void RecordStop()
        {
            m_csAVFrm.stopRecordMp4(rtspRecorderId);

            resource.File = new FileInfo(fileName);
            resource.Apptype = AppType.ʵ��չ̨;
            AppInterface.CreateNewResource(resource);
        }
        // ¼��
        private void btnRecordControl_Click(object sender, EventArgs e)
        {
            if (!isRecord)
            {
                BLog.ToDB("��ʼ¼��");
                RecordStart();
                isRecord = true;
                btnRecordControl.Text = "ֹͣ";
                
                lbRecordTime.Text = "00:00:00";
                timer1.Start();
                btnComment.Enabled = false;
                //btnNear.Enabled = false;
                //btnFar.Enabled = false;
                imglist1.Enabled = false;
                comboTree2.Enabled = false;
                btnJoinErrCol.Enabled = false;
                btnOpenErr.Enabled = false;
                btnSnapshot.Enabled = false;
                btnOpendir.Enabled = false;
                btnRecordPause.Enabled = true;
                NoticeShow("��ʼ¼��");
            }
            else
            {
                img = null;
                RecordStop();
                isRecord = false;
                btnRecordControl.Text = "¼��";
                
                timer1.Stop();
                btnRecordPause.Text = "��ͣ¼��";
                isPause = false;
                Booth.fnOnRButtonDown();
                recordSenconds = 0;
                btnComment.Enabled = true;
                //btnNear.Enabled = true;
                //btnFar.Enabled = true;
                imglist1.Enabled = true;
                comboTree2.Enabled = true;
                btnJoinErrCol.Enabled = true;
                btnOpenErr.Enabled = true;
                btnSnapshot.Enabled = true;
                btnOpendir.Enabled = true;
                btnRecordPause.Enabled = false;
                NoticeShow("¼�������");
                BLog.ToDB("ֹͣ¼��");
            }
        }
        /// <summary>
        ///  ��ͼ
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSnapshot_Click(object sender, EventArgs e)
        {
            string picPath = string.Format(savePath + @"\ͼƬ\{0}\����{1}.bmp", DateTime.Now.ToString("yyyyMMdd"), DateTime.Now.ToString("yyyyMMddHHmmssfff"));

            if (!Directory.Exists(savePath + "\\ͼƬ\\" + DateTime.Now.ToString("yyyyMMdd")))
                Directory.CreateDirectory(savePath + "\\ͼƬ\\" + DateTime.Now.ToString("yyyyMMdd"));

            Booth.fnCatchPic(picPath);
            NoticeShow("��ͼ�ѱ��档");
            BLog.ToDB("����:" + picPath);
            //Log.ToFile(picPath);
            if (!string.IsNullOrEmpty(picPath))
            {
                resource = new Resource();
                try
                {
                    resource.Apptype = AppType.ʵ��չ̨;
                    resource.File = new FileInfo(picPath);
                    AppInterface.CreateNewResource(resource);
                }
                catch { }
            }
        }
        // ¼�Ƽ�ʱ��
        int recordSenconds = 0;
        private void timer1_Tick(object sender, EventArgs e)
        {
            recordSenconds++;
            lbRecordTime.Text = Convert.ToDateTime("00:00:00").AddSeconds(recordSenconds).ToString("HH:mm:ss");
        }
        // �ָ�Ĭ������ δ����
        // �򿪱���Ŀ¼
        private void btnOpenDir_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start(savePath + "\\��Ƶ");
        }
        // �Ŵ��Ļָ� �� ��ͣ�ָ�
        private void btnEnlargeReset_Click(object sender, EventArgs e)
        {
            img = null;
            EnlargeReset();
            plCamera.Refresh();
            ButtonEnable(true);
            // ���ʹر�
            isDraw = false;
            btnComment.Text = "��ʼ��ע";
            DisablePenControl();
            btnRecordControl.Enabled = true;
    
        }

        private void DisablePenControl()
        {
            btnColor.Enabled = false;
            comboTree1.Enabled = false;
            //listBoxPenWidth.Visible = false;
            btnSaveComment.Enabled = false;
            //imglist1.Visible = false;
        }

        private void EnablePenControl()
        {
            btnColor.Enabled = true;
            //listBoxPenWidth.Visible = true;
            comboTree1.Enabled = true;
            btnSaveComment.Enabled = true;
            //imglist1.Visible = true;
        }

        [System.Runtime.InteropServices.DllImport("user32.dll")]
        private static extern IntPtr GetWindowRect(IntPtr hwnd, ref Rectangle lpRect);

        // �Ŵ�ָ�
        private void EnlargeReset()
        {
            Booth.fnOnRButtonDown();
            isEnlarge = false;
            isPause = false;
        }
        private void panelCamera_MouseUp(object sender, MouseEventArgs e)
        {
            isMouseDown = false;
            pEnd = new Point(e.X, e.Y);
            Cursor.Clip = Rectangle.Empty;
        }

        private void panelCamera_MouseDown(object sender, MouseEventArgs e)
        {
            if (!isRecord)
            {
                if (e.Button == MouseButtons.Left)
                {
                    if (!isDraw)
                    {
                        isDraw = true;
                        Booth.fnOnLButtonDown();
                        isPause = true;
                        this.btnComment.Text = "������ע";
                        EnablePenControl();
                        btnRecordControl.Enabled = false;
                        btnNear.Enabled = false;
                        btnFar.Enabled = false;
                        gp = plCamera.CreateGraphics();
                        gp.SmoothingMode = SmoothingMode.AntiAlias;  //ʹ��ͼ������ߣ����������
                        gp.InterpolationMode = InterpolationMode.HighQualityBicubic;
                        gp.CompositingQuality = CompositingQuality.HighQuality;

                        ImageFromControl(ref gp1);

                        NoticeShow("�Ѿ���ʼ��ע��");
                    }

                    if (isDraw)
                    {
                        isPause = true;
                        pStart = new Point(e.X, e.Y);// ?
                        Booth.fnOnLButtonDown();
                        //DrawRectangle();
                        isMouseDown = true;
                        DrawStart(e.Location);
                    }
                }
            }
        }

        private void panelCamera_MouseMove(object sender, MouseEventArgs e)
        {
            if (isMouseDown)
            {
                if (isDraw)
                {
                        DrawLine(e.Location);
                }
            }
        }
       
        private void DrawLine(Point p)
        {
            gp.DrawCurve(pen, new Point[2] { pStart, p });
            gp1.DrawLine(pen, pStart, p);
            pStart = p;
        }

        private void DrawRectangle()
        {
            ControlPaint.DrawReversibleFrame(Rectangle.Empty, Color.Gray, FrameStyle.Dashed);
            Rectangle rect = this.RectangleToScreen(MouseRect);
            ControlPaint.DrawReversibleFrame(rect, Color.Gray, FrameStyle.Dashed);
        }

        private void DrawStart(Point StartPoint)
        {
            this.plCamera.Capture = true;
            //������������ѡʱ�����ƶ����� �Ϳؼ������Ĳ���
            //Cursor.Clip = this.RectangleToScreen(new Rectangle(0, 0, ClientSize.Width, ClientSize.Height));
            Cursor.Clip = this.RectangleToScreen(this.plCamera.ClientRectangle);
            MouseRect = new Rectangle(StartPoint.X, StartPoint.Y, 0, 0);
        }

        // ������ע
        int i;
        private void btnSaveComment_Click(object sender, EventArgs e)
        {
            BLog.ToDB("������ע");
            i = saveCommentInterval;
            if (imglist1.Count < maxCommentImageCount)
            {
                string imgPath = string.Format(savePath + @"\ͼƬ\{0}\��ע{1}.PNG", DateTime.Now.ToString("yyyyMMdd"), DateTime.Now.ToString("yyyyMMddHHmmssfff"));

                if (!Directory.Exists(savePath + "\\ͼƬ\\" + DateTime.Now.ToString("yyyyMMdd")))
                    Directory.CreateDirectory(savePath + "\\ͼƬ\\" + DateTime.Now.ToString("yyyyMMdd"));

                if (img == null)
                {
                    ImageFromControl(ref gp1);
                }
                img.Save(imgPath, System.Drawing.Imaging.ImageFormat.Png);
                imglist1.AddPic(imgPath);
                NoticeShow("��ע�ѱ��档");
                //btnSaveComment.Text = "������ע(" + i.ToString() + ")";
                timer3.Start();
                btnSaveComment.Enabled = false;

                resource = new Resource();
                resource.Apptype = AppType.ʵ��չ̨;
                resource.File = new FileInfo(imgPath);
                AppInterface.CreateNewResource(resource);
            }
            else
            {
                NoticeShow(string.Format("�����ʷ�б�ֻ�ܱ���{0}����ע������պ��ٱ��档", maxCommentImageCount));
            }
        }
        // ��Ļ��ͼ
        private Image ImageFromControl(ref Graphics g)
        {
            Bitmap bit = new Bitmap(plCamera.Width, plCamera.Height);//ʵ����һ���ʹ���һ�����bitmap
            g = Graphics.FromImage(bit);
            g.CompositingQuality = CompositingQuality.HighQuality;//������Ϊ���
            //g.CopyFromScreen(this.Left,this.Top,0,0,new Size(this.Width,this.Height));//������������ΪͼƬ
            g.CopyFromScreen(plCamera.PointToScreen(Point.Empty), Point.Empty, plCamera.Size);//ֻ����ĳ���ؼ���������panel��Ϸ����
            img = bit;
            return img;
        }
        
        // �˳�����
        private void btnExitApp_Click(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show("�Ƿ�Ҫ�˳���", "�˳���ʾ", MessageBoxButtons.YesNo);
            if (dr == DialogResult.Yes)
            {
                BLog.ToDB("�˳�����");
                Application.Exit();
            }
            else
            {
                BLog.ToDB("ȡ���˳�");
            }
        }
        // ��С��
        private void btnMinsize_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void ButtonEnable(bool enable)
        {
            btnFar.Enabled = enable;
            btnNear.Enabled = enable;
            btnOpendir.Enabled = enable;
            btnRecordControl.Enabled = enable;
        }
        // �ػ�
        protected override void OnPaint(PaintEventArgs e)
        {
            base.OnPaint(e);
            if (img != null)
                ReDraw();
        }
        // �ػ�
        private void ReDraw()
        {
            gp2 = plCamera.CreateGraphics();
            gp2.DrawImage(img, 0, 0, img.Width, img.Height);
        }
        // ������ɫ
        private void btnColor_SelectedColorChanged(object sender, EventArgs e)
        {
            SetPen(ref pen);
            BLog.ToDB("ѡ����ɫ");
        }
        // ���û���
        private void SetPen(ref Pen pen)
        {
            pen = new Pen(btnColor.SelectedColor, penWidth);
            pen.LineJoin = LineJoin.Round;
            pen.StartCap = LineCap.Round;
            pen.EndCap = LineCap.Round;
        }
        // ��ʼ��ע
        private void btnComment_Click(object sender, EventArgs e)
        {
            isDraw = !isDraw;
            if (isDraw)
            {
                Booth.fnOnLButtonDown();
                isPause = true;
                this.btnComment.Text = "������ע";
                EnablePenControl();
                btnRecordControl.Enabled = false;
                btnNear.Enabled = false;
                btnFar.Enabled = false;
                gp = plCamera.CreateGraphics();
                gp.SmoothingMode = SmoothingMode.AntiAlias;  //ʹ��ͼ������ߣ����������
                gp.InterpolationMode = InterpolationMode.HighQualityBicubic;
                gp.CompositingQuality = CompositingQuality.HighQuality;

                ImageFromControl(ref gp1);
                NoticeShow("�Ѿ���ʼ��ע��");
                BLog.ToDB("��ʼ��ע");
            }
            else
            {
                this.btnComment.Text = "��ʼ��ע";
                DisablePenControl();
                btnRecordControl.Enabled = true;
                btnNear.Enabled = true;
                btnFar.Enabled = true;

                btnEnlargeReset_Click(null, null);
                NoticeShow("�Ѿ�������ע��");
                BLog.ToDB("������ע");
            }
        }
        // ֪ͨ��ʧ
        private void timer2_Tick(object sender, EventArgs e)
        {
            lbNotice.Visible = false;
            lbNotice.Text = "";
        }
        // ֪ͨ
        void NoticeShow(string str)
        {
            timer2.Stop();
            timer2.Start();
            lbNotice.Text = "��ʾ��" + str;
            lbNotice.Visible = true;
        }
        // �����ע��ʷ
        private void imglist1_PictureBoxClick(int i)
        {
            BLog.ToDB("ʹ����ע�б�");
            isDraw = true;
            isPause = true;
            Booth.fnOnLButtonDown();
            this.btnComment.Text = "������ע";
            EnablePenControl();
            btnRecordControl.Enabled = false;
            btnNear.Enabled = false;
            btnFar.Enabled = false;
            gp = plCamera.CreateGraphics();
            gp.SmoothingMode = SmoothingMode.AntiAlias;  //ʹ��ͼ������ߣ����������
            //gp.InterpolationMode = InterpolationMode.HighQualityBicubic;
            //gp.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.High;
            //gp.CompositingQuality = CompositingQuality.HighQuality;
            //gp.Clear(Color.Transparent);
            img = Image.FromFile(imglist1.GetImage(i));
            gp.DrawImage(img, 0, 0, plCamera.Width, plCamera.Height);
            ImageFromControl(ref gp1);
        }
        // ���ʴ�ϸѡ��
        private void comboTree1_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (comboTree1.SelectedIndex)
            {
                case 0:
                    penWidth = 2;
                    break;
                case 1:
                    penWidth = 5;
                    break;
                case 2:
                    penWidth = 8;
                    break;
                case 3:
                    penWidth = 12;
                    break;
            }

            SetPen(ref pen);
            if (comboTree1.SelectedIndex != 0)
            {
                BLog.ToDB("ѡ�񻭱�:" + comboTree1.SelectedNode.Text);
            }
        }
        // panel1�ػ�
        private void panel1_Paint(object sender, PaintEventArgs e)
        {
            if (img != null)
                ReDraw();
        }
        // �˳�ʱ����¼��
        private void frmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (isRecord)
            {
                Booth.fnStopRecord();
                this.Dispose(true);
                Application.Exit();
            }
            CSAVFrameWork.uninitialize();
        }

        private void timer3_Tick(object sender, EventArgs e)
        {
            if (i <= saveCommentInterval && i > 1)
            {
                i = i - 1;
                //btnSaveComment.Text = "������ע(" + i.ToString() + ")";
            }
            else
            {
                if (isDraw)
                    btnSaveComment.Enabled = true;
                timer3.Stop();
                i = saveCommentInterval;
                btnSaveComment.Text = "������ע";
            }
        }
        // ������⼯���������ע״̬����ע��ͼƬ����⼯������ԭʼͼƬ����⼯
        private void btnJoinErrCol_Click(object sender, EventArgs e)
        {
            if (comboTree2.SelectedIndex == 0)
            {
                BLog.ToDB("������⼯��δѡ���Ŀ");
                MessageBox.Show("��ѡ���Ŀ.");
                return;
            }

            if (imglist1.Count < maxCommentImageCount)
            {
                BLog.ToDB("������⼯");
                btnJoinErrCol.Enabled = false;
                string dirName = savePath + "\\���⼯\\" + comboTree2.SelectedNode.Text + "\\" + DateTime.Now.ToString("yyyyMMdd");
                if (!Directory.Exists(dirName))
                    Directory.CreateDirectory(dirName);

                string imgPath = dirName + "\\" + DateTime.Now.ToString("yyyyMMddHHmmssfff") + ".PNG";
                if (img == null)
                {
                    ImageFromControl(ref gp1);
                }
                if (isDraw)
                {
                    img.Save(imgPath, System.Drawing.Imaging.ImageFormat.Png);
                }
                else
                {
                    Graphics g = plCamera.CreateGraphics();
                    ImageFromControl(ref g);
                    img.Save(imgPath, System.Drawing.Imaging.ImageFormat.Png);
                }
                imglist1.AddPic(imgPath);
                NoticeShow("�Ѽ�����⼯��");
                Thread.Sleep(1000);
                btnJoinErrCol.Enabled = true;
                //img = null;
            }
            else
            {
                NoticeShow(string.Format("�����ʷ�б�ֻ�ܱ���{0}����ע������պ��ٱ��档", maxCommentImageCount));
            }
        }
        // �򿪴��⼯Ŀ¼
        private void btnOpenErr_Click(object sender, EventArgs e)
        {
            BLog.ToDB("�򿪴��⼯");
            if (comboTree2.SelectedIndex == 0)
            {
                System.Diagnostics.Process.Start(savePath + "\\���⼯\\");
            }
            else
            {
                System.Diagnostics.Process.Start(savePath + "\\���⼯\\" + comboTree2.SelectedNode.Text);
            }
        }

        private void comboTree2_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnJoinErrCol.Enabled = true;
            btnOpenErr.Enabled = true;
            if (comboTree2.SelectedIndex != 0)
            {
                BLog.ToDB("���⼯��Ŀѡ��:" + comboTree2.SelectedNode.Text);
            }
        }

        private void buttonX1_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start(savePath + "\\ͼƬ");
            BLog.ToDB("����עĿ¼");
        }
        // ¼����ͣ/�ָ�
        private void btnRecordPause_Click(object sender, EventArgs e)
        {
            if (!isPause)
            {
                RecordPause();
            }
            else
            {
                RecordResume();
            }
        }
        // ¼����ͣ
        private void RecordPause()
        {
            isPause = true;
            Booth.fnOnLButtonDown();
            timer1.Stop();
            btnRecordPause.Text = "�ָ�¼��";
        }
        // ����¼��
        private void RecordResume()
        {
            isPause = false;
            Booth.fnOnRButtonDown();
            timer1.Start();
            btnRecordPause.Text = "��ͣ¼��";
        }
        
        XmlDocument xd = new XmlDocument();
        private void LoadConfig()
        {
            xd.Load(System.AppDomain.CurrentDomain.BaseDirectory + "Config.xml");
            savePath = xd.SelectSingleNode("/config/projectPath").InnerText;
            if (savePath.LastIndexOf('\\') != savePath.Length - 1)
            {
                savePath = savePath.TrimEnd('\\');
            }
            rtspCam = xd.SelectSingleNode("/config/rtspSource/rtspFormat").InnerText;
            subjects = xd.SelectSingleNode("/config/Subjects").InnerText.Split('|');
            int.TryParse(xd.SelectSingleNode("/config/MaxCommentImageCount").InnerText, out maxCommentImageCount);
            int.TryParse(xd.SelectSingleNode("/config/SaveCommentInterval").InnerText, out saveCommentInterval);
        }

        private void btnNear_MouseDown(object sender, MouseEventArgs e)
        {
            //Booth.fnZoomIn();
        }

        private void btnNear_MouseUp(object sender, MouseEventArgs e)
        {
            //Booth.fnZoomIn();
        }

        private void btnFar_MouseDown(object sender, MouseEventArgs e)
        {
            //Booth.fnZoomOut();
        }

        private void btnFar_MouseUp(object sender, MouseEventArgs e)
        {
            //Booth.fnZoomOut();
        }
        // �䱶 -
        private void btnFar_Click(object sender, EventArgs e)
        {
            Booth.fnZoomOut();
            Thread.Sleep(500);
            Booth.fnZoomOut();
            NoticeShow("��С����");
            BLog.ToDB("��С����");
        }
        // �䱶 +
        private void btnNear_Click(object sender, EventArgs e)
        {
            Booth.fnZoomIn();
            Thread.Sleep(500);
            Booth.fnZoomIn();
            NoticeShow("�Ŵ���");
            BLog.ToDB("�Ŵ���");
        }
    }
}