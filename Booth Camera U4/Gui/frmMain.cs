using AeroEduLib;
using Booth_Camera.Lib;
using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO;
using System.Threading;
using System.Windows.Forms;
using System.Xml;

namespace Booth_Camera
{
    public partial class frmMain : Form//DevComponents.DotNetBar.RibbonForm
    {
        #region ����
        string serverIp;
        string serverWebUri;
        const string SAVEPATH = @"C:\ʵ��չ̨¼���ļ�\";
        const string PICPATH = "picture";
        bool isRecord = false;
        DateTime t1, t2;
        bool isMouseDown;// ����Ƿ���
        bool isPause;//�Ƿ���ͣ
        bool isEnlarge; // �Ƿ�Ŵ�
        Rectangle MouseRect;// �����ק�ľ���
        Point pStart, pEnd;// �����ק��������յ������
        bool isDraw = false;// ���ʿ����Ƿ��

        Graphics gp = null;//��ʾ�Ļ���
        Graphics gp1 = null;//���صĻ���
        Graphics gp2 = null;//��С��ʱ���浱ǰͼ��Ļ���
        Pen pen = null;
        Image img = null;
        int penWidth = 2;
        Resource resource;
        int saveCommentInterval = 5;
        int maxCommentImageCount = 20;

        
        #endregion
        public frmMain()
        {
            InitializeComponent();
        }

        private void PlCarmera_Resize()
        {
            plCamera.Width = panel4.Height * 16 / 9;
            int x = panel4.Width / 2 - plCamera.Width / 2;
            if (x < 0)
                x = 0;
            int y = 0;

            plCamera.Location = new Point(x, y);
            //plCamera.ClientRectangle = new Rectangle(x, y, plCamera.Width, plCamera.Height);
            plCamera.Height = panel4.Height;
        }

        private void RibbonForm1_Resize(object sender, EventArgs e)
        {
            if (img != null)
                ReDraw();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            //// ��ȡ��Ļ�ֱ���
            //Rectangle boundsRect = Screen.GetBounds(this);
            //Rectangle workingRect =  Screen.GetWorkingArea(this);

            Init();
            btnColor.SelectedColor = Color.Red;
            SetPen(ref pen);
            imglist1.Visible = true;
            comboTree1.SelectedIndex = 1;
        }
        // ��ʼ��
        private void Init()
        {
            serverIp = GetServerIp();
            serverWebUri = "http://" + serverIp + "/project/booth";

            Booth.fnInit(this.Handle, plCamera.Handle);
            BuildDir();
            DisablePenControl();
            try
            {
                saveCommentInterval = int.Parse(Setting.GetValue("SaveCommentInterval"));
                maxCommentImageCount = int.Parse(Setting.GetValue("MaxCommentImageCount"));
            }
            catch { }
        }

        private string GetServerIp()
        {
            XmlDocument xd = new XmlDocument();
            xd.Load(System.AppDomain.CurrentDomain.BaseDirectory + "UserInfo.xml");
            string server = xd.SelectSingleNode("/INFO/SERVER/ADDR").InnerText;
            return server;
        }
        /// <summary>
        /// ��������Ŀ¼ 
        /// </summary>
        private void BuildDir()
        {
            string savePath = SAVEPATH;
            if (!Directory.Exists(savePath))
                Directory.CreateDirectory(savePath);
            if (!Directory.Exists(savePath + PICPATH))
                Directory.CreateDirectory(savePath + PICPATH);

            Booth.fnSetPath(savePath);
        }
        // ¼��
        string dirName = string.Empty;
        private void btnRecordControl_Click(object sender, EventArgs e)
        {
            
            if (!isRecord)
            {
                lbRecordTime.Text = "��Ƶ����";
                lbRecordTime.Refresh();
                // ��Ŀ¼��
                dirName = DateTime.Now.ToString("yyyyMMdd");
                Booth.fnStartRecord(dirName);

                Thread.Sleep(6000);
                isRecord = true;
                lbRecordTime.Text = "��ʼ¼��";
                lbRecordTime.Refresh();
                Thread.Sleep(1000);
                btnRecordControl.Text = "ֹͣ";
                btnRecordControl.Tooltip = "ֹͣ¼��";
                t1 = DateTime.Now;
                timer1.Start();
                btnComment.Enabled = false;
                btnNear.Enabled = false;
                btnFar.Enabled = false;
                imglist1.Enabled = false;
                btnSnapshot.Enabled = false;
                NoticeShow("��ʼ¼��");
                BLog.ToDB("��ʼ¼��");
            }
            else
            {
                img = null;
                t2 = DateTime.Now;
                lbRecordTime.Text = Convert.ToDateTime((t2 - t1).ToString()).ToString("HH:mm:ss");
                
                isRecord = false;
                RecordStop(dirName);
                btnRecordControl.Text = "¼��";
                btnRecordControl.Tooltip = "��ʼ¼��";
                t2 = DateTime.Now;
                timer1.Stop();
                btnComment.Enabled = true;
                btnNear.Enabled = true;
                btnFar.Enabled = true;
                imglist1.Enabled = true;
                btnSnapshot.Enabled = true;
                NoticeShow("¼�������");
                BLog.ToDB("ֹͣ¼��");
            }
        }

        // ֹͣ
        void RecordStop(string dirName)
        {
            Booth.fnStopRecord();
            string path = serverWebUri + "/video/" + dirName + "/" + "000.mp4";
            resource = new Resource();
            resource.Apptype = AppType.ʵ��չ̨;
            resource.FileType = "MP4";
            resource.FilePath = path;
            resource.CreateTime = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            AppInterface.CreateNewResourceU4(resource);
        }

        // ��ͼ
        private void btnSnapshot_Click(object sender, EventArgs e)
        {
            // ��ͼʱ����U4��ͼ���ƣ�yyyyMMddHHmmss.jpg
            string dirname = DateTime.Now.ToString("yyyyMMdd");
            string filename = DateTime.Now.ToString("yyyyMMddHHmmss") + ".jpg";
            Booth.fnCatchPic(dirname, filename);
            NoticeShow("��ͼ�ѱ��档");
            BLog.ToDB("����:" + filename);
            resource = new Resource();
            resource.FileType = "JPG";
            resource.FilePath = serverWebUri + "/picture/" + dirname + "/" + filename;
        }
        // �䱶 -
        private void btnFar_Click(object sender, EventArgs e)
        {
            //Booth.fnZoomOut();
            //Thread.Sleep(500);
            //Booth.fnZoomOut();
            NoticeShow("������С��");
        }
        // �䱶 +
        private void btnNear_Click(object sender, EventArgs e)
        {
            //Booth.fnZoomIn();
            //Thread.Sleep(500);
            //Booth.fnZoomIn();
            NoticeShow("���зŴ�");
        }
        // ¼�Ƽ�ʱ��
        private void timer1_Tick(object sender, EventArgs e)
        {
            t2 = DateTime.Now;
            lbRecordTime.Text = Convert.ToDateTime((t2 - t1).ToString()).ToString("HH:mm:ss");
        }
        // �򿪱���Ŀ¼
        private void btnOpenDir_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("iexplore.exe", "http://" + serverIp + "/project/booth/video");
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
            //NoticeShow("�ָ���ʼ״̬��");
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

        #region �����ק���μ��ֲ��Ŵ����
        private void panelCamera_MouseUp(object sender, MouseEventArgs e)
        {
            //int tmpW;
            //int tmpH;
            isMouseDown = false;
            pEnd = new Point(e.X, e.Y);
            Cursor.Clip = Rectangle.Empty;
            // ����
            #region �Ŵ����ѽ���
            /*
            if (!isDraw)
            {
                // �Ŵ�
                if (e.Button == MouseButtons.Right)
                {
                    //btnEnlargeReset_Click(null, null);
                }
                else if (e.Button == MouseButtons.Left)
                {
                    this.plCamera.Capture = false;
                    // ��ͣʱҲҪ�����Ҳ������
                    ButtonEnable(false);
                    // �Ŵ�
                    if (pStart != pEnd)
                    {
                        this.plCamera.Refresh();
                        isEnlarge = true;
                        // �������Σ�����16��9
                        if (MouseRect.Width / MouseRect.Height < bi)
                        {
                            tmpW = Convert.ToInt32((MouseRect.Height * bi - MouseRect.Width) / 2);
                            pStart.X = pStart.X - tmpW;
                            pEnd.X = pEnd.X + tmpW;
                            if (pStart.X < 0)
                            {
                                pStart.X = 0;
                                pEnd.X = pEnd.X + tmpW - pStart.X;
                            }

                            if (pEnd.X > plCamera.ClientRectangle.Right)
                            {
                                pEnd.X = plCamera.ClientRectangle.Right;
                                pStart.X = pStart.X - pEnd.X + plCamera.ClientRectangle.Right;
                            }
                        }
                        else
                        {
                            tmpH = Convert.ToInt32((MouseRect.Width / bi - MouseRect.Height) / 2);
                            pStart.Y = pStart.Y - tmpH;
                            pEnd.Y = pEnd.Y + tmpH;
                            if (pStart.Y < 0)
                            {
                                pStart.Y = 0;
                                pEnd.Y = pEnd.Y + tmpH - pStart.Y;
                            }

                            if (pEnd.Y > plCamera.ClientRectangle.Bottom)
                            {
                                pEnd.Y = plCamera.ClientRectangle.Bottom;
                                pStart.Y = pStart.Y - pEnd.Y + plCamera.ClientRectangle.Bottom;
                            }
                        }
                        Booth.fnOnLButtonUp(pStart.X, pStart.Y, pEnd.X, pEnd.Y);
                        MouseRect = Rectangle.Empty;
                        Rectangle rect = this.RectangleToScreen(MouseRect);
                        ControlPaint.DrawReversibleFrame(MouseRect, Color.Red, FrameStyle.Dashed);
                        ImageFromHandle(plCamera.Handle, ref gp1);
                    }
                }
            }
            */
            #endregion
        }

        private void panelCamera_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                if (isDraw)
                {
                    isPause = true;
                    pStart = new Point(e.X, e.Y);// ?
                    Booth.fnOnLButtonDown();
                    DrawRectangle();
                    isMouseDown = true;
                    DrawStart(e.Location);
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

        private void ResizeToRectangle(Point p)
        {
            DrawRectangle();
            MouseRect.Width = p.X - MouseRect.Left;
            MouseRect.Height = p.Y - MouseRect.Top;
            DrawRectangle();
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
            Cursor.Clip = this.RectangleToScreen(new Rectangle(plCamera.Location, plCamera.Size));
            
            MouseRect = new Rectangle(StartPoint.X, StartPoint.Y, 0, 0);
        }
        #endregion
        // ������ע
        int i;
        private void btnSaveComment_Click(object sender, EventArgs e)
        {
            i = saveCommentInterval;
            if (imglist1.Count < maxCommentImageCount)
            {
                string imgName = string.Format("p_{0}.PNG", DateTime.Now.ToString("yyyyMMddHHmmssfff"));
                string imgPath = SAVEPATH + PICPATH + "\\" + imgName;

                if (img == null)
                {
                    ImageFromControl(ref gp1);
                }

                img.Save(imgPath, System.Drawing.Imaging.ImageFormat.Png);
                try
                {
                    string dirName = DateTime.Now.ToString("yyyyMMdd");
                    Booth.fnSendPic(imgPath, dirName, imgName);
                    resource = new Resource();
                    resource.Apptype = AppType.ʵ��չ̨;
                    resource.FileType = "PNG";
                    resource.FilePath = serverWebUri + "/picture/" + dirName + "/" + imgName;
                    AppInterface.CreateNewResourceU4(resource);
                }
                catch
                {
                    MessageBox.Show("����ͼƬ����");
                }
                imglist1.AddPic(imgPath);
                NoticeShow("��ע�ѱ��档");
                btnSaveComment.Text = "������ע(" + i.ToString() + ")";
                timer3.Start();
                btnSaveComment.Enabled = false;
            }
            else
            {
                NoticeShow(string.Format("�����ʷ�б�ֻ�ܱ���{0}����ע������պ��ٱ��档", maxCommentImageCount));
            }
        }
        // ��Ļ��ͼ
        private void ImageFromControl(ref Graphics g)
        {
            Bitmap bit = new Bitmap(plCamera.Width, plCamera.Height);//ʵ����һ���ʹ���һ�����bitmap
            g = Graphics.FromImage(bit);
            g.CompositingQuality = CompositingQuality.HighQuality;//������Ϊ���
            //g.CopyFromScreen(this.Left,this.Top,0,0,new Size(this.Width,this.Height));//������������ΪͼƬ
            g.CopyFromScreen(plCamera.PointToScreen(Point.Empty), Point.Empty, plCamera.Size);//ֻ����ĳ���ؼ���������panel��Ϸ����
            img = bit;
        }

        #region �Ӵ������л�ȡͼ��
        /*
        private void ImageFromHandle(IntPtr handle, ref Graphics g)
        {
            Rectangle rect = Rectangle.Empty;
            // ��ȡָ������Ĵ��� Rectangle
            IntPtr result = GetWindowRect(handle, ref rect);
            if (result != IntPtr.Zero) // ����ɹ���ȡ
            {
                img = new Bitmap(rect.Width, rect.Height);
                g = Graphics.FromImage(img);
                g.SmoothingMode = SmoothingMode.AntiAlias;  //ʹ��ͼ������ߣ����������
                //g.InterpolationMode = InterpolationMode.HighQualityBicubic;
                //g.CompositingQuality = CompositingQuality.HighQuality;

                g.CopyFromScreen(rect.Location, Point.Empty, rect.Size, CopyPixelOperation.SourceCopy);

                g.DrawImage(img, 0, 0, img.Width, img.Height);
                // ��ͼƬ���Ƶ�������
                // ����ֱ��ճ���� Excel
                // ʹ�� img.Save(fileName) ��������ֱ�ӱ���Ϊ�ļ�
                // Clipboard.SetImage(img); // ���浽������
            }
        }
         */
        #endregion

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
                //gp.InterpolationMode = InterpolationMode.HighQualityBicubic;
                //gp.CompositingQuality = CompositingQuality.HighQuality;

                ImageFromControl(ref gp1);
                NoticeShow("�Ѿ���ʼ��ע��");
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
                RecordStop(dirName);
                this.Dispose(true);
                Application.Exit();
            }
        }

        private void timer3_Tick(object sender, EventArgs e)
        {
            if (i <= saveCommentInterval && i > 1)
            {
                i = i - 1;
                btnSaveComment.Text = "������ע(" + i.ToString() + ")";
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

        private void buttonX1_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start(serverWebUri + "/picture");
        }

        private void panel4_Resize(object sender, EventArgs e)
        {
            PlCarmera_Resize();
        }

        private void btnFar_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
                Booth.fnZoomIn();
        }

        private void btnFar_MouseUp(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
                Booth.fnZoomIn();
        }

        private void btnNear_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
                Booth.fnZoomOut();
        }

        private void btnNear_MouseUp(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
                Booth.fnZoomOut();
        }
    }
}