using System;
using System.Runtime.InteropServices;

namespace lubo2012.Lib
{
    public class Record
    {
        /// <summary>
        /// 初始化 必须第一步调用
        /// </summary>
        /// <param name="main">主窗体</param>
        /// <param name="p1">视频1预览窗口</param>
        /// <param name="p2">视频2预览窗口</param>
        /// <returns></returns>
        [DllImport("record.dll", EntryPoint = "InitRecorder")]
        public static extern bool InitRecorder(IntPtr main, IntPtr p1, IntPtr p2);
        /// <summary>
        /// 获取通道数量
        /// </summary>
        /// <returns></returns>
        [DllImport("record.dll", EntryPoint = "GetChannelNum")]
        public static extern int GetChannelNum();
        /// <summary>
        /// 开始录制
        /// </summary>
        [DllImport("record.dll", EntryPoint = "StartRecord")]
        public static extern void StartRecord();
        /// <summary>
        /// 暂停录制
        /// </summary>
        [DllImport("record.dll", EntryPoint = "PauseRecord")]
        public static extern void PauseRecord();
        /// <summary>
        /// 停止录制
        /// </summary>
        [DllImport("record.dll", EntryPoint = "StopRecord")]
        public static extern void StopRecord();
        /// <summary>
        /// 预览课件,预览当前课件
        /// </summary>
        [DllImport("record.dll", EntryPoint = "PreviewCourse")]
        public static extern void PreviewCourse();
        /// <summary>
        /// 获取视频设备获取视频设备名称
        /// </summary>
        /// <param name="index">视频设备的索引,为0,1,2…</param>
        /// <param name="name">用于保存名称的参数</param>
        [DllImport("record.dll", EntryPoint = "GetVideoDevice")]
        public static extern int GetVideoDevice(int index, string name);
        /// <summary>
        /// 获取音频设备
        /// </summary>
        /// <param name="index">音频设备的索引,为0,1,2…</param>
        /// <param name="name">用于保存名称的参数</param>
        /// <returns></returns>
        [DllImport("record.dll", EntryPoint = "GetAudioDevice")]
        public static extern int GetAudioDevice(int index, string name);
        /// <summary>
        /// 打开设备的设置页面
        /// </summary>
        /// <param name="index">视频设备索引,为0,1,2,3…</param>
        /// <returns></returns>
        [DllImport("record.dll", EntryPoint = "ShowVideoPropertyPage")]
        public static extern void ShowVideoPropertyPage(int index);
        /// <summary>
        /// 打开音频设置页面 
        /// </summary>
        /// <param name="index">音频设备索引,为0,1,2,3…</param>
        [DllImport("record.dll", EntryPoint = "ShowAudioPropertyPage")]
        public static extern void ShowAudioPropertyPage(int index);
        /// <summary>
        /// 打开视频设备流设置
        /// </summary>
        /// <param name="index">视频设备索引,为0,1,2,3…</param>
        /// <returns></returns>
        [DllImport("record.dll", EntryPoint = "ShowVideoStreamPropertyPage")]
        public static extern int ShowVideoStreamPropertyPage(int index);
        /// <summary>
        /// 获取当前工程目录
        /// </summary>
        /// <param name="path">保存目录的字符串指针</param>
        [DllImport("record.dll", EntryPoint = "GetProjectPath")]
        public static extern void GetProjectPath(string path);
        /// <summary>
        /// 设置录制工程保存目录。工程目录必须存在,录制课件时课件目录将保存在工程目录中并以 年-月-日 时-分-秒 来命名
        /// </summary>
        /// <param name="path"></param>
        [DllImport("record.dll", EntryPoint = "SetProjectPath")]
        public static extern void SetProjectPath(string path);
        /// <summary>
        /// 获取课件名称
        /// </summary>
        /// <param name="name">保存课件名称的字符串指针</param>
        [DllImport("record.dll", EntryPoint = "GetCourseName")]
        public static extern void GetCourseName(string name);
        /// <summary>
        /// 设置屏幕录制FPS
        /// </summary>
        /// <param name="fps"></param>
        [DllImport("record.dll", EntryPoint = "SetScreenFPS")]
        public static extern void SetScreenFPS(int fps);
        /// <summary>
        /// 获取屏幕录制的FPS
        /// </summary>
        /// <returns>屏幕录制的FPS</returns>
        [DllImport("record.dll", EntryPoint = "GetScreenFPS")]
        public static extern int GetScreenFPS();
        /// <summary>
        /// 设置是否捕捉屏幕
        /// </summary>
        /// <param name="isScreenCapture">true or fasle</param>
        [DllImport("record.dll", EntryPoint = "SetIsScreenCapture")]
        public static extern void SetIsScreenCapture(bool isScreenCapture);
        /// <summary>
        /// 获取是否捕捉屏幕
        /// </summary>
        /// <returns></returns>
        [DllImport("record.dll", EntryPoint = "GetIsScreenCapture")]
        public static extern bool GetIsScreenCapture();
        /// <summary>
        /// 设置视频质量,质量总共3级,LEVEL为1,2,3,
        /// 1级质量最差,文件最小(默认为1级)
        /// 2级质量适中,文件适中
        /// 3级质量最好,文件最大
        /// </summary>
        /// <param name="index">视频设备索引,为0,1,2,3…</param>
        /// <param name="quality">视频质量</param>
        /// <returns></returns>
        [DllImport("record.dll", EntryPoint = "SetVideoQuality")]
        public static extern bool SetVideoQuality(int index, int quality);
        /// <summary>
        /// 获取视频质量,返回值为视频质量
        /// </summary>
        /// <param name="index">视频设备索引,为0,1,2,3…</param>
        /// <returns></returns>
        [DllImport("record.dll", EntryPoint = "GetVideoQuality")]
        public static extern int GetVideoQuality(int index);
        /// <summary>
        /// 完成设置
        /// </summary>
        /// <param name="title">题目</param>
        /// <param name="speaker">演讲者</param>
        /// <param name="path">保存目录</param>
        /// <param name="time"></param>
        /// <param name="desc">描述信息</param>
        [DllImport("record.dll", EntryPoint = "FinishInfo")]
        public static extern void FinishInfo(string title, string speaker, string path, string time, string desc);
        /// <summary>
        /// 设置视频设备
        /// </summary>
        /// <param name="index"></param>
        /// <param name="vdevindex"></param>
        /// <returns></returns>
        [DllImport("record.dll", EntryPoint = "SetVideoDevice")]
        public static extern int SetVideoDevice(int index, int vdevindex);
        /// <summary>
        /// 设置音频设备
        /// </summary>
        /// <param name="index"></param>
        /// <param name="adevindex"></param>
        /// <returns></returns>
        [DllImport("record.dll", EntryPoint = "SetAudioDevice")]
        public static extern int SetAudioDevice(int index, int adevindex);
        /// <summary>
        /// 获取通道设备
        /// </summary>
        /// <param name="channelIndex"></param>
        /// <param name="videoDevice"></param>
        /// <param name="audioDevice"></param>
        /// <returns></returns>
        [DllImport("record.dll", EntryPoint = "GetChannelDevice")]
        public static extern int GetChannelDevice(int channelIndex, int videoDevice, int audioDevice);
        /// <summary>
        /// 背光补偿
        /// </summary>
        /// <param name="index">摄像头编号0,1,2...</param>
        /// <param name="state">开/关</param>
        /// <returns></returns>
        [DllImport("record.dll", EntryPoint = "SetBLC")]
        public static extern int SetBLC(int index, bool state);
    }
}
