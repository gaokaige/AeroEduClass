namespace AeroEduClass.Gui
{
    partial class frmSetting
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
            this.cbxTDBD = new System.Windows.Forms.CheckBox();
            this.cbxCCLive = new System.Windows.Forms.CheckBox();
            this.cbxYCGK = new System.Windows.Forms.CheckBox();
            this.cbxYCBK = new System.Windows.Forms.CheckBox();
            this.tbxCCLiveServer = new System.Windows.Forms.TextBox();
            this.btnSave = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnClose = new DMSkin.Controls.DMButtonClose();
            this.SuspendLayout();
            // 
            // cbxTDBD
            // 
            this.cbxTDBD.AutoSize = true;
            this.cbxTDBD.Location = new System.Drawing.Point(51, 189);
            this.cbxTDBD.Name = "cbxTDBD";
            this.cbxTDBD.Size = new System.Drawing.Size(96, 16);
            this.cbxTDBD.TabIndex = 0;
            this.cbxTDBD.Text = "态度表达软件";
            this.cbxTDBD.UseVisualStyleBackColor = true;
            // 
            // cbxCCLive
            // 
            this.cbxCCLive.AutoSize = true;
            this.cbxCCLive.Location = new System.Drawing.Point(51, 108);
            this.cbxCCLive.Name = "cbxCCLive";
            this.cbxCCLive.Size = new System.Drawing.Size(72, 16);
            this.cbxCCLive.TabIndex = 1;
            this.cbxCCLive.Text = "直播课程";
            this.cbxCCLive.UseVisualStyleBackColor = true;
            // 
            // cbxYCGK
            // 
            this.cbxYCGK.AutoSize = true;
            this.cbxYCGK.Location = new System.Drawing.Point(51, 135);
            this.cbxYCGK.Name = "cbxYCGK";
            this.cbxYCGK.Size = new System.Drawing.Size(72, 16);
            this.cbxYCGK.TabIndex = 2;
            this.cbxYCGK.Text = "远程观课";
            this.cbxYCGK.UseVisualStyleBackColor = true;
            // 
            // cbxYCBK
            // 
            this.cbxYCBK.AutoSize = true;
            this.cbxYCBK.Location = new System.Drawing.Point(51, 162);
            this.cbxYCBK.Name = "cbxYCBK";
            this.cbxYCBK.Size = new System.Drawing.Size(72, 16);
            this.cbxYCBK.TabIndex = 3;
            this.cbxYCBK.Text = "远程播课";
            this.cbxYCBK.UseVisualStyleBackColor = true;
            // 
            // tbxCCLiveServer
            // 
            this.tbxCCLiveServer.Location = new System.Drawing.Point(144, 106);
            this.tbxCCLiveServer.Name = "tbxCCLiveServer";
            this.tbxCCLiveServer.Size = new System.Drawing.Size(284, 21);
            this.tbxCCLiveServer.TabIndex = 4;
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(353, 188);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 23);
            this.btnSave.TabIndex = 5;
            this.btnSave.Text = "保存设置";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("宋体", 15F);
            this.label1.Location = new System.Drawing.Point(134, 27);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(209, 20);
            this.label1.TabIndex = 6;
            this.label1.Text = "航天云课联网应用设置";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(49, 85);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(161, 12);
            this.label2.TabIndex = 7;
            this.label2.Text = "请在需要启用的应用前打勾：";
            // 
            // btnClose
            // 
            this.btnClose.BackColor = System.Drawing.Color.Transparent;
            this.btnClose.Location = new System.Drawing.Point(444, 1);
            this.btnClose.MaximumSize = new System.Drawing.Size(30, 27);
            this.btnClose.MinimumSize = new System.Drawing.Size(30, 27);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(30, 27);
            this.btnClose.TabIndex = 8;
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // frmSetting
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(477, 239);
            this.Controls.Add(this.btnClose);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.tbxCCLiveServer);
            this.Controls.Add(this.cbxYCBK);
            this.Controls.Add(this.cbxYCGK);
            this.Controls.Add(this.cbxCCLive);
            this.Controls.Add(this.cbxTDBD);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmSetting";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmSetting";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox cbxTDBD;
        private System.Windows.Forms.CheckBox cbxCCLive;
        private System.Windows.Forms.CheckBox cbxYCGK;
        private System.Windows.Forms.CheckBox cbxYCBK;
        private System.Windows.Forms.TextBox tbxCCLiveServer;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private DMSkin.Controls.DMButtonClose btnClose;
    }
}