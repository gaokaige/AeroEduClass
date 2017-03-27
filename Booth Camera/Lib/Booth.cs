using System;
using System.Runtime.InteropServices;

namespace AeroEduClass.Lib
{
    public class Booth
    {
        /// <summary>
        /// 初始化 必须第一步调用
        /// </summary>
        /// <param name="main">主窗体</param>
        /// <param name="p1">视频1预览窗口</param>
        /// <returns></returns>
        [DllImport("booth.dll", EntryPoint = "fnInit")]
        public static extern bool fnInit(IntPtr main, IntPtr p1);
        /// <summary>
        /// 设置保存路径
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        [DllImport("booth.dll", EntryPoint = "fnSetPath")]
        public static extern bool fnSetPath(string path);
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [DllImport("booth.dll", EntryPoint = "fnStartRecord")]
        public static extern bool fnStartRecord();
        /// <summary>
        /// 停止录制
        /// </summary>
        /// <returns></returns>
        [DllImport("booth.dll", EntryPoint = "fnStopRecord")]
        public static extern bool fnStopRecord();
        /// <summary>
        /// 抓图
        /// </summary>
        /// <returns></returns>
        [DllImport("booth.dll", EntryPoint = "fnCatchPic")]
        public static extern bool fnCatchPic(string picPath);
        /// <summary>
        /// 变倍 大
        /// </summary>
        /// <returns></returns>
        [DllImport("booth.dll", EntryPoint = "fnZoomIn")]
        public static extern bool fnZoomIn(int step);
        /// <summary>
        ///  变倍 小
        /// </summary>
        /// <returns></returns>
        [DllImport("booth.dll", EntryPoint = "fnZoomOut")]
        public static extern bool fnZoomOut(int step);
        /// <summary>
        /// 变焦 -
        /// </summary>
        /// <returns></returns>
        [DllImport("booth.dll", EntryPoint = "fnFocusNear")]
        public static extern bool fnFocusNear();
        /// <summary>
        /// 变焦 +
        /// </summary>
        /// <returns></returns>
        [DllImport("booth.dll", EntryPoint = "fnFocusFar")]
        public static extern bool fnFocusFar();
        /// <summary>
        /// 光圈 开
        /// </summary>
        /// <returns></returns>
        [DllImport("booth.dll", EntryPoint = "fnIrisOpen")]
        public static extern bool fnIrisOpen();
        /// <summary>
        /// 光圈 关
        /// </summary>
        /// <returns></returns>
        [DllImport("booth.dll", EntryPoint = "fnIrisClose")]
        public static extern bool fnIrisClose();
        /// <summary>
        /// 画面暂停
        /// </summary>
        [DllImport("booth.dll", EntryPoint = "fnOnLButtonDown")]
        public static extern void fnOnLButtonDown();
        /// <summary>
        /// 局部放大 放大时需要先画面暂停（调用fnOnRButtonDown）
        /// </summary>
        /// <param name="x1"></param>
        /// <param name="y1"></param>
        /// <param name="x2"></param>
        /// <param name="y2"></param>
        [DllImport("booth.dll", EntryPoint = "fnOnLButtonUp")]
        public static extern void fnOnLButtonUp(int x1, int y1, int x2, int y2);
        /// <summary>
        /// 放大恢复
        /// </summary>
        [DllImport("booth.dll", EntryPoint = "fnOnRButtonDown")]
        public static extern void fnOnRButtonDown();
    }
}
