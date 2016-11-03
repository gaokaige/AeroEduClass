using AeroEduClass.NoGui;
using AeroEduLib;
using CefSharp;
using CefSharp.WinForms;
using CefSharp.WinForms.Internals;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Diagnostics;
using System.Drawing;
using System.Windows.Forms;

namespace AeroEduClass.Gui
{
    public partial class frmMain : Form
    {
        /// <summary>
        /// 启动钥匙
        /// </summary>
        private const string key = "AeroEduClass";
        private ChromiumWebBrowser browser;
        private static Config config = new Config();
        private string currentUrl;
        private Ascription ap;

        public frmMain()
        {
            ALog.ToDB("启动主程序");
            InitializeComponent();
            btnMingBo.Visible = config.UseUKe;
            //设置cache目录到当前bin/debug目录
            var celSet = new CefSettings();

            celSet.CachePath = System.IO.Directory.GetCurrentDirectory() + @"\cache";
            //celSet.CefCommandLineArgs.Add("ppapi-flash-path", config.FlashPluginPath);// 安装flashplayer_ppapi可以解决flash播放问题
            Cef.Initialize(celSet);

#if !DEBUG
            browser = new ChromiumWebBrowser(config.LoginPageUrl)
            {
                Dock = DockStyle.Fill,
            };
#else
            browser = new ChromiumWebBrowser("http://192.168.0.108:8080/ROOT/login.html")
            {
                Dock = DockStyle.Fill,
            };
#endif
            plMain.Controls.Add(browser);
            plButtonList.Enabled = false;
            // 获取归属对象
            AeroEduClass.NoGui.AscriptionLib al = new NoGui.AscriptionLib();
            ap = al.GetAscription();// 可能是null
            // 获取activeclass可参与的教室列表
            System.Threading.Thread thr = new System.Threading.Thread(new System.Threading.ThreadStart(ToPosgresql));
            thr.IsBackground = false;
            thr.Start();
        }
        /// <summary>
        /// 本机mac写入xml
        /// </summary>
        private void ToPosgresql()
        {
            try
            {
                if (ap == null)
                    ap = new Ascription();
                Aero.iactiveMeetingServicePortTypeClient client = new Aero.iactiveMeetingServicePortTypeClient();
                string roomList = client.iactiveMeetingList(ap.IactiveUsername, ap.IactiveUsername, ap.IactivePwd);
                string mac = AeroEduLib.GetSystemInfo.GetLoaclMac();
                JObject jo = new JObject();
                JObject joSon1 = new JObject();
                JObject joSon2 = new JObject();
                JObject joSon3 = new JObject();
                joSon1.Add("macAddres", mac);
                joSon2.Add("liveInfo", roomList);
                joSon3.Add("username", ap.IactiveUsername);
                jo.Add("addMacInfo", joSon1);
                jo.Add("addIactiveLiveInfo", joSon2);
                jo.Add("username", joSon3);
                //post 数据到 课联网，课联网存到posgresql
                byte[] postData = System.Text.Encoding.UTF8.GetBytes(jo.ToString());
                AppInterface.PostData(config.PostServer, postData);
            }
            catch (Exception exc) { ALog.ToDB("发送MAC或互动列表错误:" + exc.Message); }
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            AeroRequestHandler aeroRequestHandler = new AeroRequestHandler();
            browser.RequestHandler = aeroRequestHandler;
            aeroRequestHandler.OnLogin += aeroRequestHandler_OnLogin;
            aeroRequestHandler.OnLogout += aeroRequestHandler_OnLogout;
            aeroRequestHandler.OnOffline += aeroRequestHandler_OnOffline;
            aeroRequestHandler.OnOpenFile += aeroRequestHandler_OnOpenFile;

            aeroRequestHandler.OnStartMeeting += aeroRequestHandler_OnStartMeeting;
            browser.MenuHandler = new AeroMenuHandler();
            browser.AddressChanged += browser_AddressChanged;
            browser.LoadingStateChanged += browser_LoadingStateChanged;
        }

        void aeroRequestHandler_OnStartMeeting(string jsonMsg)
        {
            Process p = Process.Start("iexplore", jsonMsg);
            System.Threading.Thread.Sleep(3000);
            if(!p.HasExited)
                p.CloseMainWindow();
            ALog.ToDB("进入教室:" + jsonMsg);
        }

        void aeroRequestHandler_OnOpenFile(string filePath)
        {
            FileOpen(filePath);
            ALog.ToDB("打开资源:" + filePath);
        }
        /// <summary>
        /// 打开资源
        /// </summary>
        /// <param name="filePath"></param>
        private void FileOpen(string filePath)
        {
            try
            {
                if (filePath.EndsWith(".htm") || filePath.EndsWith(".html"))
                    Process.Start("iexplore", filePath);
                else
                    Process.Start(filePath);
            }
            catch (Exception exc) { MessageBox.Show(exc.Message); }
        }

        void browser_LoadingStateChanged(object sender, CefSharp.LoadingStateChangedEventArgs e)
        {
            SetCanGoBack(e.CanGoBack);
            SetCanGoForward(e.CanGoForward);

            this.InvokeOnUiThreadIfRequired(() => SetIsLoading(!e.CanReload));
        }

        private void SetIsLoading(bool isLoading)
        {
            //goButton.Text = isLoading ?
            //    "Stop" :
            //    "Go";
            //goButton.Image = isLoading ?
            //    Properties.Resources.nav_plain_red :
            //    Properties.Resources.nav_plain_green;
        }

        private void SetCanGoBack(bool canGoBack)
        {
            this.InvokeOnUiThreadIfRequired(() => backButton.Enabled = canGoBack);
        }

        private void SetCanGoForward(bool canGoForward)
        {
            this.InvokeOnUiThreadIfRequired(() => forwardButton.Enabled = canGoForward);
        }

        void browser_AddressChanged(object sender, CefSharp.AddressChangedEventArgs e)
        {
            currentUrl = e.Address;
        }
        /// <summary>
        /// 脱机事件
        /// </summary>
        /// <param name="userId"></param>
        void aeroRequestHandler_OnOffline(string jsonMsg)
        {
            this.InvokeOnUiThreadIfRequired(() => plButtonList.Enabled = true);
            browser.Load(string.Format("javascript:bridge.callBack('{0}')", jsonMsg));
            ALog.ToDB("脱机");
        }
        /// <summary>
        /// 登出事件
        /// </summary>
        /// <param name="userId"></param>
        void aeroRequestHandler_OnLogout(string jsonMsg)
        {
            this.InvokeOnUiThreadIfRequired(() => plButtonList.Enabled = false);
            browser.Load(string.Format("javascript:bridge.callBack('{0}')", jsonMsg));
            ALog.ToDB("登出");
        }
        string mingBoToken = string.Empty;
        /// <summary>
        /// 登录事件
        /// </summary>
        /// <param name="_userId"></param>
        private void aeroRequestHandler_OnLogin(string jsonMsg)
        {
            this.InvokeOnUiThreadIfRequired(() => plButtonList.Enabled = true);
            browser.Load(string.Format("javascript:bridge.callBack('{0}')", jsonMsg));
            // jsonMsg中含有名博的token，需要获取
            mingBoToken = GetMingBoToken(jsonMsg);
            ALog.ToDB("登录");
        }

        private string GetMingBoToken(string jsonMsg)
        {
            string token = string.Empty;
            try
            {
                JObject jo = (JObject)JsonConvert.DeserializeObject(jsonMsg);
                JToken jtAction;
                if (jo.TryGetValue("token", out jtAction))
                    token = jtAction.ToString();
            }
            catch (Exception exc) { ALog.ToDB("名博秘钥获取错误:" + exc.Message); }
            return token;
        }
        /// <summary>
        /// 关闭程序
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dmButtonClose1_Click(object sender, System.EventArgs e)
        {
            ALog.ToDB("退出课联网主程序");
            Application.Exit();
        }
        /// <summary>
        /// 最小化
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dmButtonMin1_Click(object sender, System.EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }
        /// <summary>
        /// 远程观课页面
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnYcgk_Click(object sender, EventArgs e)
        {
            browser.Load(config.LiveServer);
            ALog.ToDB("启动[远程观课]");
        }
        /// <summary>
        /// 返回首页
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnHome_Click(object sender, EventArgs e)
        {
            browser.Load(config.HomePageUrl);
            ALog.ToDB("返回首页");
        }
        /// <summary>
        /// 名博优课
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnMingBo_Click(object sender, EventArgs e)
        {
            string param = null;
            if (!string.IsNullOrEmpty(mingBoToken))
                param = "\"" + "UClass.URL://token$" + mingBoToken + "\"";
            AppButtonClick(config.MingBoUClass, PathType.绝对路径, param);
        }
        /// <summary>
        /// 启动录播
        /// </summary>
        private void btnRecord_Click(object sender, EventArgs e)
        {
#if DEBUG
            Process.Start(@"C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Debug\Record Player.exe");
#else
            AppButtonClick(config.RecordPlayPath, PathType.相对路径, key);
#endif
        }
        /// <summary>
        /// 启动同频互动
        /// </summary>
        private void btnActive_Click(object sender, EventArgs e)
        {
            browser.Load(config.ActivePath);
            ALog.ToDB("启动[远程上课]");
        }
        /// <summary>
        /// 启动实物展台
        /// </summary>
        private void btnBooth_Click(object sender, EventArgs e)
        {
#if DEBUG
            Process.Start(@"C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Debug\Booth Camera.exe");
#else
            AppButtonClick(config.BoothCameraPath, PathType.相对路径, key);
#endif
        }
        /// <summary>
        /// 启动白板
        /// </summary>
        private void btnWhiteboard_Click(object sender, EventArgs e)
        {
            AppButtonClick(config.AeroBoardPath, PathType.绝对路径);
        }
        /// <summary>
        /// 启动直播
        /// </summary>
        private void btnLive_Click(object sender, EventArgs e)
        {
            ALog.ToDB("启动[远程播课]");
            CreateVideoShare();
        }
        /// <summary>
        /// 启动应用程序
        /// </summary>
        /// <param name="appPath"></param>
        /// <param name="ptype"></param>
        /// <param name="args"></param>
        private void AppButtonClick(string appPath, PathType ptype, string args = null)
        {
            try
            {
                Process p = new System.Diagnostics.Process();
                if (ptype == PathType.相对路径)
                {

                    p.StartInfo.WorkingDirectory = new System.IO.FileInfo(System.AppDomain.CurrentDomain.BaseDirectory + appPath).Directory.ToString();//要启动程序路径
                    p.StartInfo.FileName = System.AppDomain.CurrentDomain.BaseDirectory + appPath;//需要启动的程序名  
                }
                else if (ptype == PathType.绝对路径)
                {
                    p.StartInfo.WorkingDirectory = new System.IO.FileInfo(appPath).Directory.ToString();//要启动程序路径
                    p.StartInfo.FileName = appPath;//需要启动的程序名  
                }

                if (args != null)
                    p.StartInfo.Arguments = args;//传递的参数 
                p.Start();//启动  
                ALog.ToDB(string.Format("启动应用程序[{0}]", appPath));
                this.WindowState = FormWindowState.Minimized;
            }
            catch (Exception exc) { MessageBox.Show(exc.Message); }
        }

        private void refreshButton_Click(object sender, EventArgs e)
        {
            browser.Load(currentUrl);
        }

        private void backButton_Click(object sender, EventArgs e)
        {
            browser.Back();
        }

        private void forwardButton_Click(object sender, EventArgs e)
        {
            browser.Forward();
        }

        private enum PathType
        {
            相对路径,
            绝对路径
        }

        private Point mousePoint = new Point();
        private void plBottom_MouseDown(object sender, MouseEventArgs e)
        {
            base.OnMouseDown(e);
            this.mousePoint.X = e.X;
            this.mousePoint.Y = e.Y;
        }

        private void plBottom_MouseMove(object sender, MouseEventArgs e)
        {
            base.OnMouseMove(e);
            if (e.Button == MouseButtons.Left)
            {
                this.Top = Control.MousePosition.Y - mousePoint.Y - this.Height + this.plBottom.Height;
                this.Left = Control.MousePosition.X - mousePoint.X;
            }
        }

        private void CreateVideoShare()
        {
            if (ap == null)
                ap = new Ascription();
            string appPath = string.Empty;
            string appParams = string.Format("-sheng {0} -shi {1} -xian {2} -agency {3} -grade {4}", ap.Province, ap.City, ap.District, ap.School, ap.ClassNo);
            try
            {
                appPath = System.AppDomain.CurrentDomain.BaseDirectory + "obsbin\\bin\\64bit\\obs64.lnk";
                System.Diagnostics.Process.Start(appPath, appParams);
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
                ALog.ToDB(string.Format("apppath:{0}####param:{1}", appPath, appParams));
            }
        }
    }
}