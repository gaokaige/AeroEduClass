using AeroEduLib;
using System;
using System.Windows.Forms;
using UpgradePackageBuild.lib;

namespace UpgradePackageBuild
{
    public partial class frmServerAddr : Form
    {
        Config config;
        public frmServerAddr(Config _config)
        {
            InitializeComponent();
            config = _config;
        }

        private void frmServerAddr_Load(object sender, EventArgs e)
        {
            this.tbxServerAddress.Text = config.ServerAddress;
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            Setting.SetValue("server", tbxServerAddress.Text);
            frmMain.config.Refresh();
            this.Close();
        }
    }
}
