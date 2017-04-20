using System;
using System.Runtime.InteropServices;

namespace AeroEduClass.Lib
{
    public class Booth
    {
        /// <summary>
        /// 初始化 必须第一步调用
        /// </summary>
        /// <param name="ip">摄像机ip</param>
        /// <returns></returns>
        [DllImport("booth.dll", EntryPoint = "fnInit")]
        public static extern void fnInit(string ip);
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
    }
}
