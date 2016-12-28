namespace Booth_Camera
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
            this.comboTree1 = new DevComponents.DotNetBar.Controls.ComboTree();
            this.node1 = new DevComponents.AdvTree.Node();
            this.node2 = new DevComponents.AdvTree.Node();
            this.node3 = new DevComponents.AdvTree.Node();
            this.node4 = new DevComponents.AdvTree.Node();
            this.lbNotice = new System.Windows.Forms.Label();
            this.btnColor = new DevComponents.DotNetBar.ColorPickerButton();
            this.btnSaveComment = new DevComponents.DotNetBar.ButtonX();
            this.btnComment = new DevComponents.DotNetBar.ButtonX();
            this.btnFar = new DevComponents.DotNetBar.ButtonX();
            this.btnOpendir = new DevComponents.DotNetBar.ButtonX();
            this.btnNear = new DevComponents.DotNetBar.ButtonX();
            this.lbRecordTime = new System.Windows.Forms.Label();
            this.btnSnapshot = new DevComponents.DotNetBar.ButtonX();
            this.btnRecordControl = new DevComponents.DotNetBar.ButtonX();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.galleryContainer2 = new DevComponents.DotNetBar.GalleryContainer();
            this.labelItem1 = new DevComponents.DotNetBar.LabelItem();
            this.plCamera = new System.Windows.Forms.Panel();
            this.timer2 = new System.Windows.Forms.Timer(this.components);
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel4 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.tabControl1 = new DevComponents.DotNetBar.TabControl();
            this.tabControlPanel1 = new DevComponents.DotNetBar.TabControlPanel();
            this.tabItem1 = new DevComponents.DotNetBar.TabItem(this.components);
            this.tabControlPanel2 = new DevComponents.DotNetBar.TabControlPanel();
            this.buttonX1 = new DevComponents.DotNetBar.ButtonX();
            this.imglist1 = new imgList.imglist();
            this.tabItem2 = new DevComponents.DotNetBar.TabItem(this.components);
            this.timer3 = new System.Windows.Forms.Timer(this.components);
            this.panel1.SuspendLayout();
            this.panel4.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tabControl1)).BeginInit();
            this.tabControl1.SuspendLayout();
            this.tabControlPanel1.SuspendLayout();
            this.tabControlPanel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // styleManager1
            // 
            this.styleManager1.ManagerStyle = DevComponents.DotNetBar.eStyle.Office2010Blue;
            this.styleManager1.MetroColorParameters = new DevComponents.DotNetBar.Metro.ColorTables.MetroColorGeneratorParameters(System.Drawing.Color.White, System.Drawing.Color.FromArgb(((int)(((byte)(43)))), ((int)(((byte)(87)))), ((int)(((byte)(154))))));
            // 
            // comboTree1
            // 
            this.comboTree1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.comboTree1.BackColor = System.Drawing.SystemColors.Window;
            // 
            // 
            // 
            this.comboTree1.BackgroundStyle.Class = "TextBoxBorder";
            this.comboTree1.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.comboTree1.ButtonClear.Tooltip = "";
            this.comboTree1.ButtonCustom.Tooltip = "";
            this.comboTree1.ButtonCustom2.Tooltip = "";
            this.comboTree1.ButtonDropDown.Tooltip = "";
            this.comboTree1.ButtonDropDown.Visible = true;
            this.comboTree1.Location = new System.Drawing.Point(136, 69);
            this.comboTree1.Name = "comboTree1";
            this.comboTree1.Nodes.AddRange(new DevComponents.AdvTree.Node[] {
            this.node1,
            this.node2,
            this.node3,
            this.node4});
            this.comboTree1.Size = new System.Drawing.Size(80, 40);
            this.comboTree1.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.comboTree1.TabIndex = 25;
            this.comboTree1.Text = "粗细";
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
            this.lbNotice.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lbNotice.AutoSize = true;
            this.lbNotice.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lbNotice.ForeColor = System.Drawing.Color.Black;
            this.lbNotice.Location = new System.Drawing.Point(899, 112);
            this.lbNotice.Name = "lbNotice";
            this.lbNotice.Size = new System.Drawing.Size(83, 12);
            this.lbNotice.TabIndex = 23;
            this.lbNotice.Text = "提示：XXXXX。";
            this.lbNotice.Visible = false;
            // 
            // btnColor
            // 
            this.btnColor.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnColor.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnColor.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnColor.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnColor.Image = ((System.Drawing.Image)(resources.GetObject("btnColor.Image")));
            this.btnColor.Location = new System.Drawing.Point(136, 23);
            this.btnColor.Name = "btnColor";
            this.btnColor.SelectedColorImageRectangle = new System.Drawing.Rectangle(2, 2, 12, 12);
            this.btnColor.Size = new System.Drawing.Size(80, 40);
            this.btnColor.SplitButton = true;
            this.btnColor.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnColor.SymbolColor = System.Drawing.Color.White;
            this.btnColor.TabIndex = 21;
            this.btnColor.Text = "颜色";
            this.btnColor.TextAlignment = DevComponents.DotNetBar.eButtonTextAlignment.Left;
            this.btnColor.SelectedColorChanged += new System.EventHandler(this.btnColor_SelectedColorChanged);
            // 
            // btnSaveComment
            // 
            this.btnSaveComment.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnSaveComment.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnSaveComment.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnSaveComment.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnSaveComment.Location = new System.Drawing.Point(50, 69);
            this.btnSaveComment.Name = "btnSaveComment";
            this.btnSaveComment.Size = new System.Drawing.Size(80, 40);
            this.btnSaveComment.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnSaveComment.TabIndex = 16;
            this.btnSaveComment.Text = "保存批注";
            this.btnSaveComment.Click += new System.EventHandler(this.btnSaveComment_Click);
            // 
            // btnComment
            // 
            this.btnComment.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnComment.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnComment.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnComment.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnComment.Location = new System.Drawing.Point(50, 23);
            this.btnComment.Name = "btnComment";
            this.btnComment.Size = new System.Drawing.Size(80, 40);
            this.btnComment.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnComment.TabIndex = 15;
            this.btnComment.Text = "开始批注";
            this.btnComment.Tooltip = "开始批注";
            this.btnComment.Click += new System.EventHandler(this.btnComment_Click);
            // 
            // btnFar
            // 
            this.btnFar.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnFar.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnFar.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnFar.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnFar.Location = new System.Drawing.Point(256, 14);
            this.btnFar.Name = "btnFar";
            this.btnFar.Size = new System.Drawing.Size(86, 86);
            this.btnFar.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnFar.TabIndex = 3;
            this.btnFar.Text = "放大";
            this.btnFar.Tooltip = "变倍放大";
            this.btnFar.Click += new System.EventHandler(this.btnNear_Click);
            this.btnFar.MouseDown += new System.Windows.Forms.MouseEventHandler(this.btnFar_MouseDown);
            this.btnFar.MouseUp += new System.Windows.Forms.MouseEventHandler(this.btnFar_MouseUp);
            // 
            // btnOpendir
            // 
            this.btnOpendir.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnOpendir.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnOpendir.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnOpendir.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnOpendir.Location = new System.Drawing.Point(623, 14);
            this.btnOpendir.Name = "btnOpendir";
            this.btnOpendir.Size = new System.Drawing.Size(86, 86);
            this.btnOpendir.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnOpendir.TabIndex = 8;
            this.btnOpendir.Text = "打开目录";
            this.btnOpendir.Tooltip = "打开目录";
            this.btnOpendir.Click += new System.EventHandler(this.btnOpenDir_Click);
            // 
            // btnNear
            // 
            this.btnNear.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnNear.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnNear.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnNear.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnNear.Location = new System.Drawing.Point(348, 14);
            this.btnNear.Name = "btnNear";
            this.btnNear.Size = new System.Drawing.Size(86, 86);
            this.btnNear.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnNear.TabIndex = 4;
            this.btnNear.Text = "缩小";
            this.btnNear.Tooltip = "变倍缩小";
            this.btnNear.Click += new System.EventHandler(this.btnFar_Click);
            this.btnNear.MouseDown += new System.Windows.Forms.MouseEventHandler(this.btnNear_MouseDown);
            this.btnNear.MouseUp += new System.Windows.Forms.MouseEventHandler(this.btnNear_MouseUp);
            // 
            // lbRecordTime
            // 
            this.lbRecordTime.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lbRecordTime.AutoSize = true;
            this.lbRecordTime.BackColor = System.Drawing.Color.Transparent;
            this.lbRecordTime.Font = new System.Drawing.Font("宋体", 10.5F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lbRecordTime.ForeColor = System.Drawing.Color.Black;
            this.lbRecordTime.Location = new System.Drawing.Point(448, 103);
            this.lbRecordTime.Name = "lbRecordTime";
            this.lbRecordTime.Size = new System.Drawing.Size(71, 14);
            this.lbRecordTime.TabIndex = 10;
            this.lbRecordTime.Text = "00:00:00";
            // 
            // btnSnapshot
            // 
            this.btnSnapshot.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnSnapshot.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnSnapshot.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnSnapshot.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnSnapshot.Location = new System.Drawing.Point(531, 14);
            this.btnSnapshot.Name = "btnSnapshot";
            this.btnSnapshot.Size = new System.Drawing.Size(86, 86);
            this.btnSnapshot.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnSnapshot.TabIndex = 6;
            this.btnSnapshot.Text = "拍照";
            this.btnSnapshot.Tooltip = "拍照";
            this.btnSnapshot.Click += new System.EventHandler(this.btnSnapshot_Click);
            // 
            // btnRecordControl
            // 
            this.btnRecordControl.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnRecordControl.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnRecordControl.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnRecordControl.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnRecordControl.Location = new System.Drawing.Point(440, 14);
            this.btnRecordControl.Name = "btnRecordControl";
            this.btnRecordControl.Size = new System.Drawing.Size(86, 86);
            this.btnRecordControl.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnRecordControl.TabIndex = 5;
            this.btnRecordControl.Text = "录像";
            this.btnRecordControl.Tooltip = "录像";
            this.btnRecordControl.Click += new System.EventHandler(this.btnRecordControl_Click);
            // 
            // timer1
            // 
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
            this.plCamera.BackColor = System.Drawing.SystemColors.Control;
            this.plCamera.Location = new System.Drawing.Point(218, 134);
            this.plCamera.Name = "plCamera";
            this.plCamera.Size = new System.Drawing.Size(548, 270);
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
            this.panel1.Controls.Add(this.panel4);
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1020, 725);
            this.panel1.TabIndex = 4;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // panel4
            // 
            this.panel4.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.panel4.Controls.Add(this.plCamera);
            this.panel4.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel4.Location = new System.Drawing.Point(0, 0);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(1020, 595);
            this.panel4.TabIndex = 5;
            this.panel4.Resize += new System.EventHandler(this.panel4_Resize);
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.tabControl1);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel2.Location = new System.Drawing.Point(0, 595);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1020, 130);
            this.panel2.TabIndex = 4;
            // 
            // tabControl1
            // 
            this.tabControl1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(207)))), ((int)(((byte)(221)))), ((int)(((byte)(238)))));
            this.tabControl1.CanReorderTabs = true;
            this.tabControl1.ColorScheme.TabBackground2 = System.Drawing.Color.White;
            this.tabControl1.ColorScheme.TabItemBackgroundColorBlend.AddRange(new DevComponents.DotNetBar.BackgroundColorBlend[] {
            new DevComponents.DotNetBar.BackgroundColorBlend(System.Drawing.Color.FromArgb(((int)(((byte)(200)))), ((int)(((byte)(220)))), ((int)(((byte)(244))))), 0F),
            new DevComponents.DotNetBar.BackgroundColorBlend(System.Drawing.Color.FromArgb(((int)(((byte)(175)))), ((int)(((byte)(210)))), ((int)(((byte)(254))))), 0.45F),
            new DevComponents.DotNetBar.BackgroundColorBlend(System.Drawing.Color.FromArgb(((int)(((byte)(150)))), ((int)(((byte)(191)))), ((int)(((byte)(243))))), 0.45F),
            new DevComponents.DotNetBar.BackgroundColorBlend(System.Drawing.Color.FromArgb(((int)(((byte)(181)))), ((int)(((byte)(204)))), ((int)(((byte)(233))))), 1F)});
            this.tabControl1.ColorScheme.TabItemHotBackgroundColorBlend.AddRange(new DevComponents.DotNetBar.BackgroundColorBlend[] {
            new DevComponents.DotNetBar.BackgroundColorBlend(System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(237)))), ((int)(((byte)(255))))), 0F),
            new DevComponents.DotNetBar.BackgroundColorBlend(System.Drawing.Color.FromArgb(((int)(((byte)(215)))), ((int)(((byte)(232)))), ((int)(((byte)(255))))), 0.45F),
            new DevComponents.DotNetBar.BackgroundColorBlend(System.Drawing.Color.FromArgb(((int)(((byte)(176)))), ((int)(((byte)(210)))), ((int)(((byte)(255))))), 0.45F),
            new DevComponents.DotNetBar.BackgroundColorBlend(System.Drawing.Color.FromArgb(((int)(((byte)(190)))), ((int)(((byte)(218)))), ((int)(((byte)(255))))), 1F)});
            this.tabControl1.ColorScheme.TabItemHotBorder = System.Drawing.Color.Navy;
            this.tabControl1.ColorScheme.TabItemSelectedBackgroundColorBlend.AddRange(new DevComponents.DotNetBar.BackgroundColorBlend[] {
            new DevComponents.DotNetBar.BackgroundColorBlend(System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(227)))), ((int)(((byte)(217))))), 0F),
            new DevComponents.DotNetBar.BackgroundColorBlend(System.Drawing.Color.FromArgb(((int)(((byte)(253)))), ((int)(((byte)(189)))), ((int)(((byte)(116))))), 0.45F),
            new DevComponents.DotNetBar.BackgroundColorBlend(System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(180)))), ((int)(((byte)(89))))), 0.45F),
            new DevComponents.DotNetBar.BackgroundColorBlend(System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255))))), 1F)});
            this.tabControl1.Controls.Add(this.tabControlPanel2);
            this.tabControl1.Controls.Add(this.tabControlPanel1);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl1.Location = new System.Drawing.Point(0, 0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedTabFont = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold);
            this.tabControl1.SelectedTabIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(1020, 130);
            this.tabControl1.TabAlignment = DevComponents.DotNetBar.eTabStripAlignment.Left;
            this.tabControl1.TabIndex = 1;
            this.tabControl1.TabLayoutType = DevComponents.DotNetBar.eTabLayoutType.MultilineNoNavigationBox;
            this.tabControl1.Tabs.Add(this.tabItem1);
            this.tabControl1.Tabs.Add(this.tabItem2);
            // 
            // tabControlPanel1
            // 
            this.tabControlPanel1.CanvasColor = System.Drawing.Color.Transparent;
            this.tabControlPanel1.ColorSchemeStyle = DevComponents.DotNetBar.eDotNetBarStyle.VS2005;
            this.tabControlPanel1.Controls.Add(this.lbNotice);
            this.tabControlPanel1.Controls.Add(this.btnRecordControl);
            this.tabControlPanel1.Controls.Add(this.btnFar);
            this.tabControlPanel1.Controls.Add(this.btnNear);
            this.tabControlPanel1.Controls.Add(this.lbRecordTime);
            this.tabControlPanel1.Controls.Add(this.btnSnapshot);
            this.tabControlPanel1.Controls.Add(this.btnOpendir);
            this.tabControlPanel1.DisabledBackColor = System.Drawing.Color.Empty;
            this.tabControlPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControlPanel1.Location = new System.Drawing.Point(26, 0);
            this.tabControlPanel1.Name = "tabControlPanel1";
            this.tabControlPanel1.Padding = new System.Windows.Forms.Padding(1);
            this.tabControlPanel1.Size = new System.Drawing.Size(994, 130);
            this.tabControlPanel1.Style.BackColor1.Color = System.Drawing.Color.FromArgb(((int)(((byte)(142)))), ((int)(((byte)(179)))), ((int)(((byte)(231)))));
            this.tabControlPanel1.Style.BackColor2.Color = System.Drawing.Color.FromArgb(((int)(((byte)(223)))), ((int)(((byte)(237)))), ((int)(((byte)(254)))));
            this.tabControlPanel1.Style.Border = DevComponents.DotNetBar.eBorderType.SingleLine;
            this.tabControlPanel1.Style.BorderColor.Color = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(97)))), ((int)(((byte)(156)))));
            this.tabControlPanel1.Style.BorderSide = ((DevComponents.DotNetBar.eBorderSide)(((DevComponents.DotNetBar.eBorderSide.Right | DevComponents.DotNetBar.eBorderSide.Top) 
            | DevComponents.DotNetBar.eBorderSide.Bottom)));
            this.tabControlPanel1.TabIndex = 1;
            this.tabControlPanel1.TabItem = this.tabItem1;
            // 
            // tabItem1
            // 
            this.tabItem1.AttachedControl = this.tabControlPanel1;
            this.tabItem1.Name = "tabItem1";
            this.tabItem1.Text = "录像";
            // 
            // tabControlPanel2
            // 
            this.tabControlPanel2.Controls.Add(this.buttonX1);
            this.tabControlPanel2.Controls.Add(this.btnComment);
            this.tabControlPanel2.Controls.Add(this.btnSaveComment);
            this.tabControlPanel2.Controls.Add(this.btnColor);
            this.tabControlPanel2.Controls.Add(this.comboTree1);
            this.tabControlPanel2.Controls.Add(this.imglist1);
            this.tabControlPanel2.DisabledBackColor = System.Drawing.Color.Empty;
            this.tabControlPanel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControlPanel2.Location = new System.Drawing.Point(26, 0);
            this.tabControlPanel2.Name = "tabControlPanel2";
            this.tabControlPanel2.Padding = new System.Windows.Forms.Padding(1);
            this.tabControlPanel2.Size = new System.Drawing.Size(994, 130);
            this.tabControlPanel2.Style.BackColor1.Color = System.Drawing.Color.FromArgb(((int)(((byte)(142)))), ((int)(((byte)(179)))), ((int)(((byte)(231)))));
            this.tabControlPanel2.Style.BackColor2.Color = System.Drawing.Color.FromArgb(((int)(((byte)(223)))), ((int)(((byte)(237)))), ((int)(((byte)(254)))));
            this.tabControlPanel2.Style.Border = DevComponents.DotNetBar.eBorderType.SingleLine;
            this.tabControlPanel2.Style.BorderColor.Color = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(97)))), ((int)(((byte)(156)))));
            this.tabControlPanel2.Style.BorderSide = ((DevComponents.DotNetBar.eBorderSide)(((DevComponents.DotNetBar.eBorderSide.Right | DevComponents.DotNetBar.eBorderSide.Top) 
            | DevComponents.DotNetBar.eBorderSide.Bottom)));
            this.tabControlPanel2.TabIndex = 2;
            this.tabControlPanel2.TabItem = this.tabItem2;
            // 
            // buttonX1
            // 
            this.buttonX1.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.buttonX1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.buttonX1.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.buttonX1.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.buttonX1.Location = new System.Drawing.Point(860, 23);
            this.buttonX1.Name = "buttonX1";
            this.buttonX1.Size = new System.Drawing.Size(86, 86);
            this.buttonX1.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.buttonX1.TabIndex = 9;
            this.buttonX1.Text = "打开目录";
            this.buttonX1.Tooltip = "打开目录";
            this.buttonX1.Click += new System.EventHandler(this.buttonX1_Click);
            // 
            // imglist1
            // 
            this.imglist1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.imglist1.BackColor = System.Drawing.Color.Transparent;
            this.imglist1.Location = new System.Drawing.Point(222, 23);
            this.imglist1.Name = "imglist1";
            this.imglist1.Size = new System.Drawing.Size(632, 86);
            this.imglist1.TabIndex = 24;
            this.imglist1.Visible = false;
            this.imglist1.PictureBoxClick += new imgList.imglist.PictureBoxClickHandle(this.imglist1_PictureBoxClick);
            // 
            // tabItem2
            // 
            this.tabItem2.AttachedControl = this.tabControlPanel2;
            this.tabItem2.Name = "tabItem2";
            this.tabItem2.Text = "批注";
            // 
            // timer3
            // 
            this.timer3.Interval = 1000;
            this.timer3.Tick += new System.EventHandler(this.timer3_Tick);
            // 
            // frmMain
            // 
            this.ClientSize = new System.Drawing.Size(1020, 725);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.Text = "航天云实物展台软件网络版 版本：1.0.0";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmMain_FormClosing);
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.Resize += new System.EventHandler(this.RibbonForm1_Resize);
            this.panel1.ResumeLayout(false);
            this.panel4.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.tabControl1)).EndInit();
            this.tabControl1.ResumeLayout(false);
            this.tabControlPanel1.ResumeLayout(false);
            this.tabControlPanel1.PerformLayout();
            this.tabControlPanel2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.StyleManager styleManager1;
        private DevComponents.DotNetBar.ButtonX btnNear;
        private DevComponents.DotNetBar.ButtonX btnFar;
        private DevComponents.DotNetBar.ButtonX btnSnapshot;
        private DevComponents.DotNetBar.ButtonX btnRecordControl;
        private DevComponents.DotNetBar.ButtonX btnOpendir;
        private System.Windows.Forms.Label lbRecordTime;
        private System.Windows.Forms.Timer timer1;
        private DevComponents.DotNetBar.GalleryContainer galleryContainer2;
        private DevComponents.DotNetBar.LabelItem labelItem1;
        private DevComponents.DotNetBar.ButtonX btnComment;
        private DevComponents.DotNetBar.ButtonX btnSaveComment;
        private System.Windows.Forms.Panel plCamera;
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
        private System.Windows.Forms.Panel panel2;
        private DevComponents.DotNetBar.TabControl tabControl1;
        private DevComponents.DotNetBar.TabControlPanel tabControlPanel2;
        private DevComponents.DotNetBar.TabItem tabItem2;
        private DevComponents.DotNetBar.TabControlPanel tabControlPanel1;
        private DevComponents.DotNetBar.TabItem tabItem1;
        private DevComponents.DotNetBar.ButtonX buttonX1;
        private System.Windows.Forms.Panel panel4;


    }
}