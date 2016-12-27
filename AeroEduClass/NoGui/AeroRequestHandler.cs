using AeroEduClass.Gui;
using CefSharp;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;

namespace AeroEduClass.NoGui
{
    public class AeroRequestHandler : IRequestHandler
    {
        const string token = @"aero://";
        const string loginFlag = "Login";
        const string logoutFlag = "Logout";
        const string offlineFlag = "Offline";
        const string openFlag = "FileOpen";
        const string openIactive = "OpenActive";
        const string startQAFlag = "StartQA";
        const string endQAFlag = "EndQA";
        // 委托 + 事件
        public delegate void ActionEventHandler(string jsonMsg);
        public event ActionEventHandler OnLogin;
        public event ActionEventHandler OnLogout;
        public event ActionEventHandler OnOffline;
        public event ActionEventHandler OnOpenFile;
        public event ActionEventHandler OnStartMeeting;
        public event ActionEventHandler OnStartQA;
        public event ActionEventHandler OnEndQA;
        bool IRequestHandler.OnBeforeBrowse(IWebBrowser browserControl, IBrowser browser, IFrame frame, IRequest request, bool isRedirect)
        {
            string action = string.Empty;
            JObject jo = null; JToken jtAction, jtFilePath, jUrl;

            if (request.Url.IndexOf(token) == 0)
            {
                string jsonStr = request.Url.Replace(token, "");
                if (!string.IsNullOrEmpty(jsonStr))
                {
                    jo = (JObject)JsonConvert.DeserializeObject(jsonStr);
                    if (jo.TryGetValue("serverName", out jtAction))
                        action = jtAction.ToString();
                }
                switch (action)
                {
                    case loginFlag:
                        OnLogin(jsonStr);
                        return true;
                    case logoutFlag:
                        OnLogout(jsonStr);
                        return true;
                    case offlineFlag:
                        OnOffline(jsonStr);
                        return true;
                    case openFlag:
                        if (jo.TryGetValue("filePath", out jtFilePath))
                        {
                            string filePaht = System.Web.HttpUtility.UrlDecode(jtFilePath.ToString());
                            OnOpenFile(filePaht);
                        }
                        return true;
                    case openIactive:
                        jo = (JObject)JsonConvert.DeserializeObject(jsonStr);
                        if (jo.TryGetValue("Url", out jUrl))
                            OnStartMeeting(jUrl.ToString());
                        return true;
                    case startQAFlag:
                        OnStartQA(jsonStr);
                        return true;
                    case endQAFlag:
                        OnEndQA(jsonStr);
                        return true;
                }
                //if (action == loginFlag)
                //{
                //    OnLogin(jsonStr);
                //    return true;
                //}
                //else if (action == logoutFlag)
                //{
                //    OnLogout(jsonStr);
                //    return true;
                //}
                //else if (action == offlineFlag)
                //{
                //    OnOffline(jsonStr);
                //    return true;
                //}
                //else if (action == openFlag)
                //{
                //    if (jo.TryGetValue("filePath", out jtFilePath))
                //    {
                //        string filePaht = System.Web.HttpUtility.UrlDecode(jtFilePath.ToString());
                //        OnOpenFile(filePaht);
                //    }
                //    return true;
                //}
                //else if (action == openIactive)
                //{
                //    jo = (JObject)JsonConvert.DeserializeObject(jsonStr);
                //    if (jo.TryGetValue("Url", out jUrl))
                //        OnStartMeeting(jUrl.ToString());
                //    return true;
                //}
            }
            return false;
        }

        bool IRequestHandler.OnOpenUrlFromTab(IWebBrowser browserControl, IBrowser browser, IFrame frame, string targetUrl, WindowOpenDisposition targetDisposition, bool userGesture)
        {
            return OnOpenUrlFromTab(browserControl, browser, frame, targetUrl, targetDisposition, userGesture);
        }

        protected virtual bool OnOpenUrlFromTab(IWebBrowser browserControl, IBrowser browser, IFrame frame, string targetUrl, WindowOpenDisposition targetDisposition, bool userGesture)
        {
            return false;
        }

        bool IRequestHandler.OnCertificateError(IWebBrowser browserControl, IBrowser browser, CefErrorCode errorCode, string requestUrl, ISslInfo sslInfo, IRequestCallback callback)
        {
            //NOTE: If you do not wish to implement this method returning false is the default behaviour
            // We also suggest you explicitly Dispose of the callback as it wraps an unmanaged resource.
            //callback.Dispose();
            //return false;

            //NOTE: When executing the callback in an async fashion need to check to see if it's disposed
            if (!callback.IsDisposed)
            {
                using (callback)
                {
                    //To allow certificate
                    //callback.Continue(true);
                    //return true;
                }
            }

            return false;
        }

        void IRequestHandler.OnPluginCrashed(IWebBrowser browserControl, IBrowser browser, string pluginPath)
        {
            // TODO: Add your own code here for handling scenarios where a plugin crashed, for one reason or another.
        }

        CefReturnValue IRequestHandler.OnBeforeResourceLoad(IWebBrowser browserControl, IBrowser browser, IFrame frame, IRequest request, IRequestCallback callback)
        {


            return CefReturnValue.Continue;
        }

        bool IRequestHandler.GetAuthCredentials(IWebBrowser browserControl, IBrowser browser, IFrame frame, bool isProxy, string host, int port, string realm, string scheme, IAuthCallback callback)
        {
            //NOTE: If you do not wish to implement this method returning false is the default behaviour
            // We also suggest you explicitly Dispose of the callback as it wraps an unmanaged resource.

            callback.Dispose();
            return false;
        }

        void IRequestHandler.OnRenderProcessTerminated(IWebBrowser browserControl, IBrowser browser, CefTerminationStatus status)
        {
            // TODO: Add your own code here for handling scenarios where the Render Process terminated for one reason or another.
            //browserControl.Load(CefExample.RenderProcessCrashedUrl);
        }

        bool IRequestHandler.OnQuotaRequest(IWebBrowser browserControl, IBrowser browser, string originUrl, long newSize, IRequestCallback callback)
        {
            //NOTE: If you do not wish to implement this method returning false is the default behaviour
            // We also suggest you explicitly Dispose of the callback as it wraps an unmanaged resource.
            //callback.Dispose();
            //return false;

            //NOTE: When executing the callback in an async fashion need to check to see if it's disposed
            if (!callback.IsDisposed)
            {
                using (callback)
                {
                    //Accept Request to raise Quota
                    //callback.Continue(true);
                    //return true;
                }
            }

            return false;
        }

        void IRequestHandler.OnResourceRedirect(IWebBrowser browserControl, IBrowser browser, IFrame frame, IRequest request, ref string newUrl)
        {
            //Example of how to redirect - need to check `newUrl` in the second pass
            //if (string.Equals(frame.GetUrl(), "https://www.google.com/", StringComparison.OrdinalIgnoreCase) && !newUrl.Contains("github"))
            //{
            //    newUrl = "https://github.com";
            //}
        }

        bool IRequestHandler.OnProtocolExecution(IWebBrowser browserControl, IBrowser browser, string url)
        {
            return false;
        }

        void IRequestHandler.OnRenderViewReady(IWebBrowser browserControl, IBrowser browser)
        {

        }

        bool IRequestHandler.OnResourceResponse(IWebBrowser browserControl, IBrowser browser, IFrame frame, IRequest request, IResponse response)
        {
            //NOTE: You cannot modify the response, only the request
            // You can now access the headers
            //var headers = response.ResponseHeaders;

            return false;
        }

        //IResponseFilter IRequestHandler.GetResourceResponseFilter(IWebBrowser browserControl, IBrowser browser, IFrame frame, IRequest request, IResponse response)
        //{
        //    var url = new Uri(request.Url);
        //    if (url.Scheme == CefSharpSchemeHandlerFactory.SchemeName)
        //    {
        //        if (request.Url.Equals(CefExample.ResponseFilterTestUrl, StringComparison.OrdinalIgnoreCase))
        //        {
        //            return new FindReplaceResponseFilter("REPLACE_THIS_STRING", "This is the replaced string!");
        //        }

        //        if (request.Url.Equals("custom://cefsharp/assets/js/application.js", StringComparison.OrdinalIgnoreCase))
        //        {
        //            return new AppendResponseFilter(System.Environment.NewLine + "//CefSharp Appended this comment.");
        //        }

        //        return new PassThruResponseFilter();
        //    }

        //    return null;
        //}

        void IRequestHandler.OnResourceLoadComplete(IWebBrowser browserControl, IBrowser browser, IFrame frame, IRequest request, IResponse response, UrlRequestStatus status, long receivedContentLength)
        {

        }
    }
}
