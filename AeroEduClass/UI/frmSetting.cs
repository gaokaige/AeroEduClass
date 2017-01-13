using AeroEduClass.Lib;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace AeroEduClass.UI
{
    public partial class frmSetting : Form
    {
        public frmSetting()
        {
            InitializeComponent();
            Config config = Program._config;
            tbxCCLiveServer.Text = config.CCLiveServer;
            cbxYCGK.Checked = config.UseYCGK;
            cbxYCBK.Checked = config.UseYCBK;
            cbxTDBD.Checked = config.UseAttitude;
            cbxCCLive.Checked = config.UseCCLive;

            lbVer1.Text = "程序集版本：" + System.Reflection.Assembly.GetExecutingAssembly().GetName().Version.ToString() + "\n";
            //lbVer2.Text += "文件版本：" + Application.ProductVersion.ToString() + "\n";
            //lbVer3.Text += "部署版本：" + System.Deployment.Application.ApplicationDeployment.CurrentDeployment.CurrentVersion.ToString();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            bool CCLive = cbxCCLive.Checked;//直播课程
            string CCLiveServer = tbxCCLiveServer.Text.Trim();
            bool YCGK = cbxYCGK.Checked;//远程观课
            bool YCBK = cbxYCBK.Checked;//远程播课
            bool TDBD = cbxTDBD.Checked;//态度表达
            Config.Setting("UseCCLive", CCLive.ToString());
            Config.Setting("CCLiveServer", CCLiveServer);
            Config.Setting("UseYCGK", YCGK.ToString());
            Config.Setting("UseYCBK", YCBK.ToString());
            Config.Setting("UseAttitude", TDBD.ToString());
            this.Close();
            MessageBox.Show("配置保存成功，请重新启动课联网客户端。");
            
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
