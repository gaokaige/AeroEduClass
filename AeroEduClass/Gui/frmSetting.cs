using AeroEduClass.NoGui;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace AeroEduClass.Gui
{
    public partial class frmSetting : Form
    {
        public frmSetting()
        {
            InitializeComponent();
            Config config = new Config();
            tbxCCLiveServer.Text = config.CCLiveServer;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            bool CCLive = cbxCCLive.Checked;//直播课程
            string CCLiveServer = tbxCCLiveServer.Text.Trim();
            bool YCGK = cbxYCGK.Checked;//远程观课
            bool YCBK = cbxYCBK.Checked;//远程播课
            bool TDBD = cbxTDBD.Checked;//态度表达
            Config.Setting("UseCCLive", CCLive.ToString());
            if(CCLive)
                Config.Setting("CCLiveServer", CCLiveServer);
            Config.Setting("UseYCGK", YCGK.ToString());
            Config.Setting("UseYCBK", YCBK.ToString());
            Config.Setting("UseAttitude", TDBD.ToString());
            MessageBox.Show("配置保存成功，请重新启动课联网客户端。");
        }
    }
}
