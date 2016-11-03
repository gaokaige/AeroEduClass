using System;
using System.Web.Security;
using System.Windows.Forms;

namespace AeroEduRegSoft
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string mac = textBox1.Text.Trim();
            if (mac.Length != 12)
            {
                MessageBox.Show("mac输入错误");
                return;
            }

            if (!string.IsNullOrWhiteSpace(mac))
            {
                mac = mac.ToLower();
                mac = mac + "aero-edu.com";
                textBox2.Text = FormsAuthentication.HashPasswordForStoringInConfigFile(mac, "MD5");
            }
            else
            {
                MessageBox.Show("error");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(textBox2.Text))
            {
                Clipboard.SetDataObject(textBox2.Text);
                MessageBox.Show("已复制.");
            }
        }
    }
}
