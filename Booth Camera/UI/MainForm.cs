using AeroEduClass.Lib;
using AeroEduClass.Properties;
using AeroEduLib;
using cs_framework;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO;
using System.Threading;
using System.Windows.Forms;

namespace AeroEduClass.UI
{
    public partial class MainForm : Form
    {
        #region 字段
        Config config;
        bool isRecord = false;// 是否是录制状态
        bool isMouseDown;// 鼠标是否按下
        bool isPen;// 是否是画笔状态
        bool isEraser;// 是否是橡皮擦状态
        Rectangle MouseRect;// 鼠标拖拽的矩形
        Point pStart, pEnd, ppStart;// 鼠标拖拽后，起点与终点的坐标
        bool isDraw = false;// 画笔开关是否打开
        bool isLargeEraze = false;
        CSAVFrameWork m_csAVFrm;
        int audioPreviewerId, videoPreviewerId, rtspRecorderId;// 预览ID
        string audioName;// 音频设备名称
        Graphics gpMain = null;// 显示的画板
        Graphics gpHide = null;// 隐藏的画板
        Graphics gpReDraw = null;// 最小化时保存当前图像的画板
        Graphics gpEra = null;// 储存底图
        Graphics gpHistory = null;// 批注历史记录
        Pen pen = null;
        Image img = null;// 当前图像
        Image imgEra = null;// 橡皮擦图像
        int penWidth = 2;//笔粗细
        int eraWidth = 18;//橡皮擦粗细
        Rectangle rect = Rectangle.Empty;
        List<Bitmap> Progress = new List<Bitmap>();
        Stack<Bitmap> Backup = new Stack<Bitmap>();
        List<List<Bitmap>> lmgList = new List<List<Bitmap>>();
        List<Stack<Bitmap>> lmgStack = new List<Stack<Bitmap>>();
        int zoomStep = 5;
        Resource resource;
        string fileName;
        #endregion

        public MainForm()
        {
            InitializeComponent();
            #region 按钮背景图片设置
            UITools.AddButtonStyle(btnZoom, Resources.缩放_默认, Resources.缩放_默认, Resources.缩放_选中, Resources.缩放_不可选, Resources.缩放_默认);
            UITools.AddButtonStyle(btnRecord, Resources.录像_默认, Resources.录像_不可选);
            UITools.AddButtonStyle(btnSnapshot, Resources.拍照_默认, Resources.拍照_默认, Resources.拍照_选中, Resources.拍照_不可选, Resources.拍照_默认);
            UITools.AddButtonStyle(btnSubject, Resources.科目_默认, Resources.科目_默认, Resources.科目_选中, Resources.科目_不可选, Resources.科目_默认);
            UITools.AddButtonStyle(btnJoinErrCol, Resources.新增错题_默认, Resources.新增错题_默认, Resources.新增错题_选中, Resources.新增错题_不可选, Resources.新增错题_默认);
            UITools.AddButtonStyle(btnOpendir, Resources.视频目录_默认, Resources.视频目录_默认, Resources.视频目录_选中, Resources.视频目录_不可选, Resources.视频目录_默认);
            UITools.AddButtonStyle(btnCommentPath, Resources.批注目录_默认, Resources.批注目录_默认, Resources.批注目录_选中, Resources.批注目录_不可选, Resources.批注目录_默认);
            UITools.AddButtonStyle(btnOpenErr, Resources.错题目录_默认, Resources.错题目录_默认, Resources.错题目录_选中, Resources.错题目录_不可选, Resources.错题目录_默认);
            UITools.AddButtonStyle(btnSetting, Resources.设置_默认, Resources.设置_默认, Resources.设置_选中, Resources.设置_不可选, Resources.设置_默认);
            UITools.AddButtonStyle(btnBackward, Resources.后退_默认, Resources.后退_默认, Resources.后退_激活, Resources.后退_默认, Resources.后退_默认);
            UITools.AddButtonStyle(btnForward, Resources.前进_默认, Resources.前进_默认, Resources.前进_激活, Resources.前进_默认, Resources.前进_默认);
            UITools.AddButtonStyle(btnExitComment, Resources.批注_结束, Resources.批注_结束, Resources.批注_结束, Resources.批注_结束, Resources.批注_结束);
            UITools.AddButtonStyle(btnSaveComment, Resources.保存_默认, Resources.保存_默认, Resources.保存_激活, Resources.保存_默认, Resources.保存_默认);
            UITools.AddButtonStyle(btnPen, Resources.画笔_默认, Resources.画笔_不可选);
            UITools.AddButtonStyle(btnEraser, Resources.橡皮擦_默认, Resources.橡皮擦_不可选);
            #endregion
            cbEraser.PopupLocation = new Point(0, -100);
            config = new Config();
            lbZoomStep.Text = zoomStep.ToString();
            if (config.ShowCenterPoint == 1)
                pbCenterStar.Visible = false;
            if (config.DefaultUI == 1)
            {
                plImageList.Visible = false;
                pbCenterStar.Location = new Point(pbCenterStar.Location.X, pbCenterStar.Location.Y + 50);
            }
        }

        private void MainForm_Resize(object sender, EventArgs e)
        {
            // 设置视频窗口比例为16:9
            plCamera.Height = (plCamera.Width * 9) / 16;
            if (img != null)
                ReDraw();
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            Init();
            cbPenThickness.SelectedIndex = 0;
            btnColor.SelectedColor = Color.Red;
            SetPen(ref pen);
            commentImageList1.Visible = true;
            cbSubject.SelectedIndex = 0;
            cbEraser.SelectedIndex = 0;
            this.Cursor = DefaultCursor;
        }
        // 初始化
        private void Init()
        {
            Booth.fnInit(this.Handle, plCamera.Handle);
            Preview();
            BuildDir();
            btnForward.Enabled = false;
            btnBackward.Enabled = false;
        }
        /// <summary>
        /// 建立各种目录 
        /// </summary>
        private void BuildDir()
        {
            if (!Directory.Exists(config.VideoSavePath))
                Directory.CreateDirectory(config.VideoSavePath);
            if (!Directory.Exists(config.PictureSavePath))
                Directory.CreateDirectory(config.PictureSavePath);
            if (!Directory.Exists(config.CommentSavePath))
                Directory.CreateDirectory(config.CommentSavePath);
            if (!Directory.Exists(config.ErrColSavePath))
                Directory.CreateDirectory(config.ErrColSavePath);

            if (config.Subject.Length > 0)
            {
                cbSubject.Items.Add(new DevComponents.AdvTree.Node("选择科目"));
                foreach (string item in config.Subject)
                {
                    cbSubject.Items.Add(new DevComponents.AdvTree.Node(item));
                    if (!Directory.Exists(config.ErrColSavePath + "\\" + item))
                        Directory.CreateDirectory(config.ErrColSavePath + "\\" + item);
                }
            }
        }
        // 预览
        void Preview()
        {
            m_csAVFrm = new CSAVFrameWork();
            CSAVFrameWork.initialize();
            audioName = CSAVFrameWork.getAudioDefaultInputDeviceName();
            audioPreviewerId = m_csAVFrm.startPreview(IntPtr.Zero, emAVDType.emUSBMicroPhone, audioName);
            videoPreviewerId = m_csAVFrm.startPreview(IntPtr.Zero, emAVDType.emRtsp, config.RTSPAddress);
        }
        // 录像
        void RecordStart()
        {
            BLog.ToDB("开始录像");
            string timespan = DateTime.Now.ToString("yyyy-MM-dd HH-mm-ss");
            string packName = config.VideoSavePath + "\\" + timespan;
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
        // 停止
        void RecordStop()
        {
            m_csAVFrm.stopRecordMp4(rtspRecorderId);
            BLog.ToDB("停止录像");
            resource.File = new FileInfo(fileName);
            resource.Apptype = AppType.实物展台;
            AppInterface.CreateNewResource(resource);
        }

        // 录制
        private void btnRecord_Click(object sender, EventArgs e)
        {
            if (!isRecord)
            {
                btnRecord.BackgroundImage = Resources.录像_停止;
                RecordStart();
                isRecord = true;
                //lbRecordTime.Text = "00:00:00";
                timer1.Start();
                plImageList.Enabled = false;
                btnSubject.Enabled = false;
                btnJoinErrCol.Enabled = false;
                btnOpenErr.Enabled = false;
                btnSnapshot.Enabled = false;
                btnOpendir.Enabled = false;
                btnSetting.Enabled = false;
                DisableEraserControl();
                DisablePenControl();

                NoticeShow("开始录像");
            }
            else
            {
                btnRecord.BackgroundImage = Resources.录像_默认;
                img = null;
                imgEra = null;
                RecordStop();
                isRecord = false;
                timer1.Stop();

                Booth.fnOnRButtonDown();
                recordSenconds = 0;
                plImageList.Enabled = true;
                btnSubject.Enabled = true;
                btnJoinErrCol.Enabled = true;
                btnOpenErr.Enabled = true;
                btnSnapshot.Enabled = true;
                btnOpendir.Enabled = true;
                btnSetting.Enabled = true;
                EnableEraserControl();
                EnablePenControl();
                NoticeShow("录像结束");
            }
        }
        // 截图
        private void btnSnapshot_Click(object sender, EventArgs e)//考虑优化去掉
        {
            string picPath = string.Format(config.PictureSavePath + @"\{0}\{1}.bmp", DateTime.Now.ToString("yyyyMMdd"), DateTime.Now.ToString("yyyyMMddHHmmssfff"));

            if (!Directory.Exists(config.PictureSavePath + "\\" + DateTime.Now.ToString("yyyyMMdd")))
                Directory.CreateDirectory(config.PictureSavePath + "\\" + DateTime.Now.ToString("yyyyMMdd"));
            Booth.fnCatchPic(picPath);
            NoticeShow("截图已保存");
            BLog.ToDB("拍照:" + picPath);
            if (!string.IsNullOrEmpty(picPath))
            {
                resource = new Resource();
                try
                {
                    resource.Apptype = AppType.实物展台;
                    resource.File = new FileInfo(picPath);
                    AppInterface.CreateNewResource(resource);
                }
                catch { }
            }
        }

        // 录制计时器
        int recordSenconds = 0;
        private void timer1_Tick(object sender, EventArgs e)
        {
            recordSenconds++;
            //lbRecordTime.Text = Convert.ToDateTime("00:00:00").AddSeconds(recordSenconds).ToString("HH:mm:ss");
        }
        // 打开保存目录
        private void btnOpendir_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start(config.VideoSavePath);
        }
        // 停止批注
        private void StopComment(object sender, EventArgs e)
        {
            img = null;
            imgEra = null;
            Booth.fnOnRButtonDown();
            plCamera.Refresh();
            ButtonEnable(true);
            btnPen.Enabled = true;
            btnEraser.Enabled = true;
            isDraw = false;
            isLargeEraze = false;
            isPen = false;
            isEraser = false;
            EnableRecord();
        }

        private void DisableRecord()
        {
            btnRecord.Enabled = false;
        }

        private void EnableRecord()
        {
            btnRecord.Enabled = true;
        }

        private void DisablePenControl()
        {
            btnPen.Enabled = false;
            isPen = false;
        }

        private void EnablePenControl()
        {
            btnPen.Enabled = true;
        }

        private void DisableEraserControl()
        {
            btnEraser.Enabled = false;
            isEraser = false;
        }

        private void EnableEraserControl()
        {
            btnEraser.Enabled = true;
        }

        [System.Runtime.InteropServices.DllImport("user32.dll")]
        private static extern IntPtr GetWindowRect(IntPtr hwnd, ref Rectangle lpRect);

        private void plCamera_MouseUp(object sender, MouseEventArgs e)
        {
            isMouseDown = false;
            pEnd = new Point(e.X, e.Y);
            Backup.Clear();//只要下笔就清空前进堆栈的内容
            btnForward.Enabled = false;
            btnBackward.Enabled = true;//有必要？

            Cursor.Clip = Rectangle.Empty;//?

            if (isLargeEraze)//如果是快速擦除
            {
                largeEraser(pStart, pEnd);
            }

            if (ppStart.X != pEnd.X || ppStart.Y != pEnd.Y)//如果下笔点和起始点不一样，则保存图片
            {
                Bitmap bit = new Bitmap(plCamera.Width, plCamera.Height);//实例化一个和窗体一样大的bitmap
                gpHistory = Graphics.FromImage(bit);
                gpHistory.CompositingQuality = CompositingQuality.HighQuality;//质量设为最高
                //g.CopyFromScreen(this.Left,this.Top,0,0,new Size(this.Width,this.Height));//保存整个窗体为图片
                gpHistory.CopyFromScreen(plCamera.PointToScreen(Point.Empty), Point.Empty, plCamera.Size);//只保存某个控件（这里是panel游戏区）

                Progress.Add(bit);
            }
        }

        private void plCamera_MouseDown(object sender, MouseEventArgs e)
        {
            plCamera.Focus();
            if (!isRecord)
            {
                if (e.Button == MouseButtons.Left)
                {
                    if (!isEraser)
                        isPen = true;
                    btnForward.Visible = true;
                    btnBackward.Visible = true;
                    btnExitComment.Visible = true;
                    btnSaveComment.Visible = true;
                    EnablePenControl();
                    EnableEraserControl();
                    DisableRecord();
                    btnZoom.Enabled = false;

                    if (!isDraw)
                    {
                        isDraw = true;
                        Booth.fnOnLButtonDown();
                        gpMain = plCamera.CreateGraphics();
                        gpMain.SmoothingMode = SmoothingMode.AntiAlias;  //使绘图质量最高，即消除锯齿
                        gpMain.InterpolationMode = InterpolationMode.HighQualityBicubic;
                        gpMain.CompositingQuality = CompositingQuality.HighQuality;
                        gpEra = plCamera.CreateGraphics();
                        gpEra.SmoothingMode = SmoothingMode.AntiAlias;
                        gpEra.InterpolationMode = InterpolationMode.HighQualityBicubic;
                        gpEra.CompositingQuality = CompositingQuality.HighQuality;
                        ImageFromControl(ref gpHide);
                        ImageFromControl(ref gpEra, ref imgEra);
                        Progress.Add(new Bitmap(imgEra));
                    }

                    if (isDraw)
                    {
                        ppStart = new Point(e.X, e.Y);
                        pStart = new Point(e.X, e.Y);
                        Booth.fnOnLButtonDown();
                        DrawStart(e.Location);
                        isMouseDown = true;
                    }
                }
            }
        }

        private void plCamera_MouseMove(object sender, MouseEventArgs e)
        {
            if (isMouseDown)
            {
                if (isPen)
                    DrawLine(e.Location);

                if (isEraser && !isLargeEraze)
                    Eraser(e.Location);

                if (isLargeEraze)
                    ResizeToRectangle(e.Location);
            }
        }

        private void DrawLine(Point p)
        {
            gpMain.DrawCurve(pen, new Point[2] { pStart, p });//测试
            gpHide.DrawLine(pen, pStart, p);
            //gp.DrawLine(pen, pStart, p);
            pStart = p;
        }

        private void ResizeToRectangle(Point p)
        {
            ControlPaint.DrawReversibleFrame(this.RectangleToScreen(MouseRect), Color.Gray, FrameStyle.Dashed);//其中this.RectangleToScreen(MouseRect)是把以软件为坐标系的矩形转换成以屏幕为坐标系的矩形，因为DrawReversibleFrame是以屏幕为坐标轴绘制边框
            MouseRect.Width = p.X - MouseRect.Left;
            MouseRect.Height = p.Y - MouseRect.Top;
            ControlPaint.DrawReversibleFrame(this.RectangleToScreen(MouseRect), Color.Gray, FrameStyle.Dashed);
        }

        private void DrawStart(Point StartPoint)
        {
            this.plCamera.Capture = true;
            //这是设置鼠标筐选时鼠标的移动区域 和控件对鼠标的捕获
            //Cursor.Clip = this.RectangleToScreen(new Rectangle(0, 0, ClientSize.Width, ClientSize.Height));
            Cursor.Clip = this.RectangleToScreen(this.plCamera.ClientRectangle);//规定边界
            MouseRect = new Rectangle(StartPoint.X, StartPoint.Y, 0, 0);//
        }

        // 保存批注
        private void btnSaveComment_Click(object sender, EventArgs e)
        {
            BLog.ToDB("保存批注");
            if (commentImageList1.Count < config.MaxCommentImageCount)
            {
                string imgPath = string.Format(config.CommentSavePath + @"\{0}\{1}.PNG", DateTime.Now.ToString("yyyyMMdd"), DateTime.Now.ToString("yyyyMMddHHmmssfff"));

                if (!Directory.Exists(config.CommentSavePath + "\\" + DateTime.Now.ToString("yyyyMMdd")))
                    Directory.CreateDirectory(config.CommentSavePath + "\\" + DateTime.Now.ToString("yyyyMMdd"));

                if (img == null)//img有等于null的时候？
                {
                    ImageFromControl(ref gpHide);
                }
                img.Save(imgPath, System.Drawing.Imaging.ImageFormat.Png);
                commentImageList1.AddPic(imgPath);
                NoticeShow("批注已保存");
                List<Bitmap> temp1 = new List<Bitmap>();
                foreach (Bitmap img2 in Progress)
                    temp1.Add(img2);
                Stack<Bitmap> temp2 = new Stack<Bitmap>();
                foreach (Bitmap img2 in Backup)
                    temp2.Push(img2);
                lmgList.Add(temp1);
                lmgStack.Add(temp2);

                resource = new Resource();
                resource.Apptype = AppType.实物展台;
                resource.File = new FileInfo(imgPath);
                AppInterface.CreateNewResource(resource);
            }
            else
            {
                MessageBox.Show(string.Format("浏览历史列表只能保存{0}个批注，请清空后再保存", config.MaxCommentImageCount));
            }
        }
        // 屏幕截图

        private void ImageFromControl(ref Graphics g)//生成img文件
        {
            Bitmap bit = new Bitmap(plCamera.Width, plCamera.Height);//实例化一个和窗体一样大的bitmap
            g = Graphics.FromImage(bit);
            g.CompositingQuality = CompositingQuality.HighQuality;//质量设为最高
            //g.CopyFromScreen(this.Left,this.Top,0,0,new Size(this.Width,this.Height));//保存整个窗体为图片
            g.CopyFromScreen(plCamera.PointToScreen(Point.Empty), Point.Empty, plCamera.Size);//只保存某个控件（这里是panel游戏区）
            img = bit;
        }

        private void ImageFromControl(ref Graphics g, ref Image img)//生成img文件
        {
            Bitmap bit = new Bitmap(plCamera.Width, plCamera.Height);//实例化一个和窗体一样大的bitmap
            g = Graphics.FromImage(bit);
            g.CompositingQuality = CompositingQuality.HighQuality;//质量设为最高
            //g.CopyFromScreen(this.Left,this.Top,0,0,new Size(this.Width,this.Height));//保存整个窗体为图片
            g.CopyFromScreen(plCamera.PointToScreen(Point.Empty), Point.Empty, plCamera.Size);//只保存某个控件（这里是panel游戏区）
            img = bit;
        }

        // 退出程序
        private void btnExitApp_Click(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show("是否要退出？", "退出提示", MessageBoxButtons.YesNo);
            if (dr == DialogResult.Yes)
            {
                BLog.ToDB("退出程序");
                Application.Exit();
            }
        }

        // 最小化
        private void btnMinsize_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void ButtonEnable(bool enable)
        {
            btnOpendir.Enabled = enable;
            btnRecord.Enabled = enable;
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
            gpReDraw = plCamera.CreateGraphics();
            gpReDraw.DrawImage(img, 0, 0, img.Width, img.Height);
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

        // 结束批注
        private void btnExitComment_Click(object sender, EventArgs e)
        {
            BLog.ToDB("结束批注");
            isDraw = false;
            btnForward.Visible = false;
            btnBackward.Visible = false;
            btnSaveComment.Visible = false;
            btnExitComment.Visible = false;
            EnableRecord();
            btnZoom.Enabled = true;
            StopComment(null, null);
            Progress.Clear();
            Backup.Clear();
            btnForward.Enabled = false;
            btnBackward.Enabled = false;
            img = null;
            imgEra = null;
            NoticeShow("已经结束批注");
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
        private void commentImagelist1_PictureBoxClick(int i)
        {
            if (isPen || isEraser)
                isDraw = true;
            else
                isDraw = false;


            Booth.fnOnLButtonDown();
            //this.btnComment.Text = "结束批注";
            if (isPen)
            {
                EnablePenControl();
                DisableEraserControl();
            }
            if (isEraser)
            {
                EnableEraserControl();
                DisablePenControl();
            }
            btnRecord.Enabled = false;
            btnZoom.Enabled = false;
            gpMain = plCamera.CreateGraphics();
            gpMain.SmoothingMode = SmoothingMode.AntiAlias;  //使绘图质量最高，即消除锯齿

            img = Image.FromFile(commentImageList1.GetImage(i));

            Progress = new List<Bitmap>(lmgList[i]);
            Backup = new Stack<Bitmap>(lmgStack[i]);

            gpEra = Graphics.FromImage(Progress[0]);
            gpEra.CompositingQuality = CompositingQuality.HighQuality;//质量设为最高
            imgEra = Progress[0];

            gpMain.DrawImage(img, 0, 0, plCamera.Width, plCamera.Height);

            ImageFromControl(ref gpHide);
            if (Progress.Count > 1)
                btnBackward.Enabled = true;
            else
                btnBackward.Enabled = false;
            if (Backup.Count > 0)
                btnForward.Enabled = true;
            else
                btnForward.Enabled = false;
        }
        // 画笔粗细选择
        private void cbPenThickness_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (cbPenThickness.SelectedIndex)
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

        // 退出时保存录像
        private void MainForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (isRecord)
            {
                Booth.fnStopRecord();
            }
            CSAVFrameWork.uninitialize();
        }

        // 加入错题集：如果是批注状态，批注的图片入错题集，否则原始图片入错题集
        private void btnJoinErrCol_Click(object sender, EventArgs e)
        {
            if (cbSubject.SelectedIndex == 0)
            {
                MessageBox.Show("请选择科目.");
                return;
            }

            if (commentImageList1.Count < config.MaxCommentImageCount)
            {
                BLog.ToDB("加入错题集");

                btnJoinErrCol.Enabled = false;

                string dirName = config.ErrColSavePath + "\\" + cbSubject.Items[cbSubject.SelectedIndex].ToString() + "\\" + DateTime.Now.ToString("yyyyMMdd");
                if (!Directory.Exists(dirName))
                    Directory.CreateDirectory(dirName);

                string imgPath = dirName + "\\" + DateTime.Now.ToString("yyyyMMddHHmmssfff") + ".PNG";
                if (img == null)
                {
                    ImageFromControl(ref gpHide);
                }
                if (isPen)
                {
                    img.Save(imgPath, System.Drawing.Imaging.ImageFormat.Png);
                }
                else
                {
                    Graphics g = plCamera.CreateGraphics();
                    ImageFromControl(ref g);
                    img.Save(imgPath, System.Drawing.Imaging.ImageFormat.Png);
                }
                commentImageList1.AddPic(imgPath);

                List<Bitmap> temp1 = new List<Bitmap>();
                foreach (Bitmap img2 in Progress)
                    temp1.Add(img2);
                Stack<Bitmap> temp2 = new Stack<Bitmap>();
                foreach (Bitmap img2 in Backup)
                    temp2.Push(img2);
                lmgList.Add(temp1);
                lmgStack.Add(temp2);

                NoticeShow("已加入错题集");
                Thread.Sleep(1000);
                btnJoinErrCol.Enabled = true;
                img = null;
            }
            else
            {
                MessageBox.Show(string.Format("浏览历史列表只能保存{0}个批注，请清空后再保存", config.MaxCommentImageCount));
            }
        }
        // 打开错题集目录
        private void btnOpenErr_Click(object sender, EventArgs e)
        {
            BLog.ToDB("打开错题集");
            if (cbSubject.SelectedIndex == 0)
            {
                System.Diagnostics.Process.Start(config.ErrColSavePath);
            }
            else
            {
                System.Diagnostics.Process.Start(config.ErrColSavePath + "\\" + cbSubject.Items[cbSubject.SelectedIndex].ToString());
            }
        }

        private void btnCommentPath_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start(config.CommentSavePath);
            BLog.ToDB("打开批注目录");
        }
        // 变倍 -
        private void btnFar_Click(object sender, EventArgs e)
        {
            Booth.fnZoomOut(zoomStep);
            NoticeShow("进行缩小");
            BLog.ToDB("缩小画面");
        }
        // 变倍 +
        private void btnNear_Click(object sender, EventArgs e)
        {
            Booth.fnZoomIn(zoomStep);
            NoticeShow("进行放大");
            BLog.ToDB("放大画面");
        }

        private void cbEraser_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (cbEraser.SelectedIndex)
            {
                case 0:
                    isLargeEraze = false;
                    eraWidth = 18;
                    break;
                case 1:
                    isLargeEraze = false;
                    eraWidth = 24;
                    break;
                case 2:
                    isLargeEraze = false;
                    eraWidth = 30;
                    break;
                case 3:
                    this.Cursor = Cursors.Default;
                    isLargeEraze = true;
                    isPen = false;
                    DisablePenControl();
                    break;
            }
        }

        private void Eraser(Point p)
        {
            Rectangle r = new Rectangle(p.X, p.Y, eraWidth, eraWidth);
            gpHide.DrawImage(imgEra, r, r, GraphicsUnit.Pixel);
            gpMain.DrawImage(imgEra, r, r, GraphicsUnit.Pixel);
        }


        private void btnPen_Click(object sender, EventArgs e)
        {
            btnPen.BackgroundImage = Resources.画笔_选中;

            if (!isDraw)
            {
                gpMain = plCamera.CreateGraphics();
                //gp3 = gp;
                gpEra = plCamera.CreateGraphics();
                gpMain.SmoothingMode = SmoothingMode.AntiAlias;  //使绘图质量最高，即消除锯齿
                gpMain.InterpolationMode = InterpolationMode.HighQualityBicubic;
                gpMain.CompositingQuality = CompositingQuality.HighQuality;
                gpEra.SmoothingMode = SmoothingMode.AntiAlias;  //使绘图质量最高，即消除锯齿
                gpEra.InterpolationMode = InterpolationMode.HighQualityBicubic;
                gpEra.CompositingQuality = CompositingQuality.HighQuality;
                ImageFromControl(ref gpHide);
                ImageFromControl(ref gpEra, ref imgEra);
                Progress.Add(new Bitmap(imgEra));
            }
            isPen = true;
            isDraw = true;
            isEraser = false;
            isLargeEraze = false;
            plPenPopsetting.Visible = true;
            btnForward.Visible = true;
            btnBackward.Visible = true;
            btnExitComment.Visible = true;
            btnSaveComment.Visible = true;
            Booth.fnOnLButtonDown();
            EnablePenControl();
            DisableRecord();
            btnRecord.Enabled = false;
            btnZoom.Enabled = false;
            NoticeShow("已经开始批注");
            this.Cursor = this.DefaultCursor;
        }

        private void btnEraser_Click(object sender, EventArgs e)
        {
            if (!isDraw)
                return;
            btnEraser.BackgroundImage = Resources.橡皮擦_选中;
            isEraser = true;
            isPen = false;
            plEraser.Visible = true;
            if (!isDraw)
            {
                isDraw = true;
                gpMain = plCamera.CreateGraphics();
                gpMain.SmoothingMode = SmoothingMode.AntiAlias;  //使绘图质量最高，即消除锯齿
                gpMain.InterpolationMode = InterpolationMode.HighQualityBicubic;
                gpMain.CompositingQuality = CompositingQuality.HighQuality;

                gpEra = plCamera.CreateGraphics();
                gpEra.SmoothingMode = SmoothingMode.AntiAlias;
                gpEra.InterpolationMode = InterpolationMode.HighQualityBicubic;
                gpEra.CompositingQuality = CompositingQuality.HighQuality;

                ImageFromControl(ref gpHide);
                ImageFromControl(ref gpEra, ref imgEra);

                Progress.Add(new Bitmap(imgEra));
            }

            if (cbEraser.SelectedIndex == 3)
            {
                this.Cursor = this.DefaultCursor;
                isLargeEraze = true;
                isPen = false;
                cbEraser.Enabled = true;
                isEraser = true;
            }
            else
            {
                isEraser = true;
                isLargeEraze = false;
                EnableEraserControl();
            }
        }

        private void largeEraser(Point pStart, Point pEnd)//查找要覆盖的举行的左上角坐标，并覆盖
        {
            int Width = pStart.X - pEnd.X;
            int Height = pStart.Y - pEnd.Y;
            Point p = new Point(pEnd.X, pEnd.Y);
            Rectangle r = new Rectangle(p.X, p.Y, Width, Height);
            gpMain.DrawImage(imgEra, r, r, GraphicsUnit.Pixel);
            gpHide.DrawImage(imgEra, r, r, GraphicsUnit.Pixel);
        }

        private void backward_Click(object sender, EventArgs e)
        {
            if (Progress.Count <= 1)
                return;
            Backup.Push(Progress[Progress.Count - 1]);
            Progress.RemoveAt(Progress.Count - 1);

            Rectangle r = new Rectangle(0, 0, plCamera.Width, plCamera.Height);
            gpMain.DrawImage(Progress[Progress.Count - 1], r, r, GraphicsUnit.Pixel);
            gpHide.DrawImage(Progress[Progress.Count - 1], r, r, GraphicsUnit.Pixel);

            if (Progress.Count == 1)
                btnBackward.Enabled = false;
            btnForward.Enabled = true;
        }

        private void forward_Click(object sender, EventArgs e)
        {

            Progress.Add(Backup.Pop());
            Rectangle r = new Rectangle(0, 0, plCamera.Width, plCamera.Height);
            gpMain.DrawImage(Progress[Progress.Count - 1], r, r, GraphicsUnit.Pixel);
            gpHide.DrawImage(Progress[Progress.Count - 1], r, r, GraphicsUnit.Pixel);

            if (Backup.Count == 0)
                btnForward.Enabled = false;
            btnBackward.Enabled = true;
        }

        private void plTools_MouseEnter(object sender, EventArgs e)
        {
            this.Cursor = DefaultCursor;
        }

        private void plCamera_MouseEnter(object sender, EventArgs e)
        {
            if (isEraser && !isLargeEraze)
                switch (cbEraser.SelectedIndex)
                {
                    case 0:
                        this.Cursor = new Cursor(System.AppDomain.CurrentDomain.BaseDirectory + "光标 1.cur");
                        break;
                    case 1:
                        this.Cursor = new Cursor(System.AppDomain.CurrentDomain.BaseDirectory + "光标 2.cur");
                        break;
                    case 2:
                        this.Cursor = new Cursor(System.AppDomain.CurrentDomain.BaseDirectory + "光标 3.cur");
                        break;
                }

        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show("是否要清空批注历史？", "提示", MessageBoxButtons.YesNo);
            if (dr == DialogResult.Yes)
            {
                commentImageList1.Clear();
            }
            isDraw = false;
            DisablePenControl();
            DisableEraserControl();
            btnRecord.Enabled = true;
            btnZoom.Enabled = true;
            StopComment(null, null);
            Progress.Clear();
            Backup.Clear();
            lmgList.Clear();
            lmgStack.Clear();
            img = null;
            imgEra = null;
            NoticeShow("已经结束批注");
        }

        private void btnZoom_Click(object sender, System.EventArgs e)
        {
            plZoom.Visible = true;
            btnZoom.BackgroundImage = Resources.缩放_选中;
        }

        private void btnSubject_Click(object sender, System.EventArgs e)
        {
            cbSubject.DroppedDown = true;
        }

        private void btnSetting_Click(object sender, System.EventArgs e)
        {
            SettingForm settingForm = new SettingForm(config);
            settingForm.ShowDialog();
        }

        private void btnEraser_Leave(object sender, EventArgs e)
        {
            if (cbEraser.Focused)
            {
                btnEraser.Focus();
                return;
            }
            plEraser.Visible = false;
            btnEraser.BackgroundImage = Resources.橡皮擦_默认;
        }

        private void btnPen_Leave(object sender, EventArgs e)
        {
            if (btnColor.Focused)
                return;
            if (cbPenThickness.Focused)
            {
                btnPen.Focus();
                return;
            }

            plPenPopsetting.Visible = false;
            btnPen.BackgroundImage = Resources.画笔_默认;
        }

        private void btnZoom_Leave(object sender, EventArgs e)
        {
            if (btnFar.Focused || btnAdd.Focused || btnNear.Focused || btnDec.Focused)
            {
                btnZoom.Focus();
                return;
            }

            plZoom.Visible = false;
            btnZoom.BackgroundImage = Resources.缩放_默认;
        }

        private void btnDec_Click(object sender, EventArgs e)
        {
            if (zoomStep > 1)
            {
                zoomStep--;
                lbZoomStep.Text = zoomStep.ToString();
            }
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            if (zoomStep < 10)
            {
                zoomStep++;
                lbZoomStep.Text = zoomStep.ToString();
            }
        }

        private void btnColor_PopupClose(object sender, EventArgs e)
        {
            btnPen.Focus();
        }

        private void plCamera_MouseLeave(object sender, EventArgs e)
        {
            if (isEraser)
                this.Cursor = Cursors.Default;
        }

        private void btnSubject_LocationChanged(object sender, EventArgs e)
        {
            cbSubject.Location = btnSubject.Location;
        }

        private void plCamera_Paint(object sender, PaintEventArgs e)
        {
            if (img != null)
                ReDraw();
        }
    }
}