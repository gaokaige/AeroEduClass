namespace 航天云态度表达.Gui
{
    partial class FrmFloat
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmFloat));
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.cms展开收起菜单 = new System.Windows.Forms.ToolStripMenuItem();
            this.cms退出 = new System.Windows.Forms.ToolStripMenuItem();
            this.cms保存窗口位置 = new System.Windows.Forms.ToolStripMenuItem();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.contextMenuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::航天云态度表达.Properties.Resources.灯泡_灭;
            this.pictureBox1.Location = new System.Drawing.Point(81, 69);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(100, 95);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cms展开收起菜单,
            this.cms保存窗口位置,
            this.cms退出});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(154, 92);
            // 
            // cms展开收起菜单
            // 
            this.cms展开收起菜单.Name = "cms展开收起菜单";
            this.cms展开收起菜单.Size = new System.Drawing.Size(153, 22);
            this.cms展开收起菜单.Text = "展开/收起菜单";
            this.cms展开收起菜单.Click += new System.EventHandler(this.展开菜单ToolStripMenuItem_Click);
            // 
            // cms退出
            // 
            this.cms退出.Name = "cms退出";
            this.cms退出.Size = new System.Drawing.Size(153, 22);
            this.cms退出.Text = "退出";
            this.cms退出.Click += new System.EventHandler(this.退出ToolStripMenuItem_Click);
            // 
            // cms保存窗口位置
            // 
            this.cms保存窗口位置.Name = "cms保存窗口位置";
            this.cms保存窗口位置.Size = new System.Drawing.Size(153, 22);
            this.cms保存窗口位置.Text = "保存窗口位置";
            this.cms保存窗口位置.Click += new System.EventHandler(this.cms保存窗口位置_Click);
            // 
            // FrmFloat
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 262);
            this.ContextMenuStrip = this.contextMenuStrip1;
            this.Controls.Add(this.pictureBox1);
            this.Cursor = System.Windows.Forms.Cursors.Hand;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmFloat";
            this.Text = "航天云态度表达系统";
            this.TopMost = true;
            this.Load += new System.EventHandler(this.frmFloat_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.contextMenuStrip1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem cms展开收起菜单;
        private System.Windows.Forms.ToolStripMenuItem cms退出;
        private System.Windows.Forms.ToolStripMenuItem cms保存窗口位置;
    }
}