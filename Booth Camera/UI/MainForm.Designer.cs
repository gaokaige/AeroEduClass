namespace AeroEduClass.UI
{
    partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
            this.plTools = new System.Windows.Forms.Panel();
            this.btnMinSize = new DMSkin.Controls.DMButtonMinLight();
            this.btnExitApp = new DMSkin.Controls.DMButtonCloseLight();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnSetting = new System.Windows.Forms.Button();
            this.btnOpenErr = new System.Windows.Forms.Button();
            this.btnJoinErrCol = new System.Windows.Forms.Button();
            this.btnSubject = new System.Windows.Forms.Button();
            this.btnCommentPath = new System.Windows.Forms.Button();
            this.btnExitComment = new System.Windows.Forms.Button();
            this.lbNotice = new System.Windows.Forms.Label();
            this.btnSaveComment = new System.Windows.Forms.Button();
            this.btnForward = new System.Windows.Forms.Button();
            this.btnBackward = new System.Windows.Forms.Button();
            this.btnEraser = new System.Windows.Forms.Button();
            this.btnPen = new System.Windows.Forms.Button();
            this.btnOpendir = new System.Windows.Forms.Button();
            this.btnRecord = new System.Windows.Forms.Button();
            this.btnSnapshot = new System.Windows.Forms.Button();
            this.btnZoom = new System.Windows.Forms.Button();
            this.cbSubject = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.plEraser = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.cbEraser = new DevComponents.DotNetBar.Controls.ComboTree();
            this.node5 = new DevComponents.AdvTree.Node();
            this.node6 = new DevComponents.AdvTree.Node();
            this.node7 = new DevComponents.AdvTree.Node();
            this.node8 = new DevComponents.AdvTree.Node();
            this.plCamera = new System.Windows.Forms.Panel();
            this.pbCenterStar = new System.Windows.Forms.PictureBox();
            this.plImageList = new System.Windows.Forms.Panel();
            this.plPenPopsetting = new System.Windows.Forms.Panel();
            this.cbPenThickness = new DevComponents.DotNetBar.Controls.ComboTree();
            this.node1 = new DevComponents.AdvTree.Node();
            this.node2 = new DevComponents.AdvTree.Node();
            this.node3 = new DevComponents.AdvTree.Node();
            this.node4 = new DevComponents.AdvTree.Node();
            this.label2 = new System.Windows.Forms.Label();
            this.lbPenThickness = new System.Windows.Forms.Label();
            this.btnColor = new DevComponents.DotNetBar.ColorPickerButton();
            this.plZoom = new System.Windows.Forms.Panel();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.btnAdd = new System.Windows.Forms.Button();
            this.btnDec = new System.Windows.Forms.Button();
            this.lbZoomStep = new System.Windows.Forms.Label();
            this.btnFar = new System.Windows.Forms.Button();
            this.btnNear = new System.Windows.Forms.Button();
            this.commentImageList1 = new Booth_Camera.UserControls.CommentImageList();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.timer2 = new System.Windows.Forms.Timer(this.components);
            this.plTools.SuspendLayout();
            this.panel1.SuspendLayout();
            this.plEraser.SuspendLayout();
            this.plCamera.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbCenterStar)).BeginInit();
            this.plImageList.SuspendLayout();
            this.plPenPopsetting.SuspendLayout();
            this.plZoom.SuspendLayout();
            this.SuspendLayout();
            // 
            // plTools
            // 
            this.plTools.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.plTools.Controls.Add(this.btnMinSize);
            this.plTools.Controls.Add(this.btnExitApp);
            this.plTools.Controls.Add(this.panel1);
            this.plTools.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.plTools.Location = new System.Drawing.Point(0, 676);
            this.plTools.Name = "plTools";
            this.plTools.Size = new System.Drawing.Size(1024, 52);
            this.plTools.TabIndex = 0;
            this.plTools.MouseEnter += new System.EventHandler(this.plTools_MouseEnter);
            // 
            // btnMinSize
            // 
            this.btnMinSize.BackColor = System.Drawing.Color.Transparent;
            this.btnMinSize.Location = new System.Drawing.Point(957, 23);
            this.btnMinSize.Name = "btnMinSize";
            this.btnMinSize.Size = new System.Drawing.Size(30, 27);
            this.btnMinSize.TabIndex = 4;
            this.btnMinSize.Click += new System.EventHandler(this.btnMinsize_Click);
            // 
            // btnExitApp
            // 
            this.btnExitApp.BackColor = System.Drawing.Color.Transparent;
            this.btnExitApp.Location = new System.Drawing.Point(992, 23);
            this.btnExitApp.MaximumSize = new System.Drawing.Size(30, 27);
            this.btnExitApp.MinimumSize = new System.Drawing.Size(30, 27);
            this.btnExitApp.Name = "btnExitApp";
            this.btnExitApp.Size = new System.Drawing.Size(30, 27);
            this.btnExitApp.TabIndex = 3;
            this.btnExitApp.Click += new System.EventHandler(this.btnExitApp_Click);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnSetting);
            this.panel1.Controls.Add(this.btnOpenErr);
            this.panel1.Controls.Add(this.btnJoinErrCol);
            this.panel1.Controls.Add(this.btnSubject);
            this.panel1.Controls.Add(this.btnCommentPath);
            this.panel1.Controls.Add(this.btnExitComment);
            this.panel1.Controls.Add(this.lbNotice);
            this.panel1.Controls.Add(this.btnSaveComment);
            this.panel1.Controls.Add(this.btnForward);
            this.panel1.Controls.Add(this.btnBackward);
            this.panel1.Controls.Add(this.btnEraser);
            this.panel1.Controls.Add(this.btnPen);
            this.panel1.Controls.Add(this.btnOpendir);
            this.panel1.Controls.Add(this.btnRecord);
            this.panel1.Controls.Add(this.btnSnapshot);
            this.panel1.Controls.Add(this.btnZoom);
            this.panel1.Controls.Add(this.cbSubject);
            this.panel1.Location = new System.Drawing.Point(0, 1);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(951, 48);
            this.panel1.TabIndex = 2;
            // 
            // btnSetting
            // 
            this.btnSetting.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnSetting.BackgroundImage = global::AeroEduClass.Properties.Resources.设置_默认;
            this.btnSetting.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnSetting.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnSetting.FlatAppearance.BorderSize = 0;
            this.btnSetting.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnSetting.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnSetting.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSetting.Location = new System.Drawing.Point(760, 0);
            this.btnSetting.Name = "btnSetting";
            this.btnSetting.Size = new System.Drawing.Size(50, 48);
            this.btnSetting.TabIndex = 13;
            this.btnSetting.UseVisualStyleBackColor = false;
            this.btnSetting.Click += new System.EventHandler(this.btnSetting_Click);
            // 
            // btnOpenErr
            // 
            this.btnOpenErr.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnOpenErr.BackgroundImage = global::AeroEduClass.Properties.Resources.错题目录_默认;
            this.btnOpenErr.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnOpenErr.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnOpenErr.FlatAppearance.BorderSize = 0;
            this.btnOpenErr.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnOpenErr.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnOpenErr.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnOpenErr.Location = new System.Drawing.Point(695, 0);
            this.btnOpenErr.Name = "btnOpenErr";
            this.btnOpenErr.Size = new System.Drawing.Size(65, 48);
            this.btnOpenErr.TabIndex = 12;
            this.btnOpenErr.UseVisualStyleBackColor = false;
            this.btnOpenErr.Click += new System.EventHandler(this.btnOpenErr_Click);
            // 
            // btnJoinErrCol
            // 
            this.btnJoinErrCol.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnJoinErrCol.BackgroundImage = global::AeroEduClass.Properties.Resources.新增错题_默认;
            this.btnJoinErrCol.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnJoinErrCol.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnJoinErrCol.FlatAppearance.BorderSize = 0;
            this.btnJoinErrCol.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnJoinErrCol.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnJoinErrCol.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnJoinErrCol.Location = new System.Drawing.Point(630, 0);
            this.btnJoinErrCol.Name = "btnJoinErrCol";
            this.btnJoinErrCol.Size = new System.Drawing.Size(65, 48);
            this.btnJoinErrCol.TabIndex = 9;
            this.btnJoinErrCol.UseVisualStyleBackColor = false;
            this.btnJoinErrCol.Click += new System.EventHandler(this.btnJoinErrCol_Click);
            // 
            // btnSubject
            // 
            this.btnSubject.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnSubject.BackgroundImage = global::AeroEduClass.Properties.Resources.科目_默认;
            this.btnSubject.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnSubject.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnSubject.FlatAppearance.BorderSize = 0;
            this.btnSubject.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnSubject.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnSubject.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSubject.Location = new System.Drawing.Point(580, 0);
            this.btnSubject.Name = "btnSubject";
            this.btnSubject.Size = new System.Drawing.Size(50, 48);
            this.btnSubject.TabIndex = 8;
            this.btnSubject.UseVisualStyleBackColor = false;
            this.btnSubject.LocationChanged += new System.EventHandler(this.btnSubject_LocationChanged);
            this.btnSubject.Click += new System.EventHandler(this.btnSubject_Click);
            // 
            // btnCommentPath
            // 
            this.btnCommentPath.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnCommentPath.BackgroundImage = global::AeroEduClass.Properties.Resources.批注目录_默认;
            this.btnCommentPath.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnCommentPath.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnCommentPath.FlatAppearance.BorderSize = 0;
            this.btnCommentPath.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnCommentPath.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnCommentPath.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCommentPath.Location = new System.Drawing.Point(515, 0);
            this.btnCommentPath.Name = "btnCommentPath";
            this.btnCommentPath.Size = new System.Drawing.Size(65, 48);
            this.btnCommentPath.TabIndex = 11;
            this.btnCommentPath.UseVisualStyleBackColor = false;
            this.btnCommentPath.Click += new System.EventHandler(this.btnCommentPath_Click);
            // 
            // btnExitComment
            // 
            this.btnExitComment.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnExitComment.BackgroundImage = global::AeroEduClass.Properties.Resources.批注_结束;
            this.btnExitComment.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnExitComment.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnExitComment.FlatAppearance.BorderSize = 0;
            this.btnExitComment.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnExitComment.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnExitComment.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnExitComment.Location = new System.Drawing.Point(465, 0);
            this.btnExitComment.Name = "btnExitComment";
            this.btnExitComment.Size = new System.Drawing.Size(50, 48);
            this.btnExitComment.TabIndex = 3;
            this.btnExitComment.UseVisualStyleBackColor = false;
            this.btnExitComment.Visible = false;
            this.btnExitComment.Click += new System.EventHandler(this.btnExitComment_Click);
            // 
            // lbNotice
            // 
            this.lbNotice.AutoSize = true;
            this.lbNotice.ForeColor = System.Drawing.Color.White;
            this.lbNotice.Location = new System.Drawing.Point(816, 20);
            this.lbNotice.Name = "lbNotice";
            this.lbNotice.Size = new System.Drawing.Size(11, 12);
            this.lbNotice.TabIndex = 21;
            this.lbNotice.Text = " ";
            // 
            // btnSaveComment
            // 
            this.btnSaveComment.BackgroundImage = global::AeroEduClass.Properties.Resources.保存_默认;
            this.btnSaveComment.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnSaveComment.FlatAppearance.BorderSize = 0;
            this.btnSaveComment.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnSaveComment.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnSaveComment.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSaveComment.Location = new System.Drawing.Point(415, 0);
            this.btnSaveComment.Name = "btnSaveComment";
            this.btnSaveComment.Size = new System.Drawing.Size(50, 48);
            this.btnSaveComment.TabIndex = 20;
            this.btnSaveComment.UseVisualStyleBackColor = true;
            this.btnSaveComment.Visible = false;
            this.btnSaveComment.Click += new System.EventHandler(this.btnSaveComment_Click);
            // 
            // btnForward
            // 
            this.btnForward.BackgroundImage = global::AeroEduClass.Properties.Resources.前进_默认;
            this.btnForward.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnForward.FlatAppearance.BorderSize = 0;
            this.btnForward.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnForward.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnForward.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnForward.Location = new System.Drawing.Point(365, 0);
            this.btnForward.Name = "btnForward";
            this.btnForward.Size = new System.Drawing.Size(50, 48);
            this.btnForward.TabIndex = 16;
            this.btnForward.UseVisualStyleBackColor = true;
            this.btnForward.Visible = false;
            this.btnForward.Click += new System.EventHandler(this.forward_Click);
            // 
            // btnBackward
            // 
            this.btnBackward.BackgroundImage = global::AeroEduClass.Properties.Resources.后退_默认;
            this.btnBackward.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnBackward.FlatAppearance.BorderSize = 0;
            this.btnBackward.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnBackward.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnBackward.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnBackward.Location = new System.Drawing.Point(315, 0);
            this.btnBackward.Name = "btnBackward";
            this.btnBackward.Size = new System.Drawing.Size(50, 48);
            this.btnBackward.TabIndex = 15;
            this.btnBackward.UseVisualStyleBackColor = true;
            this.btnBackward.Visible = false;
            this.btnBackward.Click += new System.EventHandler(this.backward_Click);
            // 
            // btnEraser
            // 
            this.btnEraser.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnEraser.BackgroundImage = global::AeroEduClass.Properties.Resources.橡皮擦_默认;
            this.btnEraser.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnEraser.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnEraser.FlatAppearance.BorderSize = 0;
            this.btnEraser.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnEraser.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnEraser.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEraser.Location = new System.Drawing.Point(265, 0);
            this.btnEraser.Name = "btnEraser";
            this.btnEraser.Size = new System.Drawing.Size(50, 48);
            this.btnEraser.TabIndex = 23;
            this.btnEraser.UseVisualStyleBackColor = false;
            this.btnEraser.Click += new System.EventHandler(this.btnEraser_Click);
            this.btnEraser.Leave += new System.EventHandler(this.btnEraser_Leave);
            // 
            // btnPen
            // 
            this.btnPen.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnPen.BackgroundImage = global::AeroEduClass.Properties.Resources.画笔_默认;
            this.btnPen.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnPen.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnPen.FlatAppearance.BorderSize = 0;
            this.btnPen.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnPen.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnPen.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnPen.Location = new System.Drawing.Point(215, 0);
            this.btnPen.Name = "btnPen";
            this.btnPen.Size = new System.Drawing.Size(50, 48);
            this.btnPen.TabIndex = 22;
            this.btnPen.UseVisualStyleBackColor = false;
            this.btnPen.Click += new System.EventHandler(this.btnPen_Click);
            this.btnPen.Leave += new System.EventHandler(this.btnPen_Leave);
            // 
            // btnOpendir
            // 
            this.btnOpendir.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnOpendir.BackgroundImage = global::AeroEduClass.Properties.Resources.视频目录_默认;
            this.btnOpendir.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnOpendir.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnOpendir.FlatAppearance.BorderSize = 0;
            this.btnOpendir.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnOpendir.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnOpendir.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnOpendir.Location = new System.Drawing.Point(150, 0);
            this.btnOpendir.Name = "btnOpendir";
            this.btnOpendir.Size = new System.Drawing.Size(65, 48);
            this.btnOpendir.TabIndex = 10;
            this.btnOpendir.UseVisualStyleBackColor = false;
            this.btnOpendir.Click += new System.EventHandler(this.btnOpendir_Click);
            // 
            // btnRecord
            // 
            this.btnRecord.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnRecord.BackgroundImage = global::AeroEduClass.Properties.Resources.录像_默认;
            this.btnRecord.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnRecord.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnRecord.FlatAppearance.BorderSize = 0;
            this.btnRecord.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnRecord.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnRecord.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRecord.Location = new System.Drawing.Point(100, 0);
            this.btnRecord.Name = "btnRecord";
            this.btnRecord.Size = new System.Drawing.Size(50, 48);
            this.btnRecord.TabIndex = 2;
            this.btnRecord.UseVisualStyleBackColor = false;
            this.btnRecord.Click += new System.EventHandler(this.btnRecord_Click);
            // 
            // btnSnapshot
            // 
            this.btnSnapshot.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnSnapshot.BackgroundImage = global::AeroEduClass.Properties.Resources.拍照_默认;
            this.btnSnapshot.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnSnapshot.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnSnapshot.FlatAppearance.BorderSize = 0;
            this.btnSnapshot.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnSnapshot.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnSnapshot.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSnapshot.Location = new System.Drawing.Point(50, 0);
            this.btnSnapshot.Name = "btnSnapshot";
            this.btnSnapshot.Size = new System.Drawing.Size(50, 48);
            this.btnSnapshot.TabIndex = 4;
            this.btnSnapshot.UseVisualStyleBackColor = false;
            this.btnSnapshot.Click += new System.EventHandler(this.btnSnapshot_Click);
            // 
            // btnZoom
            // 
            this.btnZoom.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnZoom.BackgroundImage = global::AeroEduClass.Properties.Resources.缩放_默认;
            this.btnZoom.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnZoom.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnZoom.FlatAppearance.BorderSize = 0;
            this.btnZoom.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnZoom.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(53)))), ((int)(((byte)(67)))));
            this.btnZoom.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnZoom.Location = new System.Drawing.Point(0, 0);
            this.btnZoom.Margin = new System.Windows.Forms.Padding(0);
            this.btnZoom.Name = "btnZoom";
            this.btnZoom.Size = new System.Drawing.Size(50, 48);
            this.btnZoom.TabIndex = 6;
            this.btnZoom.UseVisualStyleBackColor = false;
            this.btnZoom.Click += new System.EventHandler(this.btnZoom_Click);
            this.btnZoom.Leave += new System.EventHandler(this.btnZoom_Leave);
            // 
            // cbSubject
            // 
            this.cbSubject.DisplayMember = "Text";
            this.cbSubject.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cbSubject.FormattingEnabled = true;
            this.cbSubject.ItemHeight = 15;
            this.cbSubject.Location = new System.Drawing.Point(580, -1);
            this.cbSubject.Name = "cbSubject";
            this.cbSubject.Size = new System.Drawing.Size(100, 21);
            this.cbSubject.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.cbSubject.TabIndex = 0;
            // 
            // plEraser
            // 
            this.plEraser.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(221)))), ((int)(((byte)(220)))), ((int)(((byte)(225)))));
            this.plEraser.Controls.Add(this.label1);
            this.plEraser.Controls.Add(this.cbEraser);
            this.plEraser.Location = new System.Drawing.Point(265, 41);
            this.plEraser.Name = "plEraser";
            this.plEraser.Size = new System.Drawing.Size(73, 60);
            this.plEraser.TabIndex = 1;
            this.plEraser.Visible = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.ForeColor = System.Drawing.Color.Black;
            this.label1.Location = new System.Drawing.Point(3, 3);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 12);
            this.label1.TabIndex = 32;
            this.label1.Text = "选择大小";
            // 
            // cbEraser
            // 
            this.cbEraser.BackColor = System.Drawing.SystemColors.Window;
            // 
            // 
            // 
            this.cbEraser.BackgroundStyle.Class = "TextBoxBorder";
            this.cbEraser.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.cbEraser.ButtonClear.Tooltip = "";
            this.cbEraser.ButtonCustom.Tooltip = "";
            this.cbEraser.ButtonCustom2.Tooltip = "";
            this.cbEraser.ButtonDropDown.Tooltip = "";
            this.cbEraser.ButtonDropDown.Visible = true;
            this.cbEraser.Location = new System.Drawing.Point(3, 22);
            this.cbEraser.Name = "cbEraser";
            this.cbEraser.Nodes.AddRange(new DevComponents.AdvTree.Node[] {
            this.node5,
            this.node6,
            this.node7,
            this.node8});
            this.cbEraser.Size = new System.Drawing.Size(67, 33);
            this.cbEraser.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.cbEraser.TabIndex = 31;
            this.cbEraser.Text = "粗细";
            this.cbEraser.SelectedIndexChanged += new System.EventHandler(this.cbEraser_SelectedIndexChanged);
            // 
            // node5
            // 
            this.node5.Image = global::AeroEduClass.Properties.Resources._6;
            this.node5.Name = "node5";
            // 
            // node6
            // 
            this.node6.Image = global::AeroEduClass.Properties.Resources._9;
            this.node6.Name = "node6";
            // 
            // node7
            // 
            this.node7.Image = global::AeroEduClass.Properties.Resources._12;
            this.node7.Name = "node7";
            // 
            // node8
            // 
            this.node8.Image = global::AeroEduClass.Properties.Resources._12虚;
            this.node8.Name = "node8";
            // 
            // plCamera
            // 
            this.plCamera.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(39)))), ((int)(((byte)(38)))), ((int)(((byte)(39)))));
            this.plCamera.Controls.Add(this.pbCenterStar);
            this.plCamera.Dock = System.Windows.Forms.DockStyle.Fill;
            this.plCamera.Location = new System.Drawing.Point(0, 0);
            this.plCamera.Name = "plCamera";
            this.plCamera.Size = new System.Drawing.Size(1024, 576);
            this.plCamera.TabIndex = 1;
            this.plCamera.Paint += new System.Windows.Forms.PaintEventHandler(this.plCamera_Paint);
            this.plCamera.MouseDown += new System.Windows.Forms.MouseEventHandler(this.plCamera_MouseDown);
            this.plCamera.MouseEnter += new System.EventHandler(this.plCamera_MouseEnter);
            this.plCamera.MouseLeave += new System.EventHandler(this.plCamera_MouseLeave);
            this.plCamera.MouseMove += new System.Windows.Forms.MouseEventHandler(this.plCamera_MouseMove);
            this.plCamera.MouseUp += new System.Windows.Forms.MouseEventHandler(this.plCamera_MouseUp);
            // 
            // pbCenterStar
            // 
            this.pbCenterStar.BackColor = System.Drawing.Color.Red;
            this.pbCenterStar.Location = new System.Drawing.Point(507, 283);
            this.pbCenterStar.Name = "pbCenterStar";
            this.pbCenterStar.Size = new System.Drawing.Size(10, 10);
            this.pbCenterStar.TabIndex = 0;
            this.pbCenterStar.TabStop = false;
            // 
            // plImageList
            // 
            this.plImageList.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(56)))), ((int)(((byte)(58)))), ((int)(((byte)(72)))));
            this.plImageList.Controls.Add(this.plEraser);
            this.plImageList.Controls.Add(this.plPenPopsetting);
            this.plImageList.Controls.Add(this.plZoom);
            this.plImageList.Controls.Add(this.commentImageList1);
            this.plImageList.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.plImageList.Location = new System.Drawing.Point(0, 576);
            this.plImageList.Name = "plImageList";
            this.plImageList.Size = new System.Drawing.Size(1024, 100);
            this.plImageList.TabIndex = 2;
            // 
            // plPenPopsetting
            // 
            this.plPenPopsetting.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(221)))), ((int)(((byte)(220)))), ((int)(((byte)(225)))));
            this.plPenPopsetting.Controls.Add(this.cbPenThickness);
            this.plPenPopsetting.Controls.Add(this.label2);
            this.plPenPopsetting.Controls.Add(this.lbPenThickness);
            this.plPenPopsetting.Controls.Add(this.btnColor);
            this.plPenPopsetting.Location = new System.Drawing.Point(215, 41);
            this.plPenPopsetting.Name = "plPenPopsetting";
            this.plPenPopsetting.Size = new System.Drawing.Size(147, 60);
            this.plPenPopsetting.TabIndex = 2;
            this.plPenPopsetting.Visible = false;
            // 
            // cbPenThickness
            // 
            this.cbPenThickness.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.cbPenThickness.BackColor = System.Drawing.SystemColors.Window;
            // 
            // 
            // 
            this.cbPenThickness.BackgroundStyle.Class = "TextBoxBorder";
            this.cbPenThickness.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.cbPenThickness.ButtonClear.Tooltip = "";
            this.cbPenThickness.ButtonCustom.Tooltip = "";
            this.cbPenThickness.ButtonCustom2.Tooltip = "";
            this.cbPenThickness.ButtonDropDown.Tooltip = "";
            this.cbPenThickness.ButtonDropDown.Visible = true;
            this.cbPenThickness.Location = new System.Drawing.Point(5, 22);
            this.cbPenThickness.Name = "cbPenThickness";
            this.cbPenThickness.Nodes.AddRange(new DevComponents.AdvTree.Node[] {
            this.node1,
            this.node2,
            this.node3,
            this.node4});
            this.cbPenThickness.Size = new System.Drawing.Size(67, 30);
            this.cbPenThickness.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.cbPenThickness.TabIndex = 26;
            this.cbPenThickness.Text = "粗细";
            this.cbPenThickness.SelectedIndexChanged += new System.EventHandler(this.cbPenThickness_SelectedIndexChanged);
            // 
            // node1
            // 
            this.node1.Image = global::AeroEduClass.Properties.Resources._2_30;
            this.node1.Name = "node1";
            // 
            // node2
            // 
            this.node2.Image = global::AeroEduClass.Properties.Resources._5_30;
            this.node2.Name = "node2";
            // 
            // node3
            // 
            this.node3.Image = global::AeroEduClass.Properties.Resources._8_30;
            this.node3.Name = "node3";
            // 
            // node4
            // 
            this.node4.Image = global::AeroEduClass.Properties.Resources._12_30;
            this.node4.Name = "node4";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.ForeColor = System.Drawing.Color.Black;
            this.label2.Location = new System.Drawing.Point(74, 3);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(29, 12);
            this.label2.TabIndex = 14;
            this.label2.Text = "颜色";
            // 
            // lbPenThickness
            // 
            this.lbPenThickness.AutoSize = true;
            this.lbPenThickness.BackColor = System.Drawing.Color.Transparent;
            this.lbPenThickness.ForeColor = System.Drawing.Color.Black;
            this.lbPenThickness.Location = new System.Drawing.Point(2, 3);
            this.lbPenThickness.Name = "lbPenThickness";
            this.lbPenThickness.Size = new System.Drawing.Size(29, 12);
            this.lbPenThickness.TabIndex = 13;
            this.lbPenThickness.Text = "粗细";
            // 
            // btnColor
            // 
            this.btnColor.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnColor.AntiAlias = true;
            this.btnColor.BackColor = System.Drawing.Color.White;
            this.btnColor.BackgroundImage = global::AeroEduClass.Properties.Resources.kuang;
            this.btnColor.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnColor.ColorTable = DevComponents.DotNetBar.eButtonColor.Flat;
            this.btnColor.CustomColorName = "5555";
            this.btnColor.DisabledImagesGrayScale = false;
            this.btnColor.DisplayThemeColors = false;
            this.btnColor.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnColor.Image = ((System.Drawing.Image)(resources.GetObject("btnColor.Image")));
            this.btnColor.Location = new System.Drawing.Point(76, 22);
            this.btnColor.Margin = new System.Windows.Forms.Padding(0);
            this.btnColor.Name = "btnColor";
            this.btnColor.PopupSide = DevComponents.DotNetBar.ePopupSide.Bottom;
            this.btnColor.SelectedColorImageRectangle = new System.Drawing.Rectangle(2, 2, 12, 12);
            this.btnColor.Shape = new DevComponents.DotNetBar.RoundRectangleShapeDescriptor();
            this.btnColor.Size = new System.Drawing.Size(67, 30);
            this.btnColor.SplitButton = true;
            this.btnColor.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnColor.SymbolColor = System.Drawing.Color.Transparent;
            this.btnColor.TabIndex = 12;
            this.btnColor.Text = "选择";
            this.btnColor.TextColor = System.Drawing.Color.Black;
            this.btnColor.SelectedColorChanged += new System.EventHandler(this.btnColor_SelectedColorChanged);
            this.btnColor.PopupClose += new System.EventHandler(this.btnColor_PopupClose);
            // 
            // plZoom
            // 
            this.plZoom.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(221)))), ((int)(((byte)(220)))), ((int)(((byte)(225)))));
            this.plZoom.Controls.Add(this.label6);
            this.plZoom.Controls.Add(this.label5);
            this.plZoom.Controls.Add(this.label4);
            this.plZoom.Controls.Add(this.btnAdd);
            this.plZoom.Controls.Add(this.btnDec);
            this.plZoom.Controls.Add(this.lbZoomStep);
            this.plZoom.Controls.Add(this.btnFar);
            this.plZoom.Controls.Add(this.btnNear);
            this.plZoom.Location = new System.Drawing.Point(0, 41);
            this.plZoom.Name = "plZoom";
            this.plZoom.Size = new System.Drawing.Size(130, 60);
            this.plZoom.TabIndex = 1;
            this.plZoom.Visible = false;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.Color.Transparent;
            this.label6.Font = new System.Drawing.Font("黑体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label6.ForeColor = System.Drawing.Color.Black;
            this.label6.Location = new System.Drawing.Point(96, 3);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(29, 12);
            this.label6.TabIndex = 24;
            this.label6.Text = "放大";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Transparent;
            this.label5.Font = new System.Drawing.Font("黑体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label5.ForeColor = System.Drawing.Color.Black;
            this.label5.Location = new System.Drawing.Point(49, 3);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(29, 12);
            this.label5.TabIndex = 23;
            this.label5.Text = "步长";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Transparent;
            this.label4.Font = new System.Drawing.Font("黑体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label4.ForeColor = System.Drawing.Color.Black;
            this.label4.Location = new System.Drawing.Point(2, 3);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(29, 12);
            this.label4.TabIndex = 22;
            this.label4.Text = "缩小";
            // 
            // btnAdd
            // 
            this.btnAdd.BackgroundImage = global::AeroEduClass.Properties.Resources.右;
            this.btnAdd.FlatAppearance.BorderSize = 0;
            this.btnAdd.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnAdd.Location = new System.Drawing.Point(79, 30);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(20, 20);
            this.btnAdd.TabIndex = 21;
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // btnDec
            // 
            this.btnDec.BackgroundImage = global::AeroEduClass.Properties.Resources.左;
            this.btnDec.FlatAppearance.BorderSize = 0;
            this.btnDec.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDec.Location = new System.Drawing.Point(29, 30);
            this.btnDec.Name = "btnDec";
            this.btnDec.Size = new System.Drawing.Size(20, 20);
            this.btnDec.TabIndex = 20;
            this.btnDec.UseVisualStyleBackColor = true;
            this.btnDec.Click += new System.EventHandler(this.btnDec_Click);
            // 
            // lbZoomStep
            // 
            this.lbZoomStep.AutoSize = true;
            this.lbZoomStep.Font = new System.Drawing.Font("宋体", 10F);
            this.lbZoomStep.Location = new System.Drawing.Point(53, 32);
            this.lbZoomStep.Name = "lbZoomStep";
            this.lbZoomStep.Size = new System.Drawing.Size(21, 14);
            this.lbZoomStep.TabIndex = 19;
            this.lbZoomStep.Text = "10";
            // 
            // btnFar
            // 
            this.btnFar.BackgroundImage = global::AeroEduClass.Properties.Resources.缩小;
            this.btnFar.FlatAppearance.BorderSize = 0;
            this.btnFar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnFar.Location = new System.Drawing.Point(3, 30);
            this.btnFar.Name = "btnFar";
            this.btnFar.Size = new System.Drawing.Size(20, 20);
            this.btnFar.TabIndex = 18;
            this.btnFar.UseVisualStyleBackColor = true;
            this.btnFar.Click += new System.EventHandler(this.btnFar_Click);
            // 
            // btnNear
            // 
            this.btnNear.BackgroundImage = global::AeroEduClass.Properties.Resources.放大;
            this.btnNear.FlatAppearance.BorderSize = 0;
            this.btnNear.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnNear.Location = new System.Drawing.Point(105, 30);
            this.btnNear.Name = "btnNear";
            this.btnNear.Size = new System.Drawing.Size(20, 20);
            this.btnNear.TabIndex = 17;
            this.btnNear.UseVisualStyleBackColor = true;
            this.btnNear.Click += new System.EventHandler(this.btnNear_Click);
            // 
            // commentImageList1
            // 
            this.commentImageList1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(56)))), ((int)(((byte)(58)))), ((int)(((byte)(72)))));
            this.commentImageList1.Location = new System.Drawing.Point(0, 0);
            this.commentImageList1.Name = "commentImageList1";
            this.commentImageList1.Size = new System.Drawing.Size(1024, 100);
            this.commentImageList1.TabIndex = 0;
            this.commentImageList1.PictureBoxClick += new Booth_Camera.UserControls.CommentImageList.PictureBoxClickHandle(this.commentImagelist1_PictureBoxClick);
            // 
            // timer1
            // 
            this.timer1.Interval = 500;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // timer2
            // 
            this.timer2.Interval = 3000;
            this.timer2.Tick += new System.EventHandler(this.timer2_Tick);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1024, 728);
            this.Controls.Add(this.plCamera);
            this.Controls.Add(this.plImageList);
            this.Controls.Add(this.plTools);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "MainForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "MainForm";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.MainForm_FormClosing);
            this.Load += new System.EventHandler(this.MainForm_Load);
            this.Resize += new System.EventHandler(this.MainForm_Resize);
            this.plTools.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.plEraser.ResumeLayout(false);
            this.plEraser.PerformLayout();
            this.plCamera.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pbCenterStar)).EndInit();
            this.plImageList.ResumeLayout(false);
            this.plPenPopsetting.ResumeLayout(false);
            this.plPenPopsetting.PerformLayout();
            this.plZoom.ResumeLayout(false);
            this.plZoom.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel plTools;
        private System.Windows.Forms.Panel plCamera;
        private System.Windows.Forms.PictureBox pbCenterStar;
        private System.Windows.Forms.Panel plImageList;
        private System.Windows.Forms.Button btnRecord;
        private System.Windows.Forms.Button btnJoinErrCol;
        private System.Windows.Forms.Button btnSubject;
        private System.Windows.Forms.Button btnZoom;
        private System.Windows.Forms.Button btnSnapshot;
        private System.Windows.Forms.Button btnExitComment;
        private System.Windows.Forms.Button btnOpenErr;
        private System.Windows.Forms.Button btnCommentPath;
        private System.Windows.Forms.Button btnOpendir;
        private DevComponents.DotNetBar.Controls.ComboBoxEx cbSubject;
        private System.Windows.Forms.Button btnSetting;
        private Booth_Camera.UserControls.CommentImageList commentImageList1;
        private System.Windows.Forms.Panel plPenPopsetting;
        private DevComponents.DotNetBar.ColorPickerButton btnColor;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lbPenThickness;
        private System.Windows.Forms.Panel plEraser;
        private DevComponents.DotNetBar.Controls.ComboTree cbEraser;
        private DevComponents.AdvTree.Node node5;
        private DevComponents.AdvTree.Node node6;
        private DevComponents.AdvTree.Node node7;
        private DevComponents.AdvTree.Node node8;
        private System.Windows.Forms.Button btnForward;
        private System.Windows.Forms.Button btnBackward;
        private System.Windows.Forms.Button btnFar;
        private System.Windows.Forms.Button btnNear;
        private DevComponents.DotNetBar.Controls.ComboTree cbPenThickness;
        private DevComponents.AdvTree.Node node1;
        private DevComponents.AdvTree.Node node2;
        private DevComponents.AdvTree.Node node3;
        private DevComponents.AdvTree.Node node4;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.Timer timer2;
        private System.Windows.Forms.Button btnSaveComment;
        private System.Windows.Forms.Label lbNotice;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnPen;
        private System.Windows.Forms.Button btnEraser;
        private System.Windows.Forms.Panel plZoom;
        private System.Windows.Forms.Label lbZoomStep;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.Button btnDec;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Panel panel1;
        private DMSkin.Controls.DMButtonCloseLight btnExitApp;
        private DMSkin.Controls.DMButtonMinLight btnMinSize;
    }
}