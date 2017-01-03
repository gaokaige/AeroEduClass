using AeroEduLib;
using System;
using System.Windows.Forms;

namespace Booth_Camera
{
    public partial class frmReg : Form
    {
        public frmReg()
        {
            InitializeComponent();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            string _license, license;
            _license = GetSystemInfo.GetLicense();
            license = tbxLicense.Text;

            if (license.Length == 32 && _license == license)
            {
                //Setting.SetValue("License", license);
                Setting.SetLicense(license);
                MessageBox.Show("注册成功，点击确定后程序自动重新启动.");
                Application.Exit();
                Application.Restart();
            }
            else
            {
                MessageBox.Show("注册码错误,请重新输入.");
                return;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string mac = GetSystemInfo.GetLoaclMac();
            if (!string.IsNullOrEmpty(mac))
                textBox1.Text = mac;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(textBox1.Text))
            {
                Clipboard.SetDataObject(textBox1.Text);
                MessageBox.Show("信息已复制，请邮件发送给我们。");
            }
        }
    }
}
