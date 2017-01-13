using AeroEduClass.Lib;
using AeroEduClass.Properties;
using AeroEduLib;
using System;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Threading;
using System.Windows.Forms;

namespace AeroEduClass.UI
{
    public partial class frmDLMain : Form
    {
        delegate void NewProcessHandler(string id, string fileName);
        delegate void DownloadUpdateHandler(string id, string progress, string speed);
        event DownloadUpdateHandler OnDownloadUpdate;
        delegate void DownloadComplete(string id);
        event DownloadComplete OnDlComplete;

        frmDownloadLib lib = new frmDownloadLib();
        int top = 50;


        public frmDLMain()
        {
            InitializeComponent();
            tabControl1.ItemSize = new Size(100,20);

            this.OnDownloadUpdate += Form1_OnDownloadUpdate;
            this.OnDlComplete += frmDownload_OnDlComplete;
            dgvDLing.LostFocus += dgv_LostFocus;
            // 创建相应的表(如果不存在)
            lib.IfNotExistCreateTable("userdl");

            dgv_LostFocus(null, null);
        }

        private void frmDownload_Load(object sender, EventArgs e)
        {
            // load top 50 lines
            LoadCompleteItem();
            GetTaskCount();
            this.Location = new Point(720, 70);
        }

        private void LoadCompleteItem()
        {
            System.Data.DataSet ds = lib.LoadTopLines(top);
            foreach (System.Data.DataRow row in ds.Tables[0].Rows)
            {
                dgvComplete.Rows.Add(
                    row["id"].ToString()
                    , PickImage(row["name"].ToString())
                    , row["name"].ToString()
                    , row["path"].ToString());
            }
        }

        public void CreatDownload(string url, string saveFileName)
        {
            string id = Guid.NewGuid().ToString();
            Thread thr = new Thread(new ThreadStart(delegate { NewProcess(id, url, saveFileName); }));
            thr.IsBackground = false;
            thr.Start();
        }

        private void NewProcess(string id, string url, string saveFileName)
        {
            AddNewRow(id, saveFileName);
            DownloadStart(id, url, saveFileName);
        }

        private void AddNewRow(string id, string saveFileName)
        {
            if (this.InvokeRequired)
            {
                this.Invoke(new NewProcessHandler(AddNewRow), new object[] { id, saveFileName });
            }
            else
            {
                string showName = saveFileName.Substring(saveFileName.LastIndexOf("\\") + 1, saveFileName.Length - saveFileName.LastIndexOf("\\") - 1);
                dgvDLing.Rows.Add(id, PickImage(saveFileName), showName, saveFileName, "0", "");
                dgvDLing.ClearSelection();
                GetTaskCount();
            }
        }

        private void DownloadStart(string id, string url, string saveFileName)
        {
            DateTime t1, t2;
            string progress, speed;
            Stream stream = null;
            FileStream fs = null;
            try
            {
                System.Net.HttpWebRequest Myrq = (System.Net.HttpWebRequest)System.Net.HttpWebRequest.Create(url);
                System.Net.HttpWebResponse myrp = (System.Net.HttpWebResponse)Myrq.GetResponse();
                long totalBytes = myrp.ContentLength;

                stream = myrp.GetResponseStream();
                fs = new System.IO.FileStream(saveFileName, System.IO.FileMode.Create);
                long totalDownloadedByte = 0;
                byte[] buffer = new byte[1024];
                int readL = stream.Read(buffer, 0, (int)buffer.Length);
                // 循环100次报一次进度吧
                int times = 0;
                t1 = DateTime.Now;
                while (readL > 0)
                {
                    totalDownloadedByte = readL + totalDownloadedByte;
                    fs.Write(buffer, 0, readL);
                    readL = stream.Read(buffer, 0, (int)buffer.Length);
                    if (times >= 100 && times % 100 == 0)
                    {
                        t2 = DateTime.Now;
                        progress = (totalDownloadedByte * 100 / totalBytes).ToString();
                        speed = Math.Round(0.001 * totalDownloadedByte / (t2 - t1).TotalSeconds, 0).ToString();
                        OnDownloadUpdate(id, progress, speed);
                    }

                    times++;
                }
                if (totalDownloadedByte == totalBytes)
                {
                    OnDownloadUpdate(id, "100", "");
                    OnDlComplete(id);
                }

            }
            catch (Exception exc)
            {
                Log.ToFile("下载失败:" + exc);
            }
            finally
            {
                if (stream != null) stream.Close();
                if (fs != null) fs.Close();
            }
        }

        private void Form1_OnDownloadUpdate(string id, string progress, string speed)
        {
            if (this.InvokeRequired)
            {
                this.Invoke(new DownloadUpdateHandler(Form1_OnDownloadUpdate), new object[] { id, progress, speed });
            }
            else
            {
                foreach (DataGridViewRow row in dgvDLing.Rows)
                {
                    if (row.Cells[0].Value.ToString() == id)
                    {
                        row.Cells[4].Value = progress + "%";
                        row.Cells[5].Value = speed + "K/s";
                    }
                }
            }
        }

        private void frmDownload_OnDlComplete(string id)
        {
            // 移动到已完成列表
            if (this.InvokeRequired)
            {
                this.Invoke(new DownloadComplete(frmDownload_OnDlComplete), new object[] { id });
            }
            else
            {
                DoComplete(id);
                GetTaskCount();
            }
        }

        private Bitmap PickImage(string fileName)
        {
            Bitmap bitmap = null;
            string extendsName = fileName.Substring(fileName.LastIndexOf(".") + 1, fileName.Length - fileName.LastIndexOf(".") - 1).ToLower();
            switch (extendsName)
            {
                case "exe":
                    bitmap = Resources.exe;
                    break;
                case "mp4":
                    bitmap = Resources.MP4;
                    break;
                case "doc":
                    bitmap = Resources.doc;
                    break;
                case "img":
                case "png":
                    bitmap = Resources.img;
                    break;
                case "jpg":
                    bitmap = Resources.jpg;
                    break;
                case "pdf":
                    bitmap = Resources.pdf;
                    break;
                case "rar":
                    bitmap = Resources.rar;
                    break;
                case "ppt":
                    bitmap = Resources.ppt;
                    break;
                default:
                    bitmap = Resources.other;
                    break;
            }
            return bitmap;
        }

        private void dgv_LostFocus(object sender, EventArgs e)
        {
            dgvDLing.ClearSelection();
            dgvComplete.ClearSelection();
        }
        /// <summary>
        /// 统计下载项目数
        /// </summary>
        private void GetTaskCount()
        {
            int dlingCount = dgvDLing.Rows.Count;
            tabPage1.Text = string.Format("正在下载（{0}）", dlingCount);

            int dlCpCount = dgvComplete.Rows.Count;
            tabPage2.Text = string.Format("已完成下载（{0}）", dlCpCount);
        }

        private void DoComplete(string id)
        {
            foreach (DataGridViewRow row in dgvDLing.Rows)
            {
                if (row.Cells["clID"].Value.ToString() == id)
                {
                    dgvComplete.Rows.Add(id, row.Cells["clImage"].Value, row.Cells["clName"].Value, row.Cells["clPath"].Value);
                    // insert postgresql
                    lib.SaveCompleteItems(row);
                    // delete row from dgvling
                    dgvDLing.Rows.Remove(row);
                }
            }

        }

        private void frmDownload_FormClosed(object sender, FormClosedEventArgs e)
        {
            // 停止其他下载的线程
            Process.GetCurrentProcess().Kill();
        }

        private void dgvDLing_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex != 6)
                return;
            try
            {

            }
            catch
            {

            }
        }

        private void dgvComplete_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex != 4)
                return;
            try
            {
                string path = dgvComplete.Rows[e.RowIndex].Cells["clPath_c"].Value.ToString();
                string dir = Path.GetDirectoryName(path);
                System.Diagnostics.Process.Start("Explorer.exe", dir);
            }
            catch
            {
                MessageBox.Show("文件夹不存在");
            }
        }

    }
}