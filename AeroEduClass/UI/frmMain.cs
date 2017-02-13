using AeroEduClass.Lib;
using AeroEduLib;
using CefSharp;
using CefSharp.WinForms;
using CefSharp.WinForms.Internals;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Windows.Forms;

namespace AeroEduClass.UI
{
    public partial class frmMain : Form
    {
        #region Field

        /// <summary>
        /// 录播、展台等应用的启动钥匙
        /// </summary>
        private const string key = "AeroEduClass";
        /// <summary>
        /// 主程序路径
        /// </summary>
        private string path;
        /// <summary>
        /// 当学生启动答题功能，会生成一个标识文件，态度表达检测到该文件存在，运行暂停
        /// 当学生停止答题功能，会删除该标识文件，态度表达继续
        /// </summary>
        private string flagFileName;
        private ChromiumWebBrowser browser;
        /// <summary>
        /// 获取配置，非常重要
        /// </summary>
        private static Config config = Program._config;
        /// <summary>
        ///  保存当前地址，刷新功能使用
        /// </summary>
        private string currentUrl = string.Empty;
        /// <summary>
        /// 上一次的地址
        /// </summary>
        private string lastUrl = string.Empty;
        /// <summary>
        /// 归属对象
        /// </summary>
        private Ascription ap;
        /// <summary>
        /// 下载浮动窗
        /// </summary>
        frmDLFloat frmdlfloat;
        /// <summary>
        /// 下载功能的主窗体
        /// </summary>
        frmDLMain frmdlmain;
        
        #endregion
        public frmMain()
        {
            InitializeComponent();

            // 根据分辨率设置主界面大小
            System.Drawing.Rectangle rect = Screen.PrimaryScreen.Bounds;
            if (rect.Width != 1024)
            {
                this.WindowState = FormWindowState.Normal;
                this.StartPosition = FormStartPosition.CenterScreen;
                this.Width = 1024;
                this.Height = 768;
            }
            ALog.ToDB("启动主程序");
            path = System.AppDomain.CurrentDomain.BaseDirectory + "Attitude\\Status\\";
            flagFileName = path + "pause.dat";

            try
            {
                if (!Directory.Exists(path))
                    Directory.CreateDirectory(path);
                if (System.IO.File.Exists(flagFileName))
                    System.IO.File.Delete(flagFileName);
            }
            catch (Exception exc)
            {
                Log.ToFile("态度表达标识文件操作错误:" + exc.Message);
            }

            btnMingBo.Visible = config.UseUKe;
            btnYcgk.Visible = config.UseYCGK;
            btnLive.Visible = config.UseYCBK;
            btnCCLive.Visible = config.UseCCLive;
            // U4不使用电子白板
            if (TypeDefinition._DeviceType == DeviceType.U4)
                btnWhiteboard.Visible = false;

            if (CefSharpSettings.ShutdownOnExit)
            {
                Application.ApplicationExit += OnApplicationExit;
            }
            //设置cache目录到当前bin/debug目录
            var celSet = new CefSettings();

            celSet.CachePath = System.IO.Directory.GetCurrentDirectory() + @"\cache";
            //celSet.CefCommandLineArgs.Add("ppapi-flash-path", config.FlashPluginPath);// 安装flashplayer_ppapi可以解决flash播放问题
            //celSet.CefCommandLineArgs.Add("enable-media-stream", "1"); //Enable WebRTC
            Cef.Initialize(celSet, true, false);
#if !DEBUG
            browser = new ChromiumWebBrowser(config.LoginPageUrl)
            {
                Dock = DockStyle.Fill,
            };
#else
            browser = new ChromiumWebBrowser(@"c:\1.html")
            {
                Dock = DockStyle.Fill,
            };
#endif
            plMain.Controls.Add(browser);
            plButtonList.Enabled = false;
            // 获取归属对象
            AeroEduClass.Lib.AscriptionLib al = new Lib.AscriptionLib();
            ap = al.GetAscription();// 可能是null
            // 获取activeclass可参与的教室列表
            System.Threading.Thread thr = new System.Threading.Thread(new System.Threading.ThreadStart(SaveMac));
            thr.IsBackground = false;
            thr.Start();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            AeroRequestHandler aeroRequestHandler = new AeroRequestHandler();
            aeroRequestHandler.OnLocationChanged += aeroRequestHandler_OnLocationChanged;
            aeroRequestHandler.OnLogin += aeroRequestHandler_OnLogin;
            aeroRequestHandler.OnLogout += aeroRequestHandler_OnLogout;
            aeroRequestHandler.OnOffline += aeroRequestHandler_OnOffline;
            aeroRequestHandler.OnOpenFile += aeroRequestHandler_OnOpenFile;
            aeroRequestHandler.OnStartMeeting += aeroRequestHandler_OnStartMeeting;
            aeroRequestHandler.OnStartQA += aeroRequestHandler_OnStartQA;
            aeroRequestHandler.OnEndQA += aeroRequestHandler_OnEndQA;
            aeroRequestHandler.OnDownloadPage += aeroRequestHandler_OnDownloadPage;
            aeroRequestHandler.OnDownload += aeroRequestHandler_OnDownload;
            browser.RequestHandler = aeroRequestHandler;

            browser.DownloadHandler = new AeroDownloadHandler();
            browser.MenuHandler = new AeroMenuHandler();
            browser.AddressChanged += browser_AddressChanged;
            browser.LoadingStateChanged += browser_LoadingStateChanged;
        }
        private void FrmDLfloatShow()
        {
            
            frmdlfloat.TopMost = true;
            frmdlfloat.Show();
        }
        /// <summary>
        /// 当有新的页面请求的时候
        /// </summary>
        /// <param name="url"></param>
        private void aeroRequestHandler_OnLocationChanged(string url)
        {
            // 隐藏下载图标
            if (!url.Contains(config.ResourcePageName))
            {
                if (frmdlfloat != null)
                    frmdlfloat.InvokeOnUiThreadIfRequired(() => frmdlfloat.Hide());
            }
            else
            {
                if (frmdlfloat != null)
                    frmdlfloat.InvokeOnUiThreadIfRequired(() => FrmDLfloatShow());

            }

            if (AeroEduLib.TypeDefinition._DeviceType == DeviceType.U3)
            {
                // 如果是从题库页面跳转的
                if (lastUrl.Contains(config.QuestionsPersonal) || lastUrl.Contains(config.QuestionsPublic))
                {
                    // 清理答题器结果
                    QAOperationLib.QAReset();
                    // 继续态度表达
                    aeroRequestHandler_OnEndQA("");
                }
            }
            lastUrl = url;
        }
        /// <summary>
        /// 退出主程序
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void OnApplicationExit(object sender, EventArgs e)
        {
            Cef.Shutdown();//释放cef资源
        }
        /// <summary>
        /// MAC、同频互动列表等信息入库
        /// </summary>
        private void SaveMac()
        {
            try
            {
                if (ap == null)
                    ap = new Ascription();
                Aero.iactiveMeetingServicePortTypeClient client = new Aero.iactiveMeetingServicePortTypeClient();
                string roomList = client.iactiveMeetingList(ap.IactiveUsername, ap.IactiveUsername, ap.IactivePwd);
                string mac = AeroEduLib.GetSystemInfo.GetLoaclMac();
                JObject jo = new JObject();
                JObject joSonMac = new JObject();
                JObject joSonLive = new JObject();
                JObject joSonUser = new JObject();
                joSonMac.Add("macAddres", mac);
                joSonLive.Add("liveInfo", roomList);
                joSonUser.Add("username", ap.IactiveUsername);
                jo.Add("addMacInfo", joSonMac);
                jo.Add("addIactiveLiveInfo", joSonLive);
                jo.Add("username", joSonUser);
                //post 数据到 课联网，课联网存到posgresql
                byte[] postData = System.Text.Encoding.UTF8.GetBytes(jo.ToString());
                AppInterface.PostData(config.PostServer, postData);
            }
            catch (Exception exc) { ALog.ToDB("发送MAC或互动列表错误:" + exc.Message); }
        }
        /// <summary>
        /// 跳转到下载资源页面
        /// </summary>
        /// <param name="jsonMsg"></param>
        private void aeroRequestHandler_OnDownloadPage(string jsonMsg)
        {
            browser.Load(jsonMsg);
            if (frmdlmain == null) frmdlmain = new frmDLMain();
            if (frmdlfloat == null) frmdlfloat = new frmDLFloat(frmdlmain);
            FrmDLfloatShow();
            frmdlfloat.Location = new Point(this.Location.X + 935, this.Location.Y + 30);
        }
        /// <summary>
        /// 下载资源
        /// </summary>
        /// <param name="jsonMsg"></param>
        private void aeroRequestHandler_OnDownload(string jsonMsg)
        {
            SaveFileDialog sfg = new SaveFileDialog();
            string url = jsonMsg;
            string fileName = url.Substring(url.LastIndexOf("/") + 1, url.Length - url.LastIndexOf("/") - 1);

            sfg.FileName =System.Web.HttpUtility.UrlDecode(fileName);

            if (sfg.ShowDialog() == DialogResult.OK)
            {
                frmdlmain.CreatDownload(url, sfg.FileName);
            }
        }
        /// <summary>
        /// 结束答题
        /// </summary>
        /// <param name="jsonMsg"></param>
        private void aeroRequestHandler_OnEndQA(string jsonMsg)
        {
            // 结束答题，恢复态度表达
            try
            {
                if (File.Exists(flagFileName))
                {
                    File.Delete(flagFileName);
                    Log.ToFile("删除标识文件");
                }
            }
            catch (Exception exc)
            {
                Log.ToFile("删除标识文件错误" + exc.Message);
            }
            browser.Load(string.Format("javascript:bridge.callBack('{0}')", jsonMsg));
        }
        /// <summary>
        /// 开始答题
        /// </summary>
        /// <param name="jsonMsg"></param>
        private void aeroRequestHandler_OnStartQA(string jsonMsg)
        {
            // 开始答题，暂停态度表达
            if (!File.Exists(flagFileName))
            {
                // 要释放对象，否则删除文件报错
                File.Create(flagFileName).Dispose();
                Log.ToFile("创建标识文件");
            }
            browser.Load(string.Format("javascript:bridge.callBack('{0}')", jsonMsg));
        }

        private void aeroRequestHandler_OnStartMeeting(string jsonMsg)
        {
            Process p = Process.Start("iexplore", jsonMsg);
            System.Threading.Thread.Sleep(3000);
            if (!p.HasExited)
                p.CloseMainWindow();
            ALog.ToDB("进入教室:" + jsonMsg);
        }

        private void aeroRequestHandler_OnOpenFile(string filePath)
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

        private void browser_LoadingStateChanged(object sender, CefSharp.LoadingStateChangedEventArgs e)
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

        private void browser_AddressChanged(object sender, CefSharp.AddressChangedEventArgs e)
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
            if (config.UseAttitude)
                ExitAttitude();
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
            // 启动态度表达软件
            if (config.UseAttitude)
            {
                string teacherID = GetTeacherID(jsonMsg);
                string args = AeroEduLib.GetSystemInfo.GetLoaclMac() + " " + teacherID;
                AppButtonClick(config.AttitudePath, PathType.相对路径, args);
            }
        }
        /// <summary>
        /// 获取名博U课的Token，才能正确启动U课客户端
        /// </summary>
        /// <param name="jsonMsg"></param>
        /// <returns></returns>
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
            catch (Exception exc) { Log.ToFile("名博秘钥获取错误:" + exc.Message); }
            return token;
        }
        /// <summary>
        /// 登录后获取教师ID
        /// </summary>
        private string GetTeacherID(string jsonMsg)
        {
            string token = string.Empty;
            try
            {
                JObject jo = (JObject)JsonConvert.DeserializeObject(jsonMsg);
                JToken jtAction;
                if (jo.TryGetValue("userID", out jtAction))
                    token = jtAction.ToString();
            }
            catch (Exception exc) { ALog.ToDB("教师ID获取错误:" + exc.Message); }
            return token;
        }
        /// <summary>
        /// 关闭程序
        /// </summary>
        private void dmButtonClose1_Click(object sender, System.EventArgs e)
        {
            //System.Environment.Exit(0);
            Application.Exit();
        }
        /// <summary>
        /// 退出态度表达软件
        /// </summary>
        private void ExitAttitude()
        {
            Process[] ps = Process.GetProcesses();
            foreach (Process item in ps)
            {
                if (item.ProcessName == "航天云态度表达")
                {
                    AeroEduLib.DosCommand.RunCmd("taskkill /f /pid " + item.Id);
                    ALog.ToDB("退出航天云态度表达");
                }
            }
        }
        /// <summary>
        /// 最小化
        /// </summary>
        private void dmButtonMin1_Click(object sender, System.EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }
        /// <summary>
        /// 远程观课页面
        /// </summary>
        private void btnYcgk_Click(object sender, EventArgs e)
        {
            browser.Load(config.LiveServer);
            ALog.ToDB("启动[远程观课]");
        }
        /// <summary>
        /// 返回首页
        /// </summary>
        private void btnHome_Click(object sender, EventArgs e)
        {
            browser.Load(config.HomePageUrl);
            ALog.ToDB("返回首页");
        }
        /// <summary>
        /// 名博优课
        /// </summary>
        private void btnMingBo_Click(object sender, EventArgs e)
        {
            string param = null;
            if (!string.IsNullOrEmpty(mingBoToken))
                param = "\"" + "UClass.URL://token$" + mingBoToken + "\"";
            else
                Log.ToFile("名博优课TOKEN为空");
            AppButtonClick(config.MingBoUClass, PathType.绝对路径, param);
        }
        /// <summary>
        /// 启动录播
        /// </summary>
        private void btnRecord_Click(object sender, EventArgs e)
        {
#if !DEBUG
            AppButtonClick(config.RecordPlayPath, PathType.相对路径, key);
#else
            Process.Start(@"C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Debug\Record Player.exe");
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
#if !DEBUG
            AppButtonClick(config.BoothCameraPath, PathType.相对路径, key);
#else
            Process.Start(@"C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Debug\Booth Camera.exe");
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
                //this.WindowState = FormWindowState.Minimized;
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
        private void plButtonList_MouseDown(object sender, MouseEventArgs e)
        {
            base.OnMouseDown(e);
            this.mousePoint.X = e.X;
            this.mousePoint.Y = e.Y;
        }

        private void plButtonList_MouseMove(object sender, MouseEventArgs e)
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

        private void plIcon_DoubleClick(object sender, EventArgs e)
        {
            frmSetting settingForm = new frmSetting();
            settingForm.ShowDialog();
        }

        private void btnCCLive_Click(object sender, EventArgs e)
        {
            try
            {
                Process.Start("chrome.exe", config.CCLiveServer);
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }

        private void frmMain_FormClosed(object sender, FormClosedEventArgs e)
        {
            // 退出态度表达软件
            if (config.UseAttitude)
                ExitAttitude();
            // 退出课联网
            ALog.ToDB("退出课联网主程序");
        }

        private void frmMain_Resize(object sender, EventArgs e)
        {
            if (this.WindowState == FormWindowState.Minimized)
            {
                if (frmdlfloat != null)
                {
                    frmdlfloat.InvokeOnUiThreadIfRequired(() => frmdlfloat.MinSize());
                }
                if (frmdlmain != null)
                    frmdlmain.InvokeOnUiThreadIfRequired(() => frmdlmain.Hide());
            }
            else
            {
                if (currentUrl.Contains(config.ResourcePage) && frmdlfloat != null)
                {
                    frmdlfloat.InvokeOnUiThreadIfRequired(() => frmdlfloat.NormalSize());
                }
            }
        }
    }
}