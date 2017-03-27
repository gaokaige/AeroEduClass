using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace Booth_Camera.UserControls
{
    public partial class CommentImageList : UserControl
    {
        public delegate void PictureBoxClickHandle(int i);
        public event PictureBoxClickHandle PictureBoxClick;

        Boolean isClear = false;
        int maxShowCount = 8;// 同时显示数量
        //int maxImageCount = 100;// 最大存放数量
        private int total = 0;// 图片总数
        private int showIndex = 0;// picturebox1显示的图片索引

        public int Count
        {
            get { return imgDic.Count; }
        }
        Dictionary<int, string> imgDic = new Dictionary<int, string>();
        public CommentImageList()
        {
            InitializeComponent();
            ButtonDisable();
            this.Scroll.Maximum = 9;
            this.Scroll.Value = 0;
        }

        private void ButtonDisable()
        {
            //Scroll.Enabled = false;
        }

        public void AddPic(string path)
        {
            imgDic.Add(total, path);
            total++;
            if (total > maxShowCount)
            {
                showIndex++;
                this.Scroll.Maximum++;
                Scroll.Value = Scroll.Maximum - 8;
            }

            ShowImg();
        }
        /// <summary>
        /// 重新对所有picturebox赋值图片
        /// </summary>
        public void ShowImg()
        {
            Control[] controls;
            PictureBox pb;
            for (int i = 0; i < 8; i++)
            {
                controls = this.Controls.Find("pictureBox" + (i + 1), false);
                pb = (PictureBox)controls[0];
                if (imgDic.Count > showIndex + i)
                    pb.Image = Image.FromFile(imgDic[showIndex + i]);
            }


            //pictureBox1.Image = Image.FromFile(imgDic[showIndex]);
            //if (imgDic.Count > showIndex + 1)
            //    pictureBox2.Image = Image.FromFile(imgDic[showIndex + 1]);
            //if (imgDic.Count > showIndex + 2)
            //    pictureBox3.Image = Image.FromFile(imgDic[showIndex + 2]);
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
            total = 0;
            showIndex = 0;
            isClear = true;
            Scroll.Maximum = 9;
            Scroll.Value = Scroll.Maximum - 8;
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show("是否要清空批注历史？", "提示", MessageBoxButtons.YesNo);
            if (dr == DialogResult.Yes)
            {
                Clear();
            }
        }

        private void hScrollBarAdv1_ValueChanged(object sender, EventArgs e)
        {
            if (isClear == false)
            {
                showIndex = Scroll.Value;
                ShowImg();
            }
            else
                isClear = false;
        }

        private void pictureBox_Click(object sender, EventArgs e)
        {
            int clickIndex = int.Parse(((PictureBox)sender).Name.Replace("pictureBox", ""));
            if (PictureBoxClick != null && imgDic.Count >= clickIndex)
                PictureBoxClick(showIndex + clickIndex - 1);
        }
    }
}
