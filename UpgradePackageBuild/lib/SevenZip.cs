using SevenZip;
using System;
using System.Collections.Generic;

namespace UpgradePackageBuild.lib
{
    public class SevenZipLib
    {
        public static void SevenZipFiles(string zipFileName, Dictionary<string, string> files)
        {
            string dllPath = string.Empty;
            if (Environment.Is64BitOperatingSystem)
                dllPath = System.AppDomain.CurrentDomain.BaseDirectory + "7z64.dll";
            else
                dllPath = System.AppDomain.CurrentDomain.BaseDirectory + "7z.dll";

            SevenZipExtractor.SetLibraryPath(dllPath);
            SevenZipCompressor tmp = new SevenZipCompressor();
            tmp.ArchiveFormat = OutArchiveFormat.Zip; // 压缩成zip文件
            tmp.CompressionMethod = SevenZip.CompressionMethod.Lzma;
            tmp.CompressionMode = SevenZip.CompressionMode.Create;
            tmp.ZipEncryptionMethod = SevenZip.ZipEncryptionMethod.Aes256;
            //tmp.CompressFiles(@"d:\Temp\arch.7z", @"d:\Temp\log.txt");// 压缩文件


            try
            {
                tmp.CompressFileDictionary(files, zipFileName);
            }
            catch { }
        }

        public static void SevenZipFile(string zipFileName, string file)
        {
            string dllPath = string.Empty;
            if (Environment.Is64BitOperatingSystem)
                dllPath = System.AppDomain.CurrentDomain.BaseDirectory + "7z64.dll";
            else
                dllPath = System.AppDomain.CurrentDomain.BaseDirectory + "7z.dll";

            SevenZipExtractor.SetLibraryPath(dllPath);
            SevenZipCompressor tmp = new SevenZipCompressor();
            tmp.CompressionMethod = SevenZip.CompressionMethod.Lzma;
            tmp.CompressionMode = SevenZip.CompressionMode.Create;
            tmp.ZipEncryptionMethod = SevenZip.ZipEncryptionMethod.Aes256;
            //tmp.CompressFiles(@"d:\Temp\arch.7z", @"d:\Temp\log.txt");// 压缩文件
            //tmp.CompressDirectory(dirName, zipFileName);// 压缩目录
            try
            {
                tmp.CompressFiles(zipFileName, file);
            }
            catch { }
        }
    }
}
