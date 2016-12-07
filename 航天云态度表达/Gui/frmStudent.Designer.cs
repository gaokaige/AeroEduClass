namespace 航天云态度表达.Gui
{
    partial class FrmStudent
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
            this.btnClose = new DMSkin.Controls.DMButtonClose();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.lbStuNumber = new System.Windows.Forms.Label();
            this.lbStuName = new System.Windows.Forms.Label();
            this.lbRealTime = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.btnMin = new DMSkin.Controls.DMButtonMin();
            this.realTimeCharPie1 = new 航天云态度表达.UserControls.RealTimeCharPie();
            this.btnReset = new System.Windows.Forms.Button();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnStart = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnClose
            // 
            this.btnClose.BackColor = System.Drawing.Color.Transparent;
            this.btnClose.Location = new System.Drawing.Point(564, 372);
            this.btnClose.MaximumSize = new System.Drawing.Size(30, 27);
            this.btnClose.MinimumSize = new System.Drawing.Size(30, 27);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(30, 27);
            this.btnClose.TabIndex = 1;
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("黑体", 30F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.label1.Location = new System.Drawing.Point(249, 28);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(103, 30);
            this.label1.TabIndex = 3;
            this.label1.Text = "生评生";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("黑体", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.label2.Location = new System.Drawing.Point(95, 113);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(59, 20);
            this.label2.TabIndex = 4;
            this.label2.Text = "编号:";
            // 
            // lbStuNumber
            // 
            this.lbStuNumber.AutoSize = true;
            this.lbStuNumber.Font = new System.Drawing.Font("黑体", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.lbStuNumber.Location = new System.Drawing.Point(159, 113);
            this.lbStuNumber.Name = "lbStuNumber";
            this.lbStuNumber.Size = new System.Drawing.Size(49, 20);
            this.lbStuNumber.TabIndex = 5;
            this.lbStuNumber.Text = "学号";
            // 
            // lbStuName
            // 
            this.lbStuName.AutoSize = true;
            this.lbStuName.Font = new System.Drawing.Font("黑体", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.lbStuName.Location = new System.Drawing.Point(99, 168);
            this.lbStuName.Name = "lbStuName";
            this.lbStuName.Size = new System.Drawing.Size(89, 20);
            this.lbStuName.TabIndex = 6;
            this.lbStuName.Text = "学生姓名";
            this.lbStuName.TextChanged += new System.EventHandler(this.lbStuName_TextChanged);
            // 
            // lbRealTime
            // 
            this.lbRealTime.AutoSize = true;
            this.lbRealTime.Font = new System.Drawing.Font("黑体", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.lbRealTime.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(27)))), ((int)(((byte)(125)))), ((int)(((byte)(141)))));
            this.lbRealTime.Location = new System.Drawing.Point(118, 303);
            this.lbRealTime.Name = "lbRealTime";
            this.lbRealTime.Size = new System.Drawing.Size(89, 20);
            this.lbRealTime.TabIndex = 10;
            this.lbRealTime.Text = "00:00:00";
            // 
            // timer1
            // 
            this.timer1.Interval = 1000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // btnMin
            // 
            this.btnMin.BackColor = System.Drawing.Color.Transparent;
            this.btnMin.Location = new System.Drawing.Point(529, 372);
            this.btnMin.Name = "btnMin";
            this.btnMin.Size = new System.Drawing.Size(30, 27);
            this.btnMin.TabIndex = 14;
            this.btnMin.Click += new System.EventHandler(this.btnMin_Click);
            // 
            // realTimeCharPie1
            // 
            this.realTimeCharPie1.Location = new System.Drawing.Point(320, 96);
            this.realTimeCharPie1.Name = "realTimeCharPie1";
            this.realTimeCharPie1.Size = new System.Drawing.Size(245, 262);
            this.realTimeCharPie1.TabIndex = 13;
            // 
            // btnReset
            // 
            this.btnReset.BackgroundImage = global::航天云态度表达.Properties.Resources.删除;
            this.btnReset.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.btnReset.FlatAppearance.BorderSize = 0;
            this.btnReset.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Transparent;
            this.btnReset.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Transparent;
            this.btnReset.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnReset.Location = new System.Drawing.Point(194, 164);
            this.btnReset.Name = "btnReset";
            this.btnReset.Size = new System.Drawing.Size(24, 24);
            this.btnReset.TabIndex = 11;
            this.btnReset.UseVisualStyleBackColor = true;
            this.btnReset.Click += new System.EventHandler(this.btnReset_Click);
            // 
            // panel2
            // 
            this.panel2.BackgroundImage = global::航天云态度表达.Properties.Resources.时间图标;
            this.panel2.Location = new System.Drawing.Point(85, 296);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(30, 30);
            this.panel2.TabIndex = 9;
            // 
            // panel1
            // 
            this.panel1.BackgroundImage = global::航天云态度表达.Properties.Resources.分割线1;
            this.panel1.Location = new System.Drawing.Point(300, 96);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1, 250);
            this.panel1.TabIndex = 8;
            // 
            // btnStart
            // 
            this.btnStart.BackgroundImage = global::航天云态度表达.Properties.Resources.开始_不可选;
            this.btnStart.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnStart.CausesValidation = false;
            this.btnStart.Enabled = false;
            this.btnStart.FlatAppearance.BorderSize = 0;
            this.btnStart.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnStart.Location = new System.Drawing.Point(99, 223);
            this.btnStart.Name = "btnStart";
            this.btnStart.Size = new System.Drawing.Size(100, 38);
            this.btnStart.TabIndex = 7;
            this.btnStart.UseVisualStyleBackColor = true;
            this.btnStart.Click += new System.EventHandler(this.btnStart_Click);
            // 
            // FrmStudent
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.WhiteSmoke;
            this.ClientSize = new System.Drawing.Size(600, 400);
            this.Controls.Add(this.btnMin);
            this.Controls.Add(this.realTimeCharPie1);
            this.Controls.Add(this.btnReset);
            this.Controls.Add(this.lbRealTime);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.btnStart);
            this.Controls.Add(this.lbStuName);
            this.Controls.Add(this.lbStuNumber);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnClose);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FrmStudent";
            this.ShowIcon = false;
            this.Text = "生评生";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmStudent_FormClosing);
            this.Load += new System.EventHandler(this.FrmStudent_Load);
            this.MouseDown += new System.Windows.Forms.MouseEventHandler(this.FrmStudent_MouseDown);
            this.MouseMove += new System.Windows.Forms.MouseEventHandler(this.FrmStudent_MouseMove);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DMSkin.Controls.DMButtonClose btnClose;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lbStuNumber;
        private System.Windows.Forms.Label lbStuName;
        private System.Windows.Forms.Button btnStart;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label lbRealTime;
        private System.Windows.Forms.Button btnReset;
        private UserControls.RealTimeCharPie realTimeCharPie1;
        private System.Windows.Forms.Timer timer1;
        private DMSkin.Controls.DMButtonMin btnMin;
    }
}