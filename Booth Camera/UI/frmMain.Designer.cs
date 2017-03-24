namespace AeroEduClass
{
    partial class frmMain
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMain));
            this.styleManager1 = new DevComponents.DotNetBar.StyleManager(this.components);
            this.comboTree2 = new DevComponents.DotNetBar.Controls.ComboTree();
            this.comboTree1 = new DevComponents.DotNetBar.Controls.ComboTree();
            this.node1 = new DevComponents.AdvTree.Node();
            this.node2 = new DevComponents.AdvTree.Node();
            this.node3 = new DevComponents.AdvTree.Node();
            this.node4 = new DevComponents.AdvTree.Node();
            this.lbNotice = new System.Windows.Forms.Label();
            this.lbSoftName = new System.Windows.Forms.Label();
            this.lbRecordTime = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.galleryContainer2 = new DevComponents.DotNetBar.GalleryContainer();
            this.labelItem1 = new DevComponents.DotNetBar.LabelItem();
            this.plCamera = new System.Windows.Forms.Panel();
            this.timer2 = new System.Windows.Forms.Timer(this.components);
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.btnMinsize = new DMSkin.Controls.DMButtonMin();
            this.btnExitApp = new DMSkin.Controls.DMButtonClose();
            this.btnOpenErr = new System.Windows.Forms.Button();
            this.btnJoinErrCol = new System.Windows.Forms.Button();
            this.btnSaveComment = new System.Windows.Forms.Button();
            this.buttonX1 = new System.Windows.Forms.Button();
            this.btnNear = new System.Windows.Forms.Button();
            this.btnFar = new System.Windows.Forms.Button();
            this.btnComment = new System.Windows.Forms.Button();
            this.btnOpendir = new System.Windows.Forms.Button();
            this.btnSnapshot = new System.Windows.Forms.Button();
            this.btnRecordControl = new System.Windows.Forms.Button();
            this.imglist1 = new imgList.imglist();
            this.btnRecordPause = new DevComponents.DotNetBar.ButtonX();
            this.btnColor = new DevComponents.DotNetBar.ColorPickerButton();
            this.timer3 = new System.Windows.Forms.Timer(this.components);
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // styleManager1
            // 
            this.styleManager1.ManagerStyle = DevComponents.DotNetBar.eStyle.Office2010Blue;
            this.styleManager1.MetroColorParameters = new DevComponents.DotNetBar.Metro.ColorTables.MetroColorGeneratorParameters(System.Drawing.Color.White, System.Drawing.Color.FromArgb(((int)(((byte)(43)))), ((int)(((byte)(87)))), ((int)(((byte)(154))))));
            // 
            // comboTree2
            // 
            this.comboTree2.BackColor = System.Drawing.SystemColors.Window;
            // 
            // 
            // 
            this.comboTree2.BackgroundStyle.BackColor = System.Drawing.Color.White;
            this.comboTree2.BackgroundStyle.BackColor2 = System.Drawing.Color.White;
            this.comboTree2.BackgroundStyle.BorderColor = System.Drawing.Color.Black;
            this.comboTree2.BackgroundStyle.BorderColor2 = System.Drawing.Color.Black;
            this.comboTree2.BackgroundStyle.Class = "TextBoxBorder";
            this.comboTree2.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.comboTree2.ButtonClear.Tooltip = "";
            this.comboTree2.ButtonCustom.Tooltip = "";
            this.comboTree2.ButtonCustom2.Tooltip = "";
            this.comboTree2.ButtonDropDown.Tooltip = "";
            this.comboTree2.ButtonDropDown.Visible = true;
            this.comboTree2.Location = new System.Drawing.Point(165, 110);
            this.comboTree2.Margin = new System.Windows.Forms.Padding(0);
            this.comboTree2.Name = "comboTree2";
            this.comboTree2.Size = new System.Drawing.Size(67, 30);
            this.comboTree2.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.comboTree2.TabIndex = 12;
            this.comboTree2.SelectedIndexChanged += new System.EventHandler(this.comboTree2_SelectedIndexChanged);
            // 
            // comboTree1
            // 
            this.comboTree1.BackColor = System.Drawing.SystemColors.Window;
            // 
            // 
            // 
            this.comboTree1.BackgroundStyle.BackColor = System.Drawing.Color.White;
            this.comboTree1.BackgroundStyle.BackColor2 = System.Drawing.Color.White;
            this.comboTree1.BackgroundStyle.BorderColor = System.Drawing.Color.Black;
            this.comboTree1.BackgroundStyle.Class = "TextBoxBorder";
            this.comboTree1.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.comboTree1.BackgroundStyle.TextColor = System.Drawing.Color.Black;
            this.comboTree1.BackgroundStyle.TextLineAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Near;
            this.comboTree1.BackgroundStyle.TextShadowColor = System.Drawing.Color.White;
            this.comboTree1.ButtonClear.Tooltip = "";
            this.comboTree1.ButtonCustom.Tooltip = "";
            this.comboTree1.ButtonCustom2.Tooltip = "";
            this.comboTree1.ButtonDropDown.Tooltip = "";
            this.comboTree1.ButtonDropDown.Visible = true;
            this.comboTree1.Location = new System.Drawing.Point(18, 110);
            this.comboTree1.Margin = new System.Windows.Forms.Padding(0);
            this.comboTree1.Name = "comboTree1";
            this.comboTree1.Nodes.AddRange(new DevComponents.AdvTree.Node[] {
            this.node1,
            this.node2,
            this.node3,
            this.node4});
            this.comboTree1.SelectionBoxStyle = DevComponents.AdvTree.eSelectionStyle.NodeMarker;
            this.comboTree1.Size = new System.Drawing.Size(67, 30);
            this.comboTree1.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.comboTree1.TabIndex = 9;
            this.comboTree1.Text = "粗细";
            this.comboTree1.WatermarkAlignment = DevComponents.Editors.eTextAlignment.Right;
            this.comboTree1.SelectedIndexChanged += new System.EventHandler(this.comboTree1_SelectedIndexChanged);
            // 
            // node1
            // 
            this.node1.Name = "node1";
            this.node1.Text = "细";
            // 
            // node2
            // 
            this.node2.Name = "node2";
            this.node2.Text = "较细";
            // 
            // node3
            // 
            this.node3.Name = "node3";
            this.node3.Text = "粗";
            // 
            // node4
            // 
            this.node4.Name = "node4";
            this.node4.Text = "超粗";
            // 
            // lbNotice
            // 
            this.lbNotice.AutoSize = true;
            this.lbNotice.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lbNotice.ForeColor = System.Drawing.Color.Black;
            this.lbNotice.Location = new System.Drawing.Point(366, 126);
            this.lbNotice.Name = "lbNotice";
            this.lbNotice.Size = new System.Drawing.Size(83, 12);
            this.lbNotice.TabIndex = 23;
            this.lbNotice.Text = "提示：XXXXX。";
            this.lbNotice.Visible = false;
            // 
            // lbSoftName
            // 
            this.lbSoftName.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.lbSoftName.AutoSize = true;
            this.lbSoftName.Font = new System.Drawing.Font("微软雅黑", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lbSoftName.ForeColor = System.Drawing.Color.Black;
            this.lbSoftName.Location = new System.Drawing.Point(725, 139);
            this.lbSoftName.Name = "lbSoftName";
            this.lbSoftName.Size = new System.Drawing.Size(216, 19);
            this.lbSoftName.TabIndex = 18;
            this.lbSoftName.Text = "航天云实物展台软件 版本：2.1.0";
            this.lbSoftName.Visible = false;
            // 
            // lbRecordTime
            // 
            this.lbRecordTime.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lbRecordTime.AutoSize = true;
            this.lbRecordTime.BackColor = System.Drawing.Color.Transparent;
            this.lbRecordTime.Font = new System.Drawing.Font("宋体", 10.5F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lbRecordTime.ForeColor = System.Drawing.Color.Black;
            this.lbRecordTime.Location = new System.Drawing.Point(18, 9);
            this.lbRecordTime.Name = "lbRecordTime";
            this.lbRecordTime.Size = new System.Drawing.Size(71, 14);
            this.lbRecordTime.TabIndex = 10;
            this.lbRecordTime.Text = "00:00:00";
            // 
            // timer1
            // 
            this.timer1.Interval = 1000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // galleryContainer2
            // 
            // 
            // 
            // 
            this.galleryContainer2.BackgroundStyle.Class = "RibbonFileMenuColumnTwoContainer";
            this.galleryContainer2.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.galleryContainer2.EnableGalleryPopup = false;
            this.galleryContainer2.LayoutOrientation = DevComponents.DotNetBar.eOrientation.Vertical;
            this.galleryContainer2.MinimumSize = new System.Drawing.Size(180, 240);
            this.galleryContainer2.MultiLine = false;
            this.galleryContainer2.Name = "galleryContainer2";
            this.galleryContainer2.PopupUsesStandardScrollbars = false;
            // 
            // 
            // 
            this.galleryContainer2.TitleStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            // 
            // labelItem1
            // 
            this.labelItem1.BorderSide = DevComponents.DotNetBar.eBorderSide.Bottom;
            this.labelItem1.BorderType = DevComponents.DotNetBar.eBorderType.Etched;
            this.labelItem1.CanCustomize = false;
            this.labelItem1.ForeColor = System.Drawing.SystemColors.ControlText;
            this.labelItem1.Name = "labelItem1";
            // 
            // plCamera
            // 
            this.plCamera.Dock = System.Windows.Forms.DockStyle.Top;
            this.plCamera.Location = new System.Drawing.Point(0, 0);
            this.plCamera.Name = "plCamera";
            this.plCamera.Size = new System.Drawing.Size(1014, 560);
            this.plCamera.TabIndex = 3;
            this.plCamera.MouseDown += new System.Windows.Forms.MouseEventHandler(this.panelCamera_MouseDown);
            this.plCamera.MouseMove += new System.Windows.Forms.MouseEventHandler(this.panelCamera_MouseMove);
            this.plCamera.MouseUp += new System.Windows.Forms.MouseEventHandler(this.panelCamera_MouseUp);
            // 
            // timer2
            // 
            this.timer2.Interval = 5000;
            this.timer2.Tick += new System.EventHandler(this.timer2_Tick);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Controls.Add(this.plCamera);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(5, 1);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1014, 722);
            this.panel1.TabIndex = 4;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.White;
            this.panel2.Controls.Add(this.btnMinsize);
            this.panel2.Controls.Add(this.btnExitApp);
            this.panel2.Controls.Add(this.btnOpenErr);
            this.panel2.Controls.Add(this.btnJoinErrCol);
            this.panel2.Controls.Add(this.btnSaveComment);
            this.panel2.Controls.Add(this.buttonX1);
            this.panel2.Controls.Add(this.btnNear);
            this.panel2.Controls.Add(this.btnFar);
            this.panel2.Controls.Add(this.btnComment);
            this.panel2.Controls.Add(this.btnOpendir);
            this.panel2.Controls.Add(this.btnSnapshot);
            this.panel2.Controls.Add(this.btnRecordControl);
            this.panel2.Controls.Add(this.imglist1);
            this.panel2.Controls.Add(this.lbNotice);
            this.panel2.Controls.Add(this.lbSoftName);
            this.panel2.Controls.Add(this.btnRecordPause);
            this.panel2.Controls.Add(this.btnColor);
            this.panel2.Controls.Add(this.comboTree1);
            this.panel2.Controls.Add(this.comboTree2);
            this.panel2.Controls.Add(this.lbRecordTime);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(0, 560);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1014, 162);
            this.panel2.TabIndex = 24;
            // 
            // btnMinsize
            // 
            this.btnMinsize.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnMinsize.BackColor = System.Drawing.Color.Transparent;
            this.btnMinsize.Location = new System.Drawing.Point(945, 134);
            this.btnMinsize.Name = "btnMinsize";
            this.btnMinsize.Size = new System.Drawing.Size(30, 27);
            this.btnMinsize.TabIndex = 26;
            this.btnMinsize.Click += new System.EventHandler(this.btnMinsize_Click);
            // 
            // btnExitApp
            // 
            this.btnExitApp.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnExitApp.BackColor = System.Drawing.Color.Transparent;
            this.btnExitApp.Location = new System.Drawing.Point(980, 134);
            this.btnExitApp.MaximumSize = new System.Drawing.Size(30, 27);
            this.btnExitApp.MinimumSize = new System.Drawing.Size(30, 27);
            this.btnExitApp.Name = "btnExitApp";
            this.btnExitApp.Size = new System.Drawing.Size(30, 27);
            this.btnExitApp.TabIndex = 25;
            this.btnExitApp.Click += new System.EventHandler(this.btnExitApp_Click);
            // 
            // btnOpenErr
            // 
            this.btnOpenErr.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnOpenErr.Location = new System.Drawing.Point(263, 110);
            this.btnOpenErr.Name = "btnOpenErr";
            this.btnOpenErr.Size = new System.Drawing.Size(80, 30);
            this.btnOpenErr.TabIndex = 13;
            this.btnOpenErr.Text = "错题集目录";
            this.btnOpenErr.UseVisualStyleBackColor = true;
            this.btnOpenErr.Click += new System.EventHandler(this.btnOpenErr_Click);
            // 
            // btnJoinErrCol
            // 
            this.btnJoinErrCol.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnJoinErrCol.Location = new System.Drawing.Point(263, 71);
            this.btnJoinErrCol.Name = "btnJoinErrCol";
            this.btnJoinErrCol.Size = new System.Drawing.Size(80, 30);
            this.btnJoinErrCol.TabIndex = 8;
            this.btnJoinErrCol.Text = "加入错题集";
            this.btnJoinErrCol.UseVisualStyleBackColor = true;
            this.btnJoinErrCol.Click += new System.EventHandler(this.btnJoinErrCol_Click);
            // 
            // btnSaveComment
            // 
            this.btnSaveComment.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSaveComment.Location = new System.Drawing.Point(92, 71);
            this.btnSaveComment.Name = "btnSaveComment";
            this.btnSaveComment.Size = new System.Drawing.Size(67, 30);
            this.btnSaveComment.TabIndex = 6;
            this.btnSaveComment.Text = "保存批注";
            this.btnSaveComment.UseVisualStyleBackColor = true;
            this.btnSaveComment.Click += new System.EventHandler(this.btnSaveComment_Click);
            // 
            // buttonX1
            // 
            this.buttonX1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonX1.Location = new System.Drawing.Point(165, 71);
            this.buttonX1.Name = "buttonX1";
            this.buttonX1.Size = new System.Drawing.Size(67, 30);
            this.buttonX1.TabIndex = 7;
            this.buttonX1.Text = "批注目录";
            this.buttonX1.UseVisualStyleBackColor = true;
            this.buttonX1.Click += new System.EventHandler(this.buttonX1_Click);
            // 
            // btnNear
            // 
            this.btnNear.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnNear.Font = new System.Drawing.Font("宋体", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnNear.ForeColor = System.Drawing.SystemColors.ControlText;
            this.btnNear.Location = new System.Drawing.Point(263, 32);
            this.btnNear.Margin = new System.Windows.Forms.Padding(0);
            this.btnNear.Name = "btnNear";
            this.btnNear.Size = new System.Drawing.Size(38, 30);
            this.btnNear.TabIndex = 3;
            this.btnNear.Text = "放大";
            this.btnNear.UseVisualStyleBackColor = true;
            this.btnNear.Click += new System.EventHandler(this.btnNear_Click);
            // 
            // btnFar
            // 
            this.btnFar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnFar.Font = new System.Drawing.Font("宋体", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnFar.Location = new System.Drawing.Point(305, 32);
            this.btnFar.Margin = new System.Windows.Forms.Padding(0);
            this.btnFar.Name = "btnFar";
            this.btnFar.Size = new System.Drawing.Size(38, 30);
            this.btnFar.TabIndex = 4;
            this.btnFar.Text = "缩小";
            this.btnFar.UseVisualStyleBackColor = true;
            this.btnFar.Click += new System.EventHandler(this.btnFar_Click);
            // 
            // btnComment
            // 
            this.btnComment.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnComment.Location = new System.Drawing.Point(18, 71);
            this.btnComment.Name = "btnComment";
            this.btnComment.Size = new System.Drawing.Size(67, 30);
            this.btnComment.TabIndex = 5;
            this.btnComment.Text = "开始批注";
            this.btnComment.UseVisualStyleBackColor = true;
            this.btnComment.Click += new System.EventHandler(this.btnComment_Click);
            // 
            // btnOpendir
            // 
            this.btnOpendir.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnOpendir.Location = new System.Drawing.Point(165, 32);
            this.btnOpendir.Name = "btnOpendir";
            this.btnOpendir.Size = new System.Drawing.Size(67, 30);
            this.btnOpendir.TabIndex = 2;
            this.btnOpendir.Text = "视频目录";
            this.btnOpendir.UseVisualStyleBackColor = true;
            this.btnOpendir.Click += new System.EventHandler(this.btnOpenDir_Click);
            // 
            // btnSnapshot
            // 
            this.btnSnapshot.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSnapshot.Location = new System.Drawing.Point(92, 32);
            this.btnSnapshot.Name = "btnSnapshot";
            this.btnSnapshot.Size = new System.Drawing.Size(67, 30);
            this.btnSnapshot.TabIndex = 1;
            this.btnSnapshot.Text = "拍照";
            this.btnSnapshot.UseVisualStyleBackColor = true;
            this.btnSnapshot.Click += new System.EventHandler(this.btnSnapshot_Click);
            // 
            // btnRecordControl
            // 
            this.btnRecordControl.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRecordControl.Location = new System.Drawing.Point(18, 32);
            this.btnRecordControl.Name = "btnRecordControl";
            this.btnRecordControl.Size = new System.Drawing.Size(67, 30);
            this.btnRecordControl.TabIndex = 0;
            this.btnRecordControl.Text = "录像";
            this.btnRecordControl.UseVisualStyleBackColor = true;
            this.btnRecordControl.Click += new System.EventHandler(this.btnRecordControl_Click);
            // 
            // imglist1
            // 
            this.imglist1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.imglist1.BackColor = System.Drawing.Color.Transparent;
            this.imglist1.Location = new System.Drawing.Point(366, 25);
            this.imglist1.Name = "imglist1";
            this.imglist1.Size = new System.Drawing.Size(632, 95);
            this.imglist1.TabIndex = 24;
            this.imglist1.Visible = false;
            this.imglist1.PictureBoxClick += new imgList.imglist.PictureBoxClickHandle(this.imglist1_PictureBoxClick);
            // 
            // btnRecordPause
            // 
            this.btnRecordPause.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnRecordPause.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnRecordPause.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnRecordPause.Enabled = false;
            this.btnRecordPause.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnRecordPause.Location = new System.Drawing.Point(965, 3);
            this.btnRecordPause.Name = "btnRecordPause";
            this.btnRecordPause.Size = new System.Drawing.Size(37, 20);
            this.btnRecordPause.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnRecordPause.TabIndex = 11;
            this.btnRecordPause.Text = "暂停录像";
            this.btnRecordPause.Tooltip = "录像";
            this.btnRecordPause.Visible = false;
            this.btnRecordPause.Click += new System.EventHandler(this.btnRecordPause_Click);
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
            this.btnColor.Location = new System.Drawing.Point(92, 110);
            this.btnColor.Margin = new System.Windows.Forms.Padding(0);
            this.btnColor.Name = "btnColor";
            this.btnColor.PopupSide = DevComponents.DotNetBar.ePopupSide.Top;
            this.btnColor.SelectedColorImageRectangle = new System.Drawing.Rectangle(2, 2, 12, 12);
            this.btnColor.Shape = new DevComponents.DotNetBar.RoundRectangleShapeDescriptor();
            this.btnColor.Size = new System.Drawing.Size(67, 30);
            this.btnColor.SplitButton = true;
            this.btnColor.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnColor.SymbolColor = System.Drawing.Color.Transparent;
            this.btnColor.TabIndex = 10;
            this.btnColor.Text = "颜色";
            this.btnColor.TextAlignment = DevComponents.DotNetBar.eButtonTextAlignment.Left;
            this.btnColor.TextColor = System.Drawing.Color.Black;
            this.btnColor.SelectedColorChanged += new System.EventHandler(this.btnColor_SelectedColorChanged);
            // 
            // timer3
            // 
            this.timer3.Interval = 1000;
            this.timer3.Tick += new System.EventHandler(this.timer3_Tick);
            // 
            // frmMain
            // 
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1024, 725);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "实物展台软件";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmMain_FormClosing);
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.Resize += new System.EventHandler(this.RibbonForm1_Resize);
            this.panel1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.StyleManager styleManager1;
        private System.Windows.Forms.Label lbRecordTime;
        private System.Windows.Forms.Timer timer1;
        private DevComponents.DotNetBar.GalleryContainer galleryContainer2;
        private DevComponents.DotNetBar.LabelItem labelItem1;
        private System.Windows.Forms.Panel plCamera;
        private System.Windows.Forms.Label lbSoftName;
        private DevComponents.DotNetBar.ColorPickerButton btnColor;
        private System.Windows.Forms.Label lbNotice;
        private System.Windows.Forms.Timer timer2;
        private imgList.imglist imglist1;
        private System.Windows.Forms.Panel panel1;
        private DevComponents.DotNetBar.Controls.ComboTree comboTree1;
        private DevComponents.AdvTree.Node node1;
        private DevComponents.AdvTree.Node node2;
        private DevComponents.AdvTree.Node node3;
        private DevComponents.AdvTree.Node node4;
        private System.Windows.Forms.Timer timer3;
        private DevComponents.DotNetBar.Controls.ComboTree comboTree2;
        private System.Windows.Forms.Panel panel2;
        private DevComponents.DotNetBar.ButtonX btnRecordPause;
        private System.Windows.Forms.Button btnRecordControl;
        private System.Windows.Forms.Button btnSnapshot;
        private System.Windows.Forms.Button btnOpendir;
        private System.Windows.Forms.Button btnSaveComment;
        private System.Windows.Forms.Button buttonX1;
        private System.Windows.Forms.Button btnNear;
        private System.Windows.Forms.Button btnFar;
        private System.Windows.Forms.Button btnComment;
        private System.Windows.Forms.Button btnOpenErr;
        private System.Windows.Forms.Button btnJoinErrCol;
        private DMSkin.Controls.DMButtonClose btnExitApp;
        private DMSkin.Controls.DMButtonMin btnMinsize;


    }
}