namespace AeroEduClass.UI
{
    partial class frmMain
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMain));
            this.plMain = new System.Windows.Forms.Panel();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.plBottom = new System.Windows.Forms.Panel();
            this.plIcon = new System.Windows.Forms.Panel();
            this.plButtonList = new System.Windows.Forms.Panel();
            this.plTools = new System.Windows.Forms.Panel();
            this.backButton = new System.Windows.Forms.Button();
            this.refreshButton = new System.Windows.Forms.Button();
            this.forwardButton = new System.Windows.Forms.Button();
            this.btnHome = new System.Windows.Forms.Button();
            this.btnMingBo = new System.Windows.Forms.Button();
            this.btnWhiteboard = new System.Windows.Forms.Button();
            this.btnBooth = new System.Windows.Forms.Button();
            this.btnRecord = new System.Windows.Forms.Button();
            this.btnActive = new System.Windows.Forms.Button();
            this.btnYcgk = new System.Windows.Forms.Button();
            this.btnLive = new System.Windows.Forms.Button();
            this.btnCCLive = new System.Windows.Forms.Button();
            this.plClose = new System.Windows.Forms.Panel();
            this.dmButtonMin1 = new DMSkin.Controls.DMButtonMin();
            this.dmButtonClose1 = new DMSkin.Controls.DMButtonClose();
            this.plBottom.SuspendLayout();
            this.plButtonList.SuspendLayout();
            this.plTools.SuspendLayout();
            this.plClose.SuspendLayout();
            this.SuspendLayout();
            // 
            // plMain
            // 
            this.plMain.BackColor = System.Drawing.Color.Transparent;
            this.plMain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.plMain.Location = new System.Drawing.Point(0, 0);
            this.plMain.Name = "plMain";
            this.plMain.Size = new System.Drawing.Size(1024, 718);
            this.plMain.TabIndex = 1;
            // 
            // imageList1
            // 
            this.imageList1.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit;
            this.imageList1.ImageSize = new System.Drawing.Size(16, 16);
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            // 
            // plBottom
            // 
            this.plBottom.BackColor = System.Drawing.Color.White;
            this.plBottom.BackgroundImage = global::AeroEduClass.Properties.Resources.c;
            this.plBottom.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.plBottom.Controls.Add(this.plIcon);
            this.plBottom.Controls.Add(this.plButtonList);
            this.plBottom.Controls.Add(this.plClose);
            this.plBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.plBottom.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.plBottom.Location = new System.Drawing.Point(0, 718);
            this.plBottom.Name = "plBottom";
            this.plBottom.Size = new System.Drawing.Size(1024, 50);
            this.plBottom.TabIndex = 1;
            this.plBottom.MouseDown += new System.Windows.Forms.MouseEventHandler(this.plBottom_MouseDown);
            this.plBottom.MouseMove += new System.Windows.Forms.MouseEventHandler(this.plBottom_MouseMove);
            // 
            // plIcon
            // 
            this.plIcon.BackgroundImage = global::AeroEduClass.Properties.Resources.a;
            this.plIcon.Dock = System.Windows.Forms.DockStyle.Left;
            this.plIcon.Location = new System.Drawing.Point(0, 0);
            this.plIcon.Name = "plIcon";
            this.plIcon.Size = new System.Drawing.Size(122, 46);
            this.plIcon.TabIndex = 1;
            this.plIcon.DoubleClick += new System.EventHandler(this.plIcon_DoubleClick);
            // 
            // plButtonList
            // 
            this.plButtonList.BackColor = System.Drawing.Color.Transparent;
            this.plButtonList.Controls.Add(this.plTools);
            this.plButtonList.Controls.Add(this.btnHome);
            this.plButtonList.Controls.Add(this.btnMingBo);
            this.plButtonList.Controls.Add(this.btnWhiteboard);
            this.plButtonList.Controls.Add(this.btnBooth);
            this.plButtonList.Controls.Add(this.btnRecord);
            this.plButtonList.Controls.Add(this.btnActive);
            this.plButtonList.Controls.Add(this.btnYcgk);
            this.plButtonList.Controls.Add(this.btnLive);
            this.plButtonList.Controls.Add(this.btnCCLive);
            this.plButtonList.Dock = System.Windows.Forms.DockStyle.Right;
            this.plButtonList.Location = new System.Drawing.Point(25, 0);
            this.plButtonList.Name = "plButtonList";
            this.plButtonList.Size = new System.Drawing.Size(933, 46);
            this.plButtonList.TabIndex = 0;
            this.plButtonList.MouseDown += new System.Windows.Forms.MouseEventHandler(this.plButtonList_MouseDown);
            this.plButtonList.MouseMove += new System.Windows.Forms.MouseEventHandler(this.plButtonList_MouseMove);
            // 
            // plTools
            // 
            this.plTools.Controls.Add(this.backButton);
            this.plTools.Controls.Add(this.refreshButton);
            this.plTools.Controls.Add(this.forwardButton);
            this.plTools.Dock = System.Windows.Forms.DockStyle.Right;
            this.plTools.Location = new System.Drawing.Point(3, 0);
            this.plTools.Name = "plTools";
            this.plTools.Size = new System.Drawing.Size(165, 46);
            this.plTools.TabIndex = 0;
            // 
            // backButton
            // 
            this.backButton.BackColor = System.Drawing.Color.Transparent;
            this.backButton.Dock = System.Windows.Forms.DockStyle.Right;
            this.backButton.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.backButton.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.backButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.backButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.backButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.backButton.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.backButton.Image = global::AeroEduClass.Properties.Resources.A1;
            this.backButton.Location = new System.Drawing.Point(9, 0);
            this.backButton.Name = "backButton";
            this.backButton.Size = new System.Drawing.Size(52, 46);
            this.backButton.TabIndex = 19;
            this.backButton.UseVisualStyleBackColor = false;
            this.backButton.Click += new System.EventHandler(this.backButton_Click);
            // 
            // refreshButton
            // 
            this.refreshButton.BackColor = System.Drawing.Color.Transparent;
            this.refreshButton.Dock = System.Windows.Forms.DockStyle.Right;
            this.refreshButton.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.refreshButton.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.refreshButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.refreshButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.refreshButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.refreshButton.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.refreshButton.Image = global::AeroEduClass.Properties.Resources.A2;
            this.refreshButton.Location = new System.Drawing.Point(61, 0);
            this.refreshButton.Name = "refreshButton";
            this.refreshButton.Size = new System.Drawing.Size(52, 46);
            this.refreshButton.TabIndex = 20;
            this.refreshButton.UseVisualStyleBackColor = false;
            this.refreshButton.Click += new System.EventHandler(this.refreshButton_Click);
            // 
            // forwardButton
            // 
            this.forwardButton.BackColor = System.Drawing.Color.Transparent;
            this.forwardButton.Dock = System.Windows.Forms.DockStyle.Right;
            this.forwardButton.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.forwardButton.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.forwardButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.forwardButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.forwardButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.forwardButton.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.forwardButton.Image = global::AeroEduClass.Properties.Resources.A3;
            this.forwardButton.Location = new System.Drawing.Point(113, 0);
            this.forwardButton.Name = "forwardButton";
            this.forwardButton.Size = new System.Drawing.Size(52, 46);
            this.forwardButton.TabIndex = 21;
            this.forwardButton.UseVisualStyleBackColor = false;
            this.forwardButton.Click += new System.EventHandler(this.forwardButton_Click);
            // 
            // btnHome
            // 
            this.btnHome.BackColor = System.Drawing.Color.Transparent;
            this.btnHome.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnHome.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.btnHome.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnHome.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnHome.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.btnHome.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnHome.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnHome.Location = new System.Drawing.Point(168, 0);
            this.btnHome.Name = "btnHome";
            this.btnHome.Size = new System.Drawing.Size(85, 46);
            this.btnHome.TabIndex = 99;
            this.btnHome.Text = "首页";
            this.btnHome.UseVisualStyleBackColor = false;
            this.btnHome.Visible = false;
            this.btnHome.Click += new System.EventHandler(this.btnHome_Click);
            // 
            // btnMingBo
            // 
            this.btnMingBo.BackColor = System.Drawing.Color.Transparent;
            this.btnMingBo.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnMingBo.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.btnMingBo.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnMingBo.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnMingBo.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.btnMingBo.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnMingBo.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnMingBo.Location = new System.Drawing.Point(253, 0);
            this.btnMingBo.Name = "btnMingBo";
            this.btnMingBo.Size = new System.Drawing.Size(85, 46);
            this.btnMingBo.TabIndex = 100;
            this.btnMingBo.Text = "电子教材";
            this.btnMingBo.UseVisualStyleBackColor = true;
            this.btnMingBo.Visible = false;
            this.btnMingBo.Click += new System.EventHandler(this.btnMingBo_Click);
            // 
            // btnWhiteboard
            // 
            this.btnWhiteboard.BackColor = System.Drawing.Color.Transparent;
            this.btnWhiteboard.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnWhiteboard.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.btnWhiteboard.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnWhiteboard.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnWhiteboard.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.btnWhiteboard.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnWhiteboard.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnWhiteboard.Location = new System.Drawing.Point(338, 0);
            this.btnWhiteboard.Name = "btnWhiteboard";
            this.btnWhiteboard.Size = new System.Drawing.Size(85, 46);
            this.btnWhiteboard.TabIndex = 15;
            this.btnWhiteboard.Text = "电子白板";
            this.btnWhiteboard.UseVisualStyleBackColor = false;
            this.btnWhiteboard.Click += new System.EventHandler(this.btnWhiteboard_Click);
            // 
            // btnBooth
            // 
            this.btnBooth.BackColor = System.Drawing.Color.Transparent;
            this.btnBooth.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnBooth.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.btnBooth.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnBooth.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnBooth.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.btnBooth.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnBooth.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnBooth.Location = new System.Drawing.Point(423, 0);
            this.btnBooth.Name = "btnBooth";
            this.btnBooth.Size = new System.Drawing.Size(85, 46);
            this.btnBooth.TabIndex = 16;
            this.btnBooth.Text = "实物展台";
            this.btnBooth.UseVisualStyleBackColor = false;
            this.btnBooth.Click += new System.EventHandler(this.btnBooth_Click);
            // 
            // btnRecord
            // 
            this.btnRecord.BackColor = System.Drawing.Color.Transparent;
            this.btnRecord.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnRecord.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.btnRecord.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnRecord.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnRecord.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.btnRecord.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRecord.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnRecord.Location = new System.Drawing.Point(508, 0);
            this.btnRecord.Name = "btnRecord";
            this.btnRecord.Size = new System.Drawing.Size(85, 46);
            this.btnRecord.TabIndex = 17;
            this.btnRecord.Text = "录播";
            this.btnRecord.UseVisualStyleBackColor = false;
            this.btnRecord.Click += new System.EventHandler(this.btnRecord_Click);
            // 
            // btnActive
            // 
            this.btnActive.BackColor = System.Drawing.Color.Transparent;
            this.btnActive.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnActive.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.btnActive.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnActive.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnActive.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.btnActive.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnActive.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnActive.Location = new System.Drawing.Point(593, 0);
            this.btnActive.Name = "btnActive";
            this.btnActive.Size = new System.Drawing.Size(85, 46);
            this.btnActive.TabIndex = 14;
            this.btnActive.Tag = "同频互动";
            this.btnActive.Text = "远程上课";
            this.btnActive.UseVisualStyleBackColor = false;
            this.btnActive.Click += new System.EventHandler(this.btnActive_Click);
            // 
            // btnYcgk
            // 
            this.btnYcgk.BackColor = System.Drawing.Color.Transparent;
            this.btnYcgk.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnYcgk.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.btnYcgk.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnYcgk.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnYcgk.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.btnYcgk.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnYcgk.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnYcgk.Location = new System.Drawing.Point(678, 0);
            this.btnYcgk.Name = "btnYcgk";
            this.btnYcgk.Size = new System.Drawing.Size(85, 46);
            this.btnYcgk.TabIndex = 20;
            this.btnYcgk.Tag = "启动直播页面";
            this.btnYcgk.Text = "远程观课";
            this.btnYcgk.UseVisualStyleBackColor = false;
            this.btnYcgk.Click += new System.EventHandler(this.btnYcgk_Click);
            // 
            // btnLive
            // 
            this.btnLive.BackColor = System.Drawing.Color.Transparent;
            this.btnLive.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnLive.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.btnLive.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnLive.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnLive.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.btnLive.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnLive.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnLive.Location = new System.Drawing.Point(763, 0);
            this.btnLive.Name = "btnLive";
            this.btnLive.Size = new System.Drawing.Size(85, 46);
            this.btnLive.TabIndex = 19;
            this.btnLive.Tag = "启动直播obs";
            this.btnLive.Text = "远程播课";
            this.btnLive.UseVisualStyleBackColor = false;
            this.btnLive.Click += new System.EventHandler(this.btnLive_Click);
            // 
            // btnCCLive
            // 
            this.btnCCLive.BackColor = System.Drawing.Color.Transparent;
            this.btnCCLive.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnCCLive.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.btnCCLive.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnCCLive.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(0)))), ((int)(((byte)(15)))));
            this.btnCCLive.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.btnCCLive.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCCLive.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnCCLive.Location = new System.Drawing.Point(848, 0);
            this.btnCCLive.Name = "btnCCLive";
            this.btnCCLive.Size = new System.Drawing.Size(85, 46);
            this.btnCCLive.TabIndex = 101;
            this.btnCCLive.Tag = "CCLive";
            this.btnCCLive.Text = "直播课程";
            this.btnCCLive.UseVisualStyleBackColor = false;
            this.btnCCLive.Click += new System.EventHandler(this.btnCCLive_Click);
            // 
            // plClose
            // 
            this.plClose.Controls.Add(this.dmButtonMin1);
            this.plClose.Controls.Add(this.dmButtonClose1);
            this.plClose.Dock = System.Windows.Forms.DockStyle.Right;
            this.plClose.Location = new System.Drawing.Point(958, 0);
            this.plClose.Name = "plClose";
            this.plClose.Size = new System.Drawing.Size(62, 46);
            this.plClose.TabIndex = 12;
            // 
            // dmButtonMin1
            // 
            this.dmButtonMin1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.dmButtonMin1.BackColor = System.Drawing.Color.Transparent;
            this.dmButtonMin1.Location = new System.Drawing.Point(3, 8);
            this.dmButtonMin1.Name = "dmButtonMin1";
            this.dmButtonMin1.Size = new System.Drawing.Size(30, 27);
            this.dmButtonMin1.TabIndex = 9;
            this.dmButtonMin1.Click += new System.EventHandler(this.dmButtonMin1_Click);
            // 
            // dmButtonClose1
            // 
            this.dmButtonClose1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.dmButtonClose1.BackColor = System.Drawing.Color.Transparent;
            this.dmButtonClose1.Location = new System.Drawing.Point(32, 8);
            this.dmButtonClose1.MaximumSize = new System.Drawing.Size(30, 27);
            this.dmButtonClose1.MinimumSize = new System.Drawing.Size(30, 27);
            this.dmButtonClose1.Name = "dmButtonClose1";
            this.dmButtonClose1.Size = new System.Drawing.Size(30, 27);
            this.dmButtonClose1.TabIndex = 10;
            this.dmButtonClose1.Click += new System.EventHandler(this.dmButtonClose1_Click);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1024, 768);
            this.Controls.Add(this.plMain);
            this.Controls.Add(this.plBottom);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "航天云课联网";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.frmMain_FormClosed);
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.plBottom.ResumeLayout(false);
            this.plButtonList.ResumeLayout(false);
            this.plTools.ResumeLayout(false);
            this.plClose.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DMSkin.Controls.DMButtonClose dmButtonClose1;
        private DMSkin.Controls.DMButtonMin dmButtonMin1;
        private System.Windows.Forms.Panel plIcon;
        private System.Windows.Forms.Panel plMain;
        private System.Windows.Forms.Panel plBottom;
        private System.Windows.Forms.Panel plButtonList;
        private System.Windows.Forms.Panel plClose;
        private System.Windows.Forms.Button btnActive;
        private System.Windows.Forms.Button btnWhiteboard;
        private System.Windows.Forms.Button btnBooth;
        private System.Windows.Forms.Button btnRecord;
        private System.Windows.Forms.Button btnHome;
        private System.Windows.Forms.Button btnLive;
        private System.Windows.Forms.ImageList imageList1;
        private System.Windows.Forms.Button forwardButton;
        private System.Windows.Forms.Button refreshButton;
        private System.Windows.Forms.Button backButton;
        private System.Windows.Forms.Button btnYcgk;
        private System.Windows.Forms.Button btnMingBo;
        private System.Windows.Forms.Panel plTools;
        private System.Windows.Forms.Button btnCCLive;
    }
}

