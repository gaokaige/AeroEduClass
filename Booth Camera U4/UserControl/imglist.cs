using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace imgList
{
    public partial class imglist : UserControl
    {
        public int Count
        {
            get { return imgDic.Count; }
        }
        Dictionary<int, string> imgDic = new Dictionary<int, string>();
        public imglist()
        {
            InitializeComponent();
            ButtonDisable();
        }

        void ButtonDisable()
        {
            btnRight.Enabled = false;
            btnLeft.Enabled = false;
            btnRightToEnd.Enabled = false;
            btnLeftToEnd.Enabled = false;
        }

        private int index = 0;
        private int showIndex = 0;//左边隐藏的图片数

        public void AddPic(string path)
        {
            imgDic.Add(index, path);
            index++;
            if (index > 3)
            {
                showIndex++;
            }
            ShowImg();
        }

        private void btnLeft_Click(object sender, EventArgs e)
        {
            if (showIndex > 0)
            {
                showIndex = showIndex - 1;
                ShowImg();
            }
        }

        private void btnRight_Click(object sender, EventArgs e)
        {
            if (imgDic.Count - 1 > showIndex + 2)
            {
                showIndex = showIndex + 1;
                ShowImg();
            }
        }

        private void btnLeftToEnd_Click(object sender, EventArgs e)
        {
            showIndex = 0;
            ShowImg();
        }

        private void btnRightToEnd_Click(object sender, EventArgs e)
        {
            showIndex = imgDic.Count - 3;
            ShowImg();
        }

        public void ShowImg()
        {
            pictureBox1.Image = Image.FromFile(imgDic[showIndex]);
            if (imgDic.Count > showIndex + 1)
                pictureBox2.Image = Image.FromFile(imgDic[showIndex + 1]);
            if (imgDic.Count > showIndex + 2)
                pictureBox3.Image = Image.FromFile(imgDic[showIndex + 2]);

            if (showIndex == 0)
            {
                btnLeft.Enabled = false;
                btnLeftToEnd.Enabled = false;
            }
            else
            {
                btnLeft.Enabled = true;
                btnLeftToEnd.Enabled = true;
            }

            if (showIndex + 3 >= imgDic.Count)
            {
                btnRight.Enabled = false;
                btnRightToEnd.Enabled = false;
            }
            else
            {
                btnRight.Enabled = true;
                btnRightToEnd.Enabled = true;
            }
        }

        public delegate void PictureBoxClickHandle(int i);
        public event PictureBoxClickHandle PictureBoxClick;

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            if (PictureBoxClick != null && imgDic.Count >= 1)
                PictureBoxClick(showIndex);
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            if (PictureBoxClick != null && imgDic.Count >= 2)
                PictureBoxClick(showIndex + 1);
        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {
            if (PictureBoxClick != null && imgDic.Count >= 3)
                PictureBoxClick(showIndex + 2);
        }

        public string GetImage(int i)
        {
            return imgDic[i];
        }

        public void Clear()
        {
            pictureBox1.Image = null;
            pictureBox2.Image = null;
            pictureBox3.Image = null;
            imgDic.Clear();
            ButtonDisable();
            index = 0;
            showIndex = 0;
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show("是否要清空批注历史？", "提示", MessageBoxButtons.YesNo);
            if (dr == DialogResult.Yes)
            {
                Clear();
            }
        }
    }
}
