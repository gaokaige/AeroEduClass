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
        #region 声明
        string serverIp;
        string serverWebUri;
        const string SAVEPATH = @"C:\实物展台录制文件\";
        const string PICPATH = "picture";
        bool isRecord = false;
        DateTime t1, t2;
        bool isMouseDown;// 鼠标是否按下
        bool isPause;//是否暂停
        bool isEnlarge; // 是否放大
        Rectangle MouseRect;// 鼠标拖拽的矩形
        Point pStart, pEnd;// 鼠标拖拽后，起点与终点的坐标
        bool isDraw = false;// 画笔开关是否打开

        Graphics gp = null;//显示的画板
        Graphics gp1 = null;//隐藏的画板
        Graphics gp2 = null;//最小化时保存当前图像的画板
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
            //// 获取屏幕分辨率
            //Rectangle boundsRect = Screen.GetBounds(this);
            //Rectangle workingRect =  Screen.GetWorkingArea(this);

            Init();
            btnColor.SelectedColor = Color.Red;
            SetPen(ref pen);
            imglist1.Visible = true;
            comboTree1.SelectedIndex = 1;
        }
        // 初始化
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
        /// 建立各种目录 
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
        // 录制
        string dirName = string.Empty;
        private void btnRecordControl_Click(object sender, EventArgs e)
        {
            
            if (!isRecord)
            {
                lbRecordTime.Text = "视频分析";
                lbRecordTime.Refresh();
                // 父目录名
                dirName = DateTime.Now.ToString("yyyyMMdd");
                Booth.fnStartRecord(dirName);

                Thread.Sleep(6000);
                isRecord = true;
                lbRecordTime.Text = "开始录制";
                lbRecordTime.Refresh();
                Thread.Sleep(1000);
                btnRecordControl.Text = "停止";
                btnRecordControl.Tooltip = "停止录像";
                t1 = DateTime.Now;
                timer1.Start();
                btnComment.Enabled = false;
                btnNear.Enabled = false;
                btnFar.Enabled = false;
                imglist1.Enabled = false;
                btnSnapshot.Enabled = false;
                NoticeShow("开始录像。");
                BLog.ToDB("开始录像");
            }
            else
            {
                img = null;
                t2 = DateTime.Now;
                lbRecordTime.Text = Convert.ToDateTime((t2 - t1).ToString()).ToString("HH:mm:ss");
                
                isRecord = false;
                RecordStop(dirName);
                btnRecordControl.Text = "录像";
                btnRecordControl.Tooltip = "开始录像";
                t2 = DateTime.Now;
                timer1.Stop();
                btnComment.Enabled = true;
                btnNear.Enabled = true;
                btnFar.Enabled = true;
                imglist1.Enabled = true;
                btnSnapshot.Enabled = true;
                NoticeShow("录像结束。");
                BLog.ToDB("停止录像");
            }
        }

        // 停止
        void RecordStop(string dirName)
        {
            Booth.fnStopRecord();
            string path = serverWebUri + "/video/" + dirName + "/" + "000.mp4";
            resource = new Resource();
            resource.Apptype = AppType.实物展台;
            resource.FileType = "MP4";
            resource.FilePath = path;
            resource.CreateTime = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            AppInterface.CreateNewResourceU4(resource);
        }

        // 截图
        private void btnSnapshot_Click(object sender, EventArgs e)
        {
            // 截图时传给U4截图名称：yyyyMMddHHmmss.jpg
            string dirname = DateTime.Now.ToString("yyyyMMdd");
            string filename = DateTime.Now.ToString("yyyyMMddHHmmss") + ".jpg";
            Booth.fnCatchPic(dirname, filename);
            NoticeShow("截图已保存。");
            BLog.ToDB("拍照:" + filename);
            resource = new Resource();
            resource.FileType = "JPG";
            resource.FilePath = serverWebUri + "/picture/" + dirname + "/" + filename;
        }
        // 变倍 -
        private void btnFar_Click(object sender, EventArgs e)
        {
            //Booth.fnZoomOut();
            //Thread.Sleep(500);
            //Booth.fnZoomOut();
            NoticeShow("进行缩小。");
        }
        // 变倍 +
        private void btnNear_Click(object sender, EventArgs e)
        {
            //Booth.fnZoomIn();
            //Thread.Sleep(500);
            //Booth.fnZoomIn();
            NoticeShow("进行放大。");
        }
        // 录制计时器
        private void timer1_Tick(object sender, EventArgs e)
        {
            t2 = DateTime.Now;
            lbRecordTime.Text = Convert.ToDateTime((t2 - t1).ToString()).ToString("HH:mm:ss");
        }
        // 打开保存目录
        private void btnOpenDir_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("iexplore.exe", "http://" + serverIp + "/project/booth/video");
        }
        // 放大后的恢复 与 暂停恢复
        private void btnEnlargeReset_Click(object sender, EventArgs e)
        {
            img = null;

            EnlargeReset();
            plCamera.Refresh();
            ButtonEnable(true);
            // 画笔关闭
            isDraw = false;
            btnComment.Text = "开始批注";
            DisablePenControl();
            btnRecordControl.Enabled = true;
            //NoticeShow("恢复初始状态。");
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

        // 放大恢复
        private void EnlargeReset()
        {
            Booth.fnOnRButtonDown();
            isEnlarge = false;
            isPause = false;
        }

        #region 鼠标拖拽矩形及局部放大代码
        private void panelCamera_MouseUp(object sender, MouseEventArgs e)
        {
            //int tmpW;
            //int tmpH;
            isMouseDown = false;
            pEnd = new Point(e.X, e.Y);
            Cursor.Clip = Rectangle.Empty;
            // 画笔
            #region 放大功能已禁用
            /*
            if (!isDraw)
            {
                // 放大
                if (e.Button == MouseButtons.Right)
                {
                    //btnEnlargeReset_Click(null, null);
                }
                else if (e.Button == MouseButtons.Left)
                {
                    this.plCamera.Capture = false;
                    // 暂停时也要锁定右侧控制区
                    ButtonEnable(false);
                    // 放大
                    if (pStart != pEnd)
                    {
                        this.plCamera.Refresh();
                        isEnlarge = true;
                        // 构建矩形，满足16：9
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
            //这是设置鼠标筐选时鼠标的移动区域 和控件对鼠标的捕获
            //Cursor.Clip = this.RectangleToScreen(new Rectangle(0, 0, ClientSize.Width, ClientSize.Height));
            Cursor.Clip = this.RectangleToScreen(new Rectangle(plCamera.Location, plCamera.Size));
            
            MouseRect = new Rectangle(StartPoint.X, StartPoint.Y, 0, 0);
        }
        #endregion
        // 保存批注
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
                    resource.Apptype = AppType.实物展台;
                    resource.FileType = "PNG";
                    resource.FilePath = serverWebUri + "/picture/" + dirName + "/" + imgName;
                    AppInterface.CreateNewResourceU4(resource);
                }
                catch
                {
                    MessageBox.Show("保存图片出错");
                }
                imglist1.AddPic(imgPath);
                NoticeShow("批注已保存。");
                btnSaveComment.Text = "保存批注(" + i.ToString() + ")";
                timer3.Start();
                btnSaveComment.Enabled = false;
            }
            else
            {
                NoticeShow(string.Format("浏览历史列表只能保存{0}个批注，请清空后再保存。", maxCommentImageCount));
            }
        }
        // 屏幕截图
        private void ImageFromControl(ref Graphics g)
        {
            Bitmap bit = new Bitmap(plCamera.Width, plCamera.Height);//实例化一个和窗体一样大的bitmap
            g = Graphics.FromImage(bit);
            g.CompositingQuality = CompositingQuality.HighQuality;//质量设为最高
            //g.CopyFromScreen(this.Left,this.Top,0,0,new Size(this.Width,this.Height));//保存整个窗体为图片
            g.CopyFromScreen(plCamera.PointToScreen(Point.Empty), Point.Empty, plCamera.Size);//只保存某个控件（这里是panel游戏区）
            img = bit;
        }

        #region 从窗体句柄中获取图像
        /*
        private void ImageFromHandle(IntPtr handle, ref Graphics g)
        {
            Rectangle rect = Rectangle.Empty;
            // 获取指定句柄的窗口 Rectangle
            IntPtr result = GetWindowRect(handle, ref rect);
            if (result != IntPtr.Zero) // 如果成功获取
            {
                img = new Bitmap(rect.Width, rect.Height);
                g = Graphics.FromImage(img);
                g.SmoothingMode = SmoothingMode.AntiAlias;  //使绘图质量最高，即消除锯齿
                //g.InterpolationMode = InterpolationMode.HighQualityBicubic;
                //g.CompositingQuality = CompositingQuality.HighQuality;

                g.CopyFromScreen(rect.Location, Point.Empty, rect.Size, CopyPixelOperation.SourceCopy);

                g.DrawImage(img, 0, 0, img.Width, img.Height);
                // 将图片复制到剪贴板
                // 可以直接粘贴到 Excel
                // 使用 img.Save(fileName) 方法可以直接保存为文件
                // Clipboard.SetImage(img); // 保存到剪贴板
            }
        }
         */
        #endregion

        // 最小化
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
        // 重绘
        protected override void OnPaint(PaintEventArgs e)
        {
            base.OnPaint(e);
            if (img != null)
                ReDraw();
        }
        // 重绘
        private void ReDraw()
        {
            gp2 = plCamera.CreateGraphics();
            gp2.DrawImage(img, 0, 0, img.Width, img.Height);
        }
        // 更改颜色
        private void btnColor_SelectedColorChanged(object sender, EventArgs e)
        {
            SetPen(ref pen);
        }
        // 设置画笔
        private void SetPen(ref Pen pen)
        {
            pen = new Pen(btnColor.SelectedColor, penWidth);
            pen.LineJoin = LineJoin.Round;
            pen.StartCap = LineCap.Round;
            pen.EndCap = LineCap.Round;
        }
        // 开始批注
        private void btnComment_Click(object sender, EventArgs e)
        {
            isDraw = !isDraw;
            if (isDraw)
            {
                Booth.fnOnLButtonDown();
                isPause = true;
                this.btnComment.Text = "结束批注";
                EnablePenControl();
                btnRecordControl.Enabled = false;
                btnNear.Enabled = false;
                btnFar.Enabled = false;
                gp = plCamera.CreateGraphics();
                gp.SmoothingMode = SmoothingMode.AntiAlias;  //使绘图质量最高，即消除锯齿
                //gp.InterpolationMode = InterpolationMode.HighQualityBicubic;
                //gp.CompositingQuality = CompositingQuality.HighQuality;

                ImageFromControl(ref gp1);
                NoticeShow("已经开始批注。");
            }
            else
            {
                this.btnComment.Text = "开始批注";
                DisablePenControl();
                btnRecordControl.Enabled = true;
                btnNear.Enabled = true;
                btnFar.Enabled = true;

                btnEnlargeReset_Click(null, null);
                NoticeShow("已经结束批注。");
            }
        }
        // 通知消失
        private void timer2_Tick(object sender, EventArgs e)
        {
            lbNotice.Visible = false;
            lbNotice.Text = "";
        }
        // 通知
        void NoticeShow(string str)
        {
            timer2.Stop();
            timer2.Start();
            lbNotice.Text = "提示：" + str;
            lbNotice.Visible = true;
        }
        // 点击批注历史
        private void imglist1_PictureBoxClick(int i)
        {
            isDraw = true;
            isPause = true;
            Booth.fnOnLButtonDown();
            this.btnComment.Text = "结束批注";
            EnablePenControl();
            btnRecordControl.Enabled = false;
            btnNear.Enabled = false;
            btnFar.Enabled = false;
            gp = plCamera.CreateGraphics();
            gp.SmoothingMode = SmoothingMode.AntiAlias;  //使绘图质量最高，即消除锯齿
            //gp.InterpolationMode = InterpolationMode.HighQualityBicubic;
            //gp.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.High;
            //gp.CompositingQuality = CompositingQuality.HighQuality;
            //gp.Clear(Color.Transparent);
            img = Image.FromFile(imglist1.GetImage(i));
            gp.DrawImage(img, 0, 0, plCamera.Width, plCamera.Height);
            ImageFromControl(ref gp1);
        }
        // 画笔粗细选择
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
        // panel1重绘
        private void panel1_Paint(object sender, PaintEventArgs e)
        {
            if (img != null)
                ReDraw();
        }
        // 退出时保存录像
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
                btnSaveComment.Text = "保存批注(" + i.ToString() + ")";
            }
            else
            {
                if (isDraw)
                    btnSaveComment.Enabled = true;
                timer3.Stop();
                i = saveCommentInterval;
                btnSaveComment.Text = "保存批注";
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