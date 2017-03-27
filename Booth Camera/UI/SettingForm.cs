using AeroEduClass.Lib;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace AeroEduClass.UI
{
    public partial class SettingForm : Form
    {
        Dictionary<string, Button> btnDic = new Dictionary<string, Button>();
        Dictionary<string, Panel> plDic = new Dictionary<string, Panel>();
        Config config;
        public SettingForm(Config _config)
        {
            InitializeComponent();
            config = _config;
            btnDic.Add("btnUI", btnUI);
            btnDic.Add("btnPath", btnPath);
            btnDic.Add("btnAbout", btnAbout);
            plDic.Add("btnUI", plUI);
            plDic.Add("btnPath", plPath);
            plDic.Add("btnAbout", plAbout);
            // 路径设置
            tbxVideoPath.Text = config.VideoSavePath;
            tbxPicPath.Text = config.PictureSavePath;
            tbxCommentPath.Text = config.CommentSavePath;
            tbxErrColPath.Text = config.ErrColSavePath;
            // UI
            combSelectUI.SelectedIndex = config.DefaultUI;
            combCenterPoint.SelectedIndex = config.ShowCenterPoint;
            lbVer.Text = System.Reflection.Assembly.GetExecutingAssembly().GetName().Version.ToString();
        }

        private void btn_Click(object sender, EventArgs e)
        {
            ButtonActivation((Button)sender);
        }

        private void ButtonActivation(Button bt)
        {
            string btName = bt.Name;
            foreach (var item in btnDic)
            {
                if (item.Key != btName)
                {
                    item.Value.BackColor = Color.Transparent;//Color.FromArgb(57, 60, 69);
                    item.Value.FlatAppearance.MouseDownBackColor = Color.Transparent;
                    item.Value.FlatAppearance.MouseOverBackColor = Color.Transparent;
                }
                else
                {
                    item.Value.BackColor = Color.FromArgb(37, 40, 47);
                    item.Value.FlatAppearance.MouseDownBackColor = Color.FromArgb(37, 40, 47);
                    item.Value.FlatAppearance.MouseOverBackColor = Color.FromArgb(37, 40, 47);
                }
            }

            foreach (var item in plDic)
            {
                if (item.Key != btName)
                {
                    item.Value.Visible = false;
                }
                else
                    item.Value.Visible = true;
            }
        }

        private void tbx_Click(object sender, EventArgs e)
        {
            TextBox tbx = (TextBox)sender;
            FolderBrowserDialog fbd = new FolderBrowserDialog();
            if (!string.IsNullOrEmpty(tbx.Text))
                fbd.SelectedPath = tbx.Text;
            fbd.ShowNewFolderButton = true;
            DialogResult result = fbd.ShowDialog();
            if (result == DialogResult.OK)
                tbx.Text = fbd.SelectedPath;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            config.VideoSavePath = tbxVideoPath.Text;
            config.PictureSavePath = tbxPicPath.Text;
            config.CommentSavePath = tbxCommentPath.Text;
            config.ErrColSavePath = tbxErrColPath.Text;
            config.DefaultUI = combSelectUI.SelectedIndex;
            config.ShowCenterPoint = combCenterPoint.SelectedIndex;
            config.Save();
            MessageBox.Show("配置已保存，程序重启后生效");
            this.Close();
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
