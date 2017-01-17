namespace AeroEduClass.UI
{
    partial class frmDLMain
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmDLMain));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle10 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle9 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle11 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle12 = new System.Windows.Forms.DataGridViewCellStyle();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.dgvDLing = new System.Windows.Forms.DataGridView();
            this.clID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clImage = new System.Windows.Forms.DataGridViewImageColumn();
            this.clName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clPath = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clprogress = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clSpeed = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cltime = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clDel = new System.Windows.Forms.DataGridViewImageColumn();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.dgvComplete = new System.Windows.Forms.DataGridView();
            this.clID_c = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clImage_c = new System.Windows.Forms.DataGridViewImageColumn();
            this.clName_c = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clPath_c = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cltime_c = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clOpen = new System.Windows.Forms.DataGridViewImageColumn();
            this.clDel_c = new System.Windows.Forms.DataGridViewImageColumn();
            this.dataGridViewImageColumn1 = new System.Windows.Forms.DataGridViewImageColumn();
            this.dataGridViewImageColumn2 = new System.Windows.Forms.DataGridViewImageColumn();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDLing)).BeginInit();
            this.tabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvComplete)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl1.Location = new System.Drawing.Point(0, 0);
            this.tabControl1.Margin = new System.Windows.Forms.Padding(0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.Padding = new System.Drawing.Point(0, 0);
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(300, 290);
            this.tabControl1.SizeMode = System.Windows.Forms.TabSizeMode.Fixed;
            this.tabControl1.TabIndex = 0;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.dgvDLing);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Margin = new System.Windows.Forms.Padding(0);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Size = new System.Drawing.Size(292, 264);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "   正在下载   ";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // dgvDLing
            // 
            this.dgvDLing.AllowUserToAddRows = false;
            this.dgvDLing.AllowUserToDeleteRows = false;
            this.dgvDLing.AllowUserToResizeRows = false;
            this.dgvDLing.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.dgvDLing.BackgroundColor = System.Drawing.Color.White;
            this.dgvDLing.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvDLing.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.dgvDLing.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
            this.dgvDLing.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.clID,
            this.clImage,
            this.clName,
            this.clPath,
            this.clprogress,
            this.clSpeed,
            this.cltime,
            this.clDel});
            this.dgvDLing.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvDLing.Location = new System.Drawing.Point(0, 0);
            this.dgvDLing.Margin = new System.Windows.Forms.Padding(0);
            this.dgvDLing.Name = "dgvDLing";
            this.dgvDLing.RowHeadersVisible = false;
            dataGridViewCellStyle8.Padding = new System.Windows.Forms.Padding(5);
            this.dgvDLing.RowsDefaultCellStyle = dataGridViewCellStyle8;
            this.dgvDLing.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvDLing.Size = new System.Drawing.Size(292, 264);
            this.dgvDLing.TabIndex = 1;
            this.dgvDLing.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvDLing_CellClick);
            this.dgvDLing.RowsAdded += new System.Windows.Forms.DataGridViewRowsAddedEventHandler(this.dgvDLing_RowsAdded);
            this.dgvDLing.RowsRemoved += new System.Windows.Forms.DataGridViewRowsRemovedEventHandler(this.dgvDLing_RowsRemoved);
            // 
            // clID
            // 
            this.clID.HeaderText = "ID";
            this.clID.Name = "clID";
            this.clID.ReadOnly = true;
            this.clID.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.clID.Visible = false;
            this.clID.Width = 80;
            // 
            // clImage
            // 
            this.clImage.HeaderText = "";
            this.clImage.Name = "clImage";
            this.clImage.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.clImage.Width = 28;
            // 
            // clName
            // 
            this.clName.HeaderText = "名称";
            this.clName.Name = "clName";
            this.clName.ReadOnly = true;
            this.clName.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.clName.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // clPath
            // 
            this.clPath.HeaderText = "路径";
            this.clPath.Name = "clPath";
            this.clPath.ReadOnly = true;
            this.clPath.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.clPath.Visible = false;
            // 
            // clprogress
            // 
            this.clprogress.HeaderText = "进度";
            this.clprogress.Name = "clprogress";
            this.clprogress.ReadOnly = true;
            this.clprogress.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.clprogress.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.clprogress.Width = 40;
            // 
            // clSpeed
            // 
            this.clSpeed.HeaderText = "速度";
            this.clSpeed.Name = "clSpeed";
            this.clSpeed.ReadOnly = true;
            this.clSpeed.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.clSpeed.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.clSpeed.Width = 80;
            // 
            // cltime
            // 
            this.cltime.HeaderText = "";
            this.cltime.Name = "cltime";
            this.cltime.ReadOnly = true;
            this.cltime.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Programmatic;
            this.cltime.Visible = false;
            // 
            // clDel
            // 
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle7.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F);
            dataGridViewCellStyle7.NullValue = ((object)(resources.GetObject("dataGridViewCellStyle7.NullValue")));
            this.clDel.DefaultCellStyle = dataGridViewCellStyle7;
            this.clDel.HeaderText = "";
            this.clDel.Image = global::AeroEduClass.Properties.Resources.del;
            this.clDel.Name = "clDel";
            this.clDel.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.clDel.Width = 40;
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.dgvComplete);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Margin = new System.Windows.Forms.Padding(0);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Size = new System.Drawing.Size(292, 264);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "   下载已完成   ";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // dgvComplete
            // 
            this.dgvComplete.AllowUserToAddRows = false;
            this.dgvComplete.AllowUserToDeleteRows = false;
            this.dgvComplete.AllowUserToResizeRows = false;
            this.dgvComplete.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.dgvComplete.BackgroundColor = System.Drawing.Color.White;
            this.dgvComplete.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvComplete.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.dgvComplete.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
            this.dgvComplete.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.clID_c,
            this.clImage_c,
            this.clName_c,
            this.clPath_c,
            this.cltime_c,
            this.clOpen,
            this.clDel_c});
            this.dgvComplete.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvComplete.Location = new System.Drawing.Point(0, 0);
            this.dgvComplete.Margin = new System.Windows.Forms.Padding(0);
            this.dgvComplete.MultiSelect = false;
            this.dgvComplete.Name = "dgvComplete";
            this.dgvComplete.RowHeadersVisible = false;
            dataGridViewCellStyle10.Padding = new System.Windows.Forms.Padding(5);
            this.dgvComplete.RowsDefaultCellStyle = dataGridViewCellStyle10;
            this.dgvComplete.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvComplete.Size = new System.Drawing.Size(292, 264);
            this.dgvComplete.TabIndex = 2;
            this.dgvComplete.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvComplete_CellClick);
            this.dgvComplete.RowsAdded += new System.Windows.Forms.DataGridViewRowsAddedEventHandler(this.dgvComplete_RowsAdded);
            this.dgvComplete.RowsRemoved += new System.Windows.Forms.DataGridViewRowsRemovedEventHandler(this.dgvComplete_RowsRemoved);
            // 
            // clID_c
            // 
            this.clID_c.HeaderText = "ID";
            this.clID_c.Name = "clID_c";
            this.clID_c.ReadOnly = true;
            this.clID_c.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.clID_c.Visible = false;
            this.clID_c.Width = 80;
            // 
            // clImage_c
            // 
            this.clImage_c.HeaderText = "";
            this.clImage_c.Name = "clImage_c";
            this.clImage_c.ReadOnly = true;
            this.clImage_c.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.clImage_c.Width = 28;
            // 
            // clName_c
            // 
            this.clName_c.HeaderText = "名称";
            this.clName_c.Name = "clName_c";
            this.clName_c.ReadOnly = true;
            this.clName_c.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.clName_c.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.clName_c.Width = 160;
            // 
            // clPath_c
            // 
            this.clPath_c.HeaderText = "路径";
            this.clPath_c.Name = "clPath_c";
            this.clPath_c.ReadOnly = true;
            this.clPath_c.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.clPath_c.Visible = false;
            // 
            // cltime_c
            // 
            this.cltime_c.HeaderText = "";
            this.cltime_c.Name = "cltime_c";
            this.cltime_c.ReadOnly = true;
            this.cltime_c.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Programmatic;
            this.cltime_c.Visible = false;
            // 
            // clOpen
            // 
            dataGridViewCellStyle9.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle9.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F);
            dataGridViewCellStyle9.NullValue = ((object)(resources.GetObject("dataGridViewCellStyle9.NullValue")));
            this.clOpen.DefaultCellStyle = dataGridViewCellStyle9;
            this.clOpen.HeaderText = "";
            this.clOpen.Image = global::AeroEduClass.Properties.Resources.file;
            this.clOpen.Name = "clOpen";
            this.clOpen.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.clOpen.Width = 40;
            // 
            // clDel_c
            // 
            this.clDel_c.HeaderText = "";
            this.clDel_c.Image = global::AeroEduClass.Properties.Resources.del;
            this.clDel_c.Name = "clDel_c";
            this.clDel_c.ReadOnly = true;
            this.clDel_c.Width = 40;
            // 
            // dataGridViewImageColumn1
            // 
            dataGridViewCellStyle11.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle11.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F);
            dataGridViewCellStyle11.NullValue = ((object)(resources.GetObject("dataGridViewCellStyle11.NullValue")));
            this.dataGridViewImageColumn1.DefaultCellStyle = dataGridViewCellStyle11;
            this.dataGridViewImageColumn1.HeaderText = "";
            this.dataGridViewImageColumn1.Image = global::AeroEduClass.Properties.Resources.file_n;
            this.dataGridViewImageColumn1.Name = "dataGridViewImageColumn1";
            this.dataGridViewImageColumn1.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridViewImageColumn1.Width = 40;
            // 
            // dataGridViewImageColumn2
            // 
            dataGridViewCellStyle12.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle12.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F);
            dataGridViewCellStyle12.NullValue = ((object)(resources.GetObject("dataGridViewCellStyle12.NullValue")));
            this.dataGridViewImageColumn2.DefaultCellStyle = dataGridViewCellStyle12;
            this.dataGridViewImageColumn2.HeaderText = "";
            this.dataGridViewImageColumn2.Image = global::AeroEduClass.Properties.Resources.file;
            this.dataGridViewImageColumn2.Name = "dataGridViewImageColumn2";
            this.dataGridViewImageColumn2.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridViewImageColumn2.Width = 40;
            // 
            // frmDLMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(300, 290);
            this.Controls.Add(this.tabControl1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmDLMain";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.Text = "frmDownload";
            this.TopMost = true;
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.frmDownload_FormClosed);
            this.Load += new System.EventHandler(this.frmDownload_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDLing)).EndInit();
            this.tabPage2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvComplete)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.DataGridView dgvDLing;
        private System.Windows.Forms.DataGridView dgvComplete;
        private System.Windows.Forms.DataGridViewImageColumn dataGridViewImageColumn1;
        private System.Windows.Forms.DataGridViewImageColumn dataGridViewImageColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn clID;
        private System.Windows.Forms.DataGridViewImageColumn clImage;
        private System.Windows.Forms.DataGridViewTextBoxColumn clName;
        private System.Windows.Forms.DataGridViewTextBoxColumn clPath;
        private System.Windows.Forms.DataGridViewTextBoxColumn clprogress;
        private System.Windows.Forms.DataGridViewTextBoxColumn clSpeed;
        private System.Windows.Forms.DataGridViewTextBoxColumn cltime;
        private System.Windows.Forms.DataGridViewImageColumn clDel;
        private System.Windows.Forms.DataGridViewTextBoxColumn clID_c;
        private System.Windows.Forms.DataGridViewImageColumn clImage_c;
        private System.Windows.Forms.DataGridViewTextBoxColumn clName_c;
        private System.Windows.Forms.DataGridViewTextBoxColumn clPath_c;
        private System.Windows.Forms.DataGridViewTextBoxColumn cltime_c;
        private System.Windows.Forms.DataGridViewImageColumn clOpen;
        private System.Windows.Forms.DataGridViewImageColumn clDel_c;

    }
}