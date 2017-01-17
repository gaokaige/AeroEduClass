using AeroEduClass.Properties;
using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace AeroEduClass.UI
{
    public partial class frmDLFloat : Form
    {
        bool appActive = false;
        frmDLMain frmdlmain;
        public frmDLFloat(frmDLMain _frmDLMain)
        {
            InitializeComponent();
            frmdlmain = _frmDLMain;
            this.MouseUp += frmDLFloat_MouseUp;
        }
        
        private void frmDLFloat_Load(object sender, EventArgs e)
        {
            IrregularForm();
            this.Location = new Point(930, 30);
        }

        public void MinSize()
        {
            appActive = false;
            pictureBox1.Image = Resources.dlfloat;
            IrregularForm();
            this.Hide();
        }

        public void NormalSize()
        {
            pictureBox1.Image = Resources.dlfloat;
            IrregularForm();
            this.Show();
        }

        private void OpenAndClose()
        {
            if (!appActive)
            {
                frmdlmain.Show();
                pictureBox1.Image = Resources.dlfloat_o;
                IrregularForm();
            }
            else
            {
                frmdlmain.Hide();
                pictureBox1.Image = Resources.dlfloat;
                IrregularForm();
            }
            appActive = !appActive;
        }
        private void frmDLFloat_MouseUp(object sender, MouseEventArgs e)
        {
            OpenAndClose();
        }
        #region 显示不规则窗体
        /// <summary>
        /// 显示不规则窗体
        /// </summary>
        private void IrregularForm()
        {
            //从指定的位图中获取透明度大于 10 的区域；
            Bitmap img = (Bitmap)pictureBox1.Image;
            GraphicsPath grapth = GetNoneTransparentRegion(img, 10);
            this.Region = new Region(grapth);

            //要显示的图片设置为窗体背景；
            this.BackgroundImage = pictureBox1.Image;
            this.BackgroundImageLayout = ImageLayout.Zoom;

            //在修改窗体尺寸之前设置窗体为无边框样式；
            this.FormBorderStyle = FormBorderStyle.None;
            this.Width = pictureBox1.Image.Width;
            this.Height = pictureBox1.Image.Height;
        }

        /// <summary>
        /// 返回指定图片中的非透明区域；
        /// </summary>
        /// <param name="img">位图</param>
        /// <param name="alpha">alpha 小于等于该值的为透明</param>
        /// <returns></returns>
        public static GraphicsPath GetNoneTransparentRegion(Bitmap img, byte alpha)
        {
            int height = img.Height;
            int width = img.Width;

            int xStart, xEnd;
            GraphicsPath grpPath = new GraphicsPath();
            for (int y = 0; y < height; y++)
            {
                //逐行扫描；
                for (int x = 0; x < width; x++)
                {
                    //略过连续透明的部分；
                    while (x < width && img.GetPixel(x, y).A <= alpha)
                    {
                        x++;
                    }
                    //不透明部分；
                    xStart = x;
                    while (x < width && img.GetPixel(x, y).A > alpha)
                    {
                        x++;
                    }
                    xEnd = x;
                    if (img.GetPixel(x - 1, y).A > alpha)
                    {
                        grpPath.AddRectangle(new Rectangle(xStart, y, xEnd - xStart, 1));
                    }
                }
            }
            return grpPath;
        }

        #endregion
    }
}
