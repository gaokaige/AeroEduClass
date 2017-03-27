namespace AeroEduClass.UI
{
    partial class SettingForm
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
            this.plBar = new System.Windows.Forms.Panel();
            this.btnClose = new DMSkin.Controls.DMButtonClose();
            this.panel1 = new System.Windows.Forms.Panel();
            this.plAbout = new System.Windows.Forms.Panel();
            this.lbVer = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.btnSave = new System.Windows.Forms.Button();
            this.plPath = new System.Windows.Forms.Panel();
            this.tbxErrColPath = new System.Windows.Forms.TextBox();
            this.tbxCommentPath = new System.Windows.Forms.TextBox();
            this.tbxPicPath = new System.Windows.Forms.TextBox();
            this.tbxVideoPath = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.plUI = new System.Windows.Forms.Panel();
            this.combSelectUI = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.comboItem1 = new DevComponents.Editors.ComboItem();
            this.comboItem2 = new DevComponents.Editors.ComboItem();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.combCenterPoint = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.comboItem3 = new DevComponents.Editors.ComboItem();
            this.comboItem4 = new DevComponents.Editors.ComboItem();
            this.panel2 = new System.Windows.Forms.Panel();
            this.btnAbout = new System.Windows.Forms.Button();
            this.btnPath = new System.Windows.Forms.Button();
            this.btnUI = new System.Windows.Forms.Button();
            this.plBar.SuspendLayout();
            this.panel1.SuspendLayout();
            this.plAbout.SuspendLayout();
            this.plPath.SuspendLayout();
            this.plUI.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // plBar
            // 
            this.plBar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(39)))), ((int)(((byte)(38)))), ((int)(((byte)(39)))));
            this.plBar.Controls.Add(this.btnClose);
            this.plBar.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.plBar.Location = new System.Drawing.Point(0, 470);
            this.plBar.Name = "plBar";
            this.plBar.Size = new System.Drawing.Size(800, 30);
            this.plBar.TabIndex = 0;
            // 
            // btnClose
            // 
            this.btnClose.BackColor = System.Drawing.Color.Transparent;
            this.btnClose.Location = new System.Drawing.Point(770, 1);
            this.btnClose.MaximumSize = new System.Drawing.Size(30, 27);
            this.btnClose.MinimumSize = new System.Drawing.Size(30, 27);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(30, 27);
            this.btnClose.TabIndex = 1;
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(37)))), ((int)(((byte)(40)))), ((int)(((byte)(47)))));
            this.panel1.Controls.Add(this.plAbout);
            this.panel1.Controls.Add(this.btnSave);
            this.panel1.Controls.Add(this.plPath);
            this.panel1.Controls.Add(this.plUI);
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(800, 470);
            this.panel1.TabIndex = 1;
            // 
            // plAbout
            // 
            this.plAbout.Controls.Add(this.lbVer);
            this.plAbout.Controls.Add(this.label10);
            this.plAbout.Controls.Add(this.label8);
            this.plAbout.Controls.Add(this.label7);
            this.plAbout.Dock = System.Windows.Forms.DockStyle.Top;
            this.plAbout.Location = new System.Drawing.Point(140, 383);
            this.plAbout.Name = "plAbout";
            this.plAbout.Size = new System.Drawing.Size(660, 166);
            this.plAbout.TabIndex = 9;
            this.plAbout.Visible = false;
            // 
            // lbVer
            // 
            this.lbVer.AutoSize = true;
            this.lbVer.Font = new System.Drawing.Font("黑体", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.lbVer.ForeColor = System.Drawing.Color.White;
            this.lbVer.Location = new System.Drawing.Point(166, 111);
            this.lbVer.Name = "lbVer";
            this.lbVer.Size = new System.Drawing.Size(72, 16);
            this.lbVer.TabIndex = 9;
            this.lbVer.Text = "软件版本";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("黑体", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.label10.ForeColor = System.Drawing.Color.White;
            this.label10.Location = new System.Drawing.Point(88, 111);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(72, 16);
            this.label10.TabIndex = 8;
            this.label10.Text = "软件版本";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("黑体", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.label8.ForeColor = System.Drawing.Color.White;
            this.label8.Location = new System.Drawing.Point(166, 65);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(72, 16);
            this.label8.TabIndex = 6;
            this.label8.Text = "实物展台";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("黑体", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.label7.ForeColor = System.Drawing.Color.White;
            this.label7.Location = new System.Drawing.Point(88, 65);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(72, 16);
            this.label7.TabIndex = 5;
            this.label7.Text = "软件名称";
            // 
            // btnSave
            // 
            this.btnSave.BackgroundImage = global::AeroEduClass.Properties.Resources.保存;
            this.btnSave.FlatAppearance.BorderSize = 0;
            this.btnSave.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSave.Location = new System.Drawing.Point(638, 430);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(70, 26);
            this.btnSave.TabIndex = 8;
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // plPath
            // 
            this.plPath.Controls.Add(this.tbxErrColPath);
            this.plPath.Controls.Add(this.tbxCommentPath);
            this.plPath.Controls.Add(this.tbxPicPath);
            this.plPath.Controls.Add(this.tbxVideoPath);
            this.plPath.Controls.Add(this.label6);
            this.plPath.Controls.Add(this.label5);
            this.plPath.Controls.Add(this.label4);
            this.plPath.Controls.Add(this.label3);
            this.plPath.Dock = System.Windows.Forms.DockStyle.Top;
            this.plPath.Location = new System.Drawing.Point(140, 147);
            this.plPath.Name = "plPath";
            this.plPath.Size = new System.Drawing.Size(660, 236);
            this.plPath.TabIndex = 7;
            this.plPath.Visible = false;
            // 
            // tbxErrColPath
            // 
            this.tbxErrColPath.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.tbxErrColPath.Font = new System.Drawing.Font("黑体", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.tbxErrColPath.Location = new System.Drawing.Point(173, 198);
            this.tbxErrColPath.Name = "tbxErrColPath";
            this.tbxErrColPath.ReadOnly = true;
            this.tbxErrColPath.Size = new System.Drawing.Size(400, 26);
            this.tbxErrColPath.TabIndex = 11;
            this.tbxErrColPath.Click += new System.EventHandler(this.tbx_Click);
            // 
            // tbxCommentPath
            // 
            this.tbxCommentPath.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.tbxCommentPath.Font = new System.Drawing.Font("黑体", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.tbxCommentPath.Location = new System.Drawing.Point(173, 152);
            this.tbxCommentPath.Name = "tbxCommentPath";
            this.tbxCommentPath.ReadOnly = true;
            this.tbxCommentPath.Size = new System.Drawing.Size(400, 26);
            this.tbxCommentPath.TabIndex = 10;
            this.tbxCommentPath.Click += new System.EventHandler(this.tbx_Click);
            // 
            // tbxPicPath
            // 
            this.tbxPicPath.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.tbxPicPath.Font = new System.Drawing.Font("黑体", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.tbxPicPath.Location = new System.Drawing.Point(173, 106);
            this.tbxPicPath.Name = "tbxPicPath";
            this.tbxPicPath.ReadOnly = true;
            this.tbxPicPath.Size = new System.Drawing.Size(400, 26);
            this.tbxPicPath.TabIndex = 9;
            this.tbxPicPath.Click += new System.EventHandler(this.tbx_Click);
            // 
            // tbxVideoPath
            // 
            this.tbxVideoPath.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.tbxVideoPath.Font = new System.Drawing.Font("黑体", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.tbxVideoPath.Location = new System.Drawing.Point(173, 60);
            this.tbxVideoPath.Name = "tbxVideoPath";
            this.tbxVideoPath.ReadOnly = true;
            this.tbxVideoPath.Size = new System.Drawing.Size(400, 26);
            this.tbxVideoPath.TabIndex = 8;
            this.tbxVideoPath.Click += new System.EventHandler(this.tbx_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("黑体", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.label6.ForeColor = System.Drawing.Color.White;
            this.label6.Location = new System.Drawing.Point(88, 203);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(72, 16);
            this.label6.TabIndex = 7;
            this.label6.Text = "错题目录";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("黑体", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.label5.ForeColor = System.Drawing.Color.White;
            this.label5.Location = new System.Drawing.Point(88, 157);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(72, 16);
            this.label5.TabIndex = 6;
            this.label5.Text = "批注目录";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("黑体", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.label4.ForeColor = System.Drawing.Color.White;
            this.label4.Location = new System.Drawing.Point(88, 111);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(72, 16);
            this.label4.TabIndex = 5;
            this.label4.Text = "拍照目录";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("黑体", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.label3.ForeColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(88, 65);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(72, 16);
            this.label3.TabIndex = 4;
            this.label3.Text = "视频目录";
            // 
            // plUI
            // 
            this.plUI.Controls.Add(this.combSelectUI);
            this.plUI.Controls.Add(this.label2);
            this.plUI.Controls.Add(this.label1);
            this.plUI.Controls.Add(this.combCenterPoint);
            this.plUI.Dock = System.Windows.Forms.DockStyle.Top;
            this.plUI.Location = new System.Drawing.Point(140, 0);
            this.plUI.Name = "plUI";
            this.plUI.Size = new System.Drawing.Size(660, 147);
            this.plUI.TabIndex = 6;
            // 
            // combSelectUI
            // 
            this.combSelectUI.DisabledBackColor = System.Drawing.Color.Black;
            this.combSelectUI.DisabledForeColor = System.Drawing.Color.Black;
            this.combSelectUI.DisplayMember = "Text";
            this.combSelectUI.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.combSelectUI.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.combSelectUI.FocusHighlightColor = System.Drawing.Color.Black;
            this.combSelectUI.Font = new System.Drawing.Font("黑体", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.combSelectUI.ForeColor = System.Drawing.Color.Black;
            this.combSelectUI.FormattingEnabled = true;
            this.combSelectUI.ItemHeight = 20;
            this.combSelectUI.Items.AddRange(new object[] {
            this.comboItem1,
            this.comboItem2});
            this.combSelectUI.Location = new System.Drawing.Point(173, 60);
            this.combSelectUI.Name = "combSelectUI";
            this.combSelectUI.Size = new System.Drawing.Size(400, 26);
            this.combSelectUI.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.combSelectUI.TabIndex = 2;
            // 
            // comboItem1
            // 
            this.comboItem1.Text = "宽屏";
            // 
            // comboItem2
            // 
            this.comboItem2.Text = "全屏";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("黑体", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(72, 111);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(88, 16);
            this.label2.TabIndex = 5;
            this.label2.Text = "参考中心点";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("黑体", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(88, 65);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(72, 16);
            this.label1.TabIndex = 3;
            this.label1.Text = "默认界面";
            // 
            // combCenterPoint
            // 
            this.combCenterPoint.DisabledBackColor = System.Drawing.Color.Black;
            this.combCenterPoint.DisabledForeColor = System.Drawing.Color.Black;
            this.combCenterPoint.DisplayMember = "Text";
            this.combCenterPoint.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.combCenterPoint.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.combCenterPoint.FocusHighlightColor = System.Drawing.Color.Gainsboro;
            this.combCenterPoint.Font = new System.Drawing.Font("黑体", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.combCenterPoint.ForeColor = System.Drawing.Color.Black;
            this.combCenterPoint.FormattingEnabled = true;
            this.combCenterPoint.ItemHeight = 20;
            this.combCenterPoint.Items.AddRange(new object[] {
            this.comboItem3,
            this.comboItem4});
            this.combCenterPoint.Location = new System.Drawing.Point(173, 106);
            this.combCenterPoint.Name = "combCenterPoint";
            this.combCenterPoint.Size = new System.Drawing.Size(400, 26);
            this.combCenterPoint.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.combCenterPoint.TabIndex = 4;
            // 
            // comboItem3
            // 
            this.comboItem3.Text = "开启";
            // 
            // comboItem4
            // 
            this.comboItem4.Text = "关闭";
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(57)))), ((int)(((byte)(60)))), ((int)(((byte)(69)))));
            this.panel2.Controls.Add(this.btnAbout);
            this.panel2.Controls.Add(this.btnPath);
            this.panel2.Controls.Add(this.btnUI);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(140, 470);
            this.panel2.TabIndex = 0;
            // 
            // btnAbout
            // 
            this.btnAbout.BackgroundImage = global::AeroEduClass.Properties.Resources.关于软件;
            this.btnAbout.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnAbout.FlatAppearance.BorderSize = 0;
            this.btnAbout.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Transparent;
            this.btnAbout.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Transparent;
            this.btnAbout.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnAbout.Location = new System.Drawing.Point(0, 72);
            this.btnAbout.Name = "btnAbout";
            this.btnAbout.Size = new System.Drawing.Size(140, 36);
            this.btnAbout.TabIndex = 2;
            this.btnAbout.UseVisualStyleBackColor = true;
            this.btnAbout.Click += new System.EventHandler(this.btn_Click);
            // 
            // btnPath
            // 
            this.btnPath.BackgroundImage = global::AeroEduClass.Properties.Resources.存储设置;
            this.btnPath.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnPath.FlatAppearance.BorderSize = 0;
            this.btnPath.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Transparent;
            this.btnPath.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Transparent;
            this.btnPath.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnPath.Location = new System.Drawing.Point(0, 36);
            this.btnPath.Name = "btnPath";
            this.btnPath.Size = new System.Drawing.Size(140, 36);
            this.btnPath.TabIndex = 1;
            this.btnPath.UseMnemonic = false;
            this.btnPath.UseVisualStyleBackColor = false;
            this.btnPath.Click += new System.EventHandler(this.btn_Click);
            // 
            // btnUI
            // 
            this.btnUI.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(37)))), ((int)(((byte)(40)))), ((int)(((byte)(47)))));
            this.btnUI.BackgroundImage = global::AeroEduClass.Properties.Resources.界面设置;
            this.btnUI.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnUI.FlatAppearance.BorderSize = 0;
            this.btnUI.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Transparent;
            this.btnUI.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Transparent;
            this.btnUI.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnUI.Location = new System.Drawing.Point(0, 0);
            this.btnUI.Name = "btnUI";
            this.btnUI.Size = new System.Drawing.Size(140, 36);
            this.btnUI.TabIndex = 0;
            this.btnUI.UseVisualStyleBackColor = false;
            this.btnUI.Click += new System.EventHandler(this.btn_Click);
            // 
            // SettingForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 500);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.plBar);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SettingForm";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "SettingForm";
            this.plBar.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.plAbout.ResumeLayout(false);
            this.plAbout.PerformLayout();
            this.plPath.ResumeLayout(false);
            this.plPath.PerformLayout();
            this.plUI.ResumeLayout(false);
            this.plUI.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel plBar;
        private DMSkin.Controls.DMButtonClose btnClose;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private DevComponents.DotNetBar.Controls.ComboBoxEx combSelectUI;
        private System.Windows.Forms.Label label1;
        private DevComponents.Editors.ComboItem comboItem1;
        private DevComponents.Editors.ComboItem comboItem2;
        private System.Windows.Forms.Button btnUI;
        private System.Windows.Forms.Label label2;
        private DevComponents.DotNetBar.Controls.ComboBoxEx combCenterPoint;
        private DevComponents.Editors.ComboItem comboItem3;
        private DevComponents.Editors.ComboItem comboItem4;
        private System.Windows.Forms.Button btnPath;
        private System.Windows.Forms.Panel plPath;
        private System.Windows.Forms.Panel plUI;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnAbout;
        private System.Windows.Forms.TextBox tbxVideoPath;
        private System.Windows.Forms.TextBox tbxErrColPath;
        private System.Windows.Forms.TextBox tbxCommentPath;
        private System.Windows.Forms.TextBox tbxPicPath;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Panel plAbout;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label lbVer;
    }
}