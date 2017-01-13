using AeroUpdateSoft.NoGui;
using System;
using System.Net.NetworkInformation;
using System.Threading;
using System.Windows.Forms;

namespace AeroUpdateSoft
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        NoGui.VersionUpdateLib updater;
        public delegate void OnUpdateMessage(string msg);
        private void frmMain_Load(object sender, EventArgs e)
        {
            int i = 0;
            while (i < 60)// 10分钟
            {
                i++;
                try
                {
                    Ping p = new Ping();
                    PingReply pr;
                    pr = p.Send("www.baidu.com");//百度的IP
                    if (pr.Status != IPStatus.Success)//如果连接不成功
                    {
                        //Log.WriteLog("未联网,稍后再试");
                        Thread.Sleep(10 * 1000);
                    }
                    else
                    {
                        //Log.WriteLog("已联网,检查更新");
                        break;
                    }
                }
                catch
                {
                    //Log.WriteLog("网络故障,稍后再试:" + exc.Message);
                    Thread.Sleep(10 * 1000);
                }
            }
            
            progressBar1.Minimum = 0;
            progressBar1.Maximum = 100;
            try
            {
                updater = new NoGui.VersionUpdateLib();
                updater.OnUpdateStarted += ver_OnUpdateStarted;
                updater.OnUpdateCompleted += ver_OnUpdateCompleted;
                updater.OnUpdateProgressChanged += ver_OnUpdateProgressChanged;
                updater.OnUpdateMessage += updater_OnUpdateMessage;

                Thread thread = new Thread(new ThreadStart(updater.Update));
                thread.IsBackground = true;
                thread.Start();
            }
            catch (Exception exc)
            {
                Log.WriteLog(exc.Message);
                //notifyIcon1.ShowBalloonTip(3000, "错误", exc.Message, ToolTipIcon.Error);
            }
            finally
            {
                this.Hide();
                this.ShowInTaskbar = false;
            }
        }

        void updater_OnUpdateMessage(string msg)
        {
            if (listBox1.InvokeRequired)
            {
                this.BeginInvoke(new AeroUpdateSoft.NoGui.VersionUpdateLib.UpdateMessageHandler(updater_OnUpdateMessage), new object[] { msg });
            }
            else
            {
                listBox1.Items.Add(msg);
                this.listBox1.SelectedIndex = this.listBox1.Items.Count - 1;
                Log.WriteLog(msg);
            }
        }

        void ver_OnUpdateProgressChanged(int progress)
        {
            if (progressBar1.InvokeRequired)
            {
                this.BeginInvoke(new AeroUpdateSoft.NoGui.VersionUpdateLib.UpdateProgressHandler(ver_OnUpdateProgressChanged), new object[] { progress });
            }
            else
            {
                progressBar1.Value = progress;
            }
        }

        void ver_OnUpdateCompleted()
        {

        }

        void ver_OnUpdateStarted()
        {
            if (this.InvokeRequired)
            {
                this.BeginInvoke(new AeroUpdateSoft.NoGui.VersionUpdateLib.UpdateHandler(ver_OnUpdateStarted), new object[] { });
            }
            else
            {
                this.Show();
                this.Activate();
                this.ShowInTaskbar = true;
            }
        }

        private void frmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }

        private void 退出ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}