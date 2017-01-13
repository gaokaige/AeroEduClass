using System;
using System.Configuration;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using 航天云态度表达.Lib;
using 航天云态度表达.Properties;

namespace 航天云态度表达.Gui
{
    public partial class FrmFloat : Form
    {
        bool appActive = false;
        bool isMoved = false;
        FrmMenu menu;

        public FrmFloat()
        {
            InitializeComponent();
            menu = new FrmMenu(this);
            // 拖动事件
            this.MouseDown += new MouseEventHandler(this.frmFloat_MouseDown);
            this.MouseMove += new MouseEventHandler(this.frmFloat_MouseMove);
            this.MouseHover += FrmFloat_MouseHover;
            this.MouseLeave += FrmFloat_MouseLeave;
            this.MouseUp += FrmFloat_MouseUp;
        }
        private void frmFloat_Load(object sender, EventArgs e)
        {
            IrregularForm();
            this.TopMost = true;// 窗体总在最前
            // 位置
            this.Location = new Point(Convert.ToInt32(Program.Frmfloat_X), Convert.ToInt32(Program.Frmfloat_Y));
            //this.Location = new Point(932, 420);
        }
        private void OpenAndClose()
        {
            if (!appActive)
            {
                pictureBox1.Image = Resources.灯泡_亮;
                menu.Show();
                //menu.Location = new Point(882, 90);
                menu.Location = new Point(this.Location.X - 29, this.Location.Y + 70);
            }
            else
            {
                pictureBox1.Image = Resources.灯泡_灭;
                menu.Hide();
            }
            IrregularForm();
            appActive = !appActive;
        }

        private void FrmFloat_MouseUp(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                if (isMoved)
                {
                    isMoved = false;
                    return;
                }
                if (!menu.IsStudentEvaluate && !menu.IsTeacherEvaluate)
                    OpenAndClose();
            }
            if (e.Button == MouseButtons.Right)
            {
                if (menu.IsStudentEvaluate || menu.IsTeacherEvaluate)
                    cms展开收起菜单.Enabled = false;
                else
                    cms展开收起菜单.Enabled = true;
            }
        }

        void FrmFloat_MouseLeave(object sender, EventArgs e)
        {
            this.Cursor = System.Windows.Forms.Cursors.Default;
        }

        void FrmFloat_MouseHover(object sender, EventArgs e)
        {
            this.Cursor = System.Windows.Forms.Cursors.NoMove2D;
        }

        
        #region 拖拽移动
        // 方法1
        private Point mPoint = new Point();
        private void frmFloat_MouseDown(object sender, MouseEventArgs e)
        {
            mPoint.X = e.X;
            mPoint.Y = e.Y;
        }

        private void frmFloat_MouseMove(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                Point myPosittion = MousePosition;
                myPosittion.Offset(-mPoint.X, -mPoint.Y);
                if (Location != myPosittion)// 不相等表示移动了
                    isMoved = true;
                Location = myPosittion;
                menu.Location = new Point(myPosittion.X - 29, myPosittion.Y + 70);
            }
        }
        // 方法2 但是不能响应鼠标点击事件；
        //public const int WM_NCLBUTTONDOWN = 0xA1;
        //public const int HT_CAPTION = 0x2;

        //[DllImportAttribute("user32.dll")]
        //public static extern int SendMessage(IntPtr hWnd, int Msg, int wParam, int lParam);
        //[DllImportAttribute("user32.dll")]
        //public static extern bool ReleaseCapture();
        //private void frmFloat_MouseDown(object sender, MouseEventArgs e)
        //{
        //    if (e.Button == MouseButtons.Left)
        //    {
        //        ReleaseCapture();
        //        SendMessage(Handle, WM_NCLBUTTONDOWN, HT_CAPTION, 0);
        //    }
        //}
        #endregion

        #region 显示不规则窗体
        /// <summary>
        /// 显示不规则窗体
        /// </summary>
        private void IrregularForm()
        {
            //从指定的位图中获取透明度大于 10 的区域；
            Bitmap img = (Bitmap)pictureBox1.Image;
            GraphicsPath grapth = BitmapUtil.GetNoneTransparentRegion(img, 10);
            this.Region = new Region(grapth);

            //要显示的图片设置为窗体背景；
            this.BackgroundImage = pictureBox1.Image;
            this.BackgroundImageLayout = ImageLayout.Zoom;

            //在修改窗体尺寸之前设置窗体为无边框样式；
            this.FormBorderStyle = FormBorderStyle.None;
            this.Width = pictureBox1.Image.Width;
            this.Height = pictureBox1.Image.Height;
        }

        #endregion
        private void 退出ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void 展开菜单ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenAndClose();
        }

        public void TeacherStart()
        {
            pictureBox1.Image = Resources.灯泡_亮_师;
            IrregularForm();
        }

        public void TeacherEnd()
        {
            pictureBox1.Image = Resources.灯泡_亮;
            IrregularForm();
        }

        public void StudentStart()
        {
            pictureBox1.Image = Resources.灯泡_亮_生;
            IrregularForm();
        }

        public void StudentEnd()
        {
            pictureBox1.Image = Resources.灯泡_亮;
            IrregularForm();
        }

        private void cms保存窗口位置_Click(object sender, EventArgs e)
        {
            ConfigurationLib.UpdateSetting("frmfloat_x", this.Location.X.ToString());
            ConfigurationLib.UpdateSetting("frmfloat_y", this.Location.Y.ToString());
        }
    }
}
