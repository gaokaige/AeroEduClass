using System.IO;
using System.Threading;

namespace 航天云态度表达.Lib
{
    /// <summary>
    /// 检测课联网是否开始使用学生答题
    /// 如果学生开始答题，生成状态文件，暂停态度表达软件
    /// 当结束答题，删除状态文件，态度表达恢复使用
    /// </summary>
    public class RunStatus
    {
        /// <summary>
        /// 状态文件地址
        /// </summary>
        string path;
        bool _paused;
        bool _isStopThread;
        public delegate void PauseFileExistHandler();
        /// <summary>
        /// 继续态度表达
        /// </summary>
        public event PauseFileExistHandler OnResume;
        /// <summary>
        /// 暂停态度表达
        /// </summary>
        public event PauseFileExistHandler OnPause;
        public RunStatus()
        {
            path = System.AppDomain.CurrentDomain.BaseDirectory + "Status\\pause.dat";
            _paused = false;
        }
        /// <summary>
        /// 开始监测
        /// </summary>
        public void StartListen()
        {
            _isStopThread = false;
            Thread th = new Thread(new ThreadStart(CheckFileExist));
            th.IsBackground = false;
            th.Start();
        }
        /// <summary>
        /// 停止监听
        /// </summary>
        public void StopListen()
        {
            _isStopThread = true;
        }
        /// <summary>
        /// 检测状态文件存在
        /// </summary>
        public void CheckFileExist()
        {
            while (!_isStopThread)
            {
                if (File.Exists(path))
                {
                    if (_paused != true)
                    {
                        OnPause();
                        _paused = true;
                    }
                }
                else
                {
                    if (_paused == true)
                    {
                        OnResume();
                        _paused = false;
                    }
                }

                Thread.Sleep(500);
            }
        }
    }
}
