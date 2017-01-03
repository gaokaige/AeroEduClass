using SevenZip;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Threading;
using System.Windows.Forms;
using System.Xml;
using UpgradePackageBuild.lib;

namespace UpgradePackageBuild
{
    public partial class frmMain : Form
    {
        private string tmpDir = System.AppDomain.CurrentDomain.BaseDirectory + "tmp";
        private string packageDir = System.AppDomain.CurrentDomain.BaseDirectory + "package";
        private Label lb;
        private TextBox tbxFileName, tbxMD5;
        private OpenFileDialog ofd;
        public static Config config;

        public delegate void ProgressHandler(int progress);
        public event ProgressHandler OnProgressChanged;

        public frmMain()
        {
            InitializeComponent();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            ofd = new OpenFileDialog();
            ofd.FileOk += ofd_FileOk;
            config = new Config();

            OnProgressChanged += frmMain_OnProgressChanged;
            progressBar1.Minimum = 0;
            progressBar1.Maximum = 100;
        }

        private void frmMain_OnProgressChanged(int progress)
        {
            if (progressBar1.InvokeRequired)
            {
                this.BeginInvoke(new ProgressHandler(frmMain_OnProgressChanged), new object[] { progress });
            }
            else
            {
                progressBar1.Value = progress;
            }
        }

        private void ofd_FileOk(object sender, CancelEventArgs e)
        {
            tbxFileName.Text = ofd.FileName;
            if (CheckFileName(ofd.FileNames[0]))
                lb.ForeColor = Color.LimeGreen;
            else
                lb.ForeColor = Color.Red;
            tbxMD5.Text = MD5.GetMD5HashFromFile(ofd.FileName);
        }

        private void btnAeroEduClass_Click(object sender, EventArgs e)
        {
            lb = lbAeroEduClass;
            tbxFileName = tbxAeroEduClass;
            tbxMD5 = tbxAeroEduClassMD5;
            ofd.ShowDialog();
        }

        private void btnRecordPlayer_Click(object sender, EventArgs e)
        {
            lb = lbRecordPlayer;
            tbxFileName = tbxRecordPlayer;
            tbxMD5 = tbxRecordPlayerMD5;
            ofd.ShowDialog();
        }

        private void btnBoothCamera_Click(object sender, EventArgs e)
        {
            lb = lbBoothCamera;
            tbxFileName = tbxBoothCamera;
            tbxMD5 = tbxBoothCameraMD5;
            ofd.ShowDialog();
        }

        private void btnRoot_Click(object sender, EventArgs e)
        {
            lb = lbRoot;
            tbxFileName = tbxRoot;
            tbxMD5 = tbxRootMD5;
            ofd.ShowDialog();
        }

        private void btnAeroEduPlatform_Click(object sender, EventArgs e)
        {
            lb = lbAeroEduPlatform;
            tbxFileName = tbxAeroEduPlatform;
            tbxMD5 = tbxAeroEduPlatformMD5;
            ofd.ShowDialog();
        }

        private void btnCloud_Click(object sender, EventArgs e)
        {
            lb = lbCloud;
            tbxFileName = tbxCloud;
            tbxMD5 = tbxCloudMD5;
            ofd.ShowDialog();
        }

        private void btnBuild_Click(object sender, EventArgs e)
        {
            bool pass = CheckInput();

            if (pass)
            {
                Thread thread = new Thread(new ThreadStart(BuildStart));
                thread.Start();
            }
        }

        private void BuildStart()
        {
            try
            {
                // 必要目录
                if (Directory.Exists(tmpDir))
                    Directory.Delete(tmpDir, true);
                Directory.CreateDirectory(tmpDir);
                if (Directory.Exists(packageDir))
                    Directory.Delete(packageDir, true);
                Directory.CreateDirectory(packageDir);
                OnProgressChanged(10);
                // 要压缩的文件名
                Dictionary<string, string> zipFiles = new Dictionary<string, string>();
                // 生成version.xml
                XmlDocument xdoc = new XmlDocument();
                XmlDeclaration dec = xdoc.CreateXmlDeclaration("1.0", "utf-8", null);
                xdoc.AppendChild(dec);
                XmlElement root = xdoc.CreateElement("Config");
                xdoc.AppendChild(root);
                XmlElement version = xdoc.CreateElement("Version");
                version.InnerText = tbxVersion.Text;
                root.AppendChild(version);
                xdoc.AppendChild(root);
                OnProgressChanged(20);
                // AeroEduClass
                if (!string.IsNullOrEmpty(tbxAeroEduClass.Text))
                {
                    XmlNode node = xdoc.CreateElement("App");
                    AddChildNode(xdoc, node, "Name", "AeroEduClass");
                    AddChildNode(xdoc, node, "Version", tbxAeroEduClassVersion.Text);
                    AddChildNode(xdoc, node, "Md5", MD5.GetMD5HashFromFile(tbxAeroEduClass.Text));
                    AddChildNode(xdoc, node, "Url", config.ServerAddress + "AeroEduClass.rar");
                    root.AppendChild(node);
                    zipFiles.Add("AeroEduClass.rar", tbxAeroEduClass.Text);
                }
                OnProgressChanged(30);
                // Record Player
                if (!string.IsNullOrEmpty(tbxRecordPlayer.Text))
                {
                    XmlNode node2 = xdoc.CreateElement("App");
                    AddChildNode(xdoc, node2, "Name", "Record Player");
                    AddChildNode(xdoc, node2, "Version", tbxRecordPlayerVersion.Text);
                    AddChildNode(xdoc, node2, "Md5", MD5.GetMD5HashFromFile(tbxRecordPlayer.Text));
                    AddChildNode(xdoc, node2, "Url", config.ServerAddress + "Record Player.rar");
                    root.AppendChild(node2);
                    zipFiles.Add("Record Player.rar", tbxRecordPlayer.Text);
                }
                OnProgressChanged(40);
                // Booth Camera
                if (!string.IsNullOrEmpty(tbxBoothCamera.Text))
                {
                    XmlNode node3 = xdoc.CreateElement("App");
                    AddChildNode(xdoc, node3, "Name", "Booth Camera");
                    AddChildNode(xdoc, node3, "Version", tbxBoothCameraVersion.Text);
                    AddChildNode(xdoc, node3, "Md5", MD5.GetMD5HashFromFile(tbxBoothCamera.Text));
                    AddChildNode(xdoc, node3, "Url", config.ServerAddress + "Booth Camera.rar");
                    root.AppendChild(node3);
                    zipFiles.Add("Booth Camera.rar", tbxBoothCamera.Text);
                }
                OnProgressChanged(50);
                // Root
                if (!string.IsNullOrEmpty(tbxRoot.Text))
                {
                    XmlNode node4 = xdoc.CreateElement("App");
                    AddChildNode(xdoc, node4, "Name", "War");
                    AddChildNode(xdoc, node4, "Version", tbxRootVersion.Text);
                    AddChildNode(xdoc, node4, "Md5", MD5.GetMD5HashFromFile(tbxRoot.Text));
                    AddChildNode(xdoc, node4, "Url", config.ServerAddress + "War.rar");
                    root.AppendChild(node4);
                    string war = tmpDir + "\\War.rar";
                    SevenZipLib.SevenZipFile(war, tbxRoot.Text);
                    zipFiles.Add("War.rar", war);
                }
                OnProgressChanged(60);
                // AeroEduPlatform
                if (!string.IsNullOrEmpty(tbxAeroEduPlatform.Text))
                {
                    XmlNode node5 = xdoc.CreateElement("App");
                    AddChildNode(xdoc, node5, "Name", "AeroEduPlatform");
                    AddChildNode(xdoc, node5, "Version", tbxAeroEduPlatformVersion.Text);
                    AddChildNode(xdoc, node5, "Md5", MD5.GetMD5HashFromFile(tbxAeroEduPlatform.Text));
                    AddChildNode(xdoc, node5, "Url", config.ServerAddress + "AeroEduPlatform.rar");
                    root.AppendChild(node5);
                    zipFiles.Add("AeroEduPlatform.rar", tbxAeroEduPlatform.Text);
                }
                OnProgressChanged(70);
                // Cloud
                if (!string.IsNullOrEmpty(tbxCloud.Text))
                {
                    XmlNode node6 = xdoc.CreateElement("App");
                    AddChildNode(xdoc, node6, "Name", "War");
                    AddChildNode(xdoc, node6, "Version", tbxCloudVersion.Text);
                    AddChildNode(xdoc, node6, "Md5", MD5.GetMD5HashFromFile(tbxCloud.Text));
                    AddChildNode(xdoc, node6, "Url", config.ServerAddress + "Cloud.rar");
                    root.AppendChild(node6);
                    zipFiles.Add("Cloud.rar", tbxCloud.Text);
                }
                OnProgressChanged(80);
                xdoc.Save(tmpDir + "\\version.xml");
                zipFiles.Add("version.xml", tmpDir + "\\version.xml");
                // 创建压缩包
                SevenZipLib.SevenZipFiles(packageDir + "\\" + string.Format("update{0}.zip", DateTime.Now.ToString("yyyyMMddHHmmss")), zipFiles);
                OnProgressChanged(100);
                MessageBox.Show("压缩包生成完毕");
            }
            catch (Exception exc)
            {
                MessageBox.Show("错误：" + exc.Message);
            }
        }

        private void AddChildNode(XmlDocument xdoc, XmlNode node, string name, string value)
        {
            XmlElement el = xdoc.CreateElement(name);
            el.InnerText = value;
            node.AppendChild(el);
        }

        private bool CheckFileName(string name)
        {
            bool chk = false;
            if (lb.Text == ofd.SafeFileName)
                chk = true;
            else
                chk = false;
            return chk;
        }

        private bool CheckInput()
        {
            bool chk = true;
            if (!CheckVersionFormat(tbxVersion.Text))
            {
                MessageBox.Show("总版本号错误");
                chk = false;
                return chk;
            }

            if (string.IsNullOrEmpty(tbxAeroEduClass.Text)
                && string.IsNullOrEmpty(tbxBoothCamera.Text)
                && string.IsNullOrEmpty(tbxRecordPlayer.Text)
                && string.IsNullOrEmpty(tbxRoot.Text)
                && string.IsNullOrEmpty(tbxCloud.Text)
                && string.IsNullOrEmpty(tbxAeroEduPlatform.Text))
            {
                MessageBox.Show("请选择一个更新的文件");
                chk = false;
                return chk;
            }

            if (lbAeroEduClass.ForeColor == Color.Red
                || lbBoothCamera.ForeColor == Color.Red
                || lbRecordPlayer.ForeColor == Color.Red
                || lbRoot.ForeColor == Color.Red
                || lbCloud.ForeColor == Color.Red
                || lbAeroEduPlatform.ForeColor == Color.Red)
            {
                MessageBox.Show("文件选择错误（红色标签）");
                chk = false;
            }

            if (chk)
            {
                if (!string.IsNullOrEmpty(tbxAeroEduClass.Text))
                {
                    if (string.IsNullOrEmpty(tbxAeroEduClassVersion.Text))
                    {
                        MessageBox.Show("输入AeroEduClass版本号");
                        tbxAeroEduClassVersion.Focus();
                        chk = false;
                    }
                    else if (!CheckVersionFormat(tbxAeroEduClassVersion.Text))
                    {
                        MessageBox.Show("AeroEduClass版本号格式错误");
                        tbxAeroEduClassVersion.Focus();
                        chk = false;
                    }
                }

                if (!string.IsNullOrEmpty(tbxBoothCamera.Text) )
                {
                    if (string.IsNullOrEmpty(tbxBoothCameraVersion.Text))
                    {
                        MessageBox.Show("输入BoothCamera版本号");
                        tbxBoothCameraVersion.Focus();
                        chk = false;
                    }
                    else if (!CheckVersionFormat(tbxBoothCameraVersion.Text))
                    {
                        MessageBox.Show("BoothCamera版本号格式错误");
                        tbxBoothCameraVersion.Focus();
                        chk = false;
                    }
                }

                if (!string.IsNullOrEmpty(tbxRecordPlayer.Text))
                {
                    if (string.IsNullOrEmpty(tbxRecordPlayerVersion.Text))
                    {
                        MessageBox.Show("输入RecordPlayer版本号");
                        tbxRecordPlayerVersion.Focus();
                        chk = false;
                    }
                    else if (!CheckVersionFormat(tbxRecordPlayerVersion.Text))
                    {
                        MessageBox.Show("RecordPlayer版本号格式错误");
                        tbxRecordPlayerVersion.Focus();
                        chk = false;
                    }
                }

                if (!string.IsNullOrEmpty(tbxRoot.Text))
                {
                    if (string.IsNullOrEmpty(tbxRootVersion.Text))
                    {
                        MessageBox.Show("输入Root版本号");
                        tbxRootVersion.Focus();
                        chk = false;
                    }
                    else if (!CheckVersionFormat(tbxRootVersion.Text))
                    {
                        MessageBox.Show("Root版本号格式错误");
                        tbxRootVersion.Focus();
                        chk = false;
                    }
                }

                if (!string.IsNullOrEmpty(tbxCloud.Text))
                {
                    if (string.IsNullOrEmpty(tbxCloudVersion.Text))
                    {
                        MessageBox.Show("输入Cloud版本号");
                        tbxCloudVersion.Focus();
                        chk = false;
                    }
                    else if (!CheckVersionFormat(tbxCloudVersion.Text))
                    {
                        MessageBox.Show("Cloud版本号格式错误");
                        tbxCloudVersion.Focus();
                        chk = false;
                    }
                }

                if (!string.IsNullOrEmpty(tbxAeroEduPlatform.Text))
                {
                    if (string.IsNullOrEmpty(tbxAeroEduPlatformVersion.Text))
                    {
                        MessageBox.Show("输入AeroEduPlatform版本号");
                        tbxAeroEduPlatformVersion.Focus();
                        chk = false;
                    }
                    else if (!CheckVersionFormat(tbxAeroEduPlatformVersion.Text))
                    {
                        MessageBox.Show("AeroEduPlatform版本号格式错误");
                        tbxAeroEduPlatformVersion.Focus();
                        chk = false;
                    }
                }
            }
            return chk;
        }

        private bool CheckVersionFormat(string version)
        {
            bool chk = true; ;
            Version ver;
            
            if (!Version.TryParse(version, out ver))
                chk = false;

            if (ver.ToString().Split('.').Length != 3)
                chk = false;

            return chk;
        }

        private void 打开升级包目录ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("iexplore", packageDir);
        }

        private void 服务器地址ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmServerAddr frm = new frmServerAddr(config);
            frm.ShowDialog();
        }

        private void 版本ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("航天云升级包打包工具 Ver : 1.0.0");
        }

        private void 压缩包格式ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void 退出ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

    }
}
