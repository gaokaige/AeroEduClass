using System.Windows.Forms;

namespace lubo2012.Gui
{
    public partial class frmWating : Form
    {
        int i;
        public frmWating()
        {
            InitializeComponent();
        }

        private void frmWating_Load(object sender, System.EventArgs e)
        {
            i = 0;
            timer1.Interval = 1000;//毫秒
            timer1.Start();
        }

        private void timer1_Tick(object sender, System.EventArgs e)
        {
            i++;
            if (i <= 7)
                label1.Text = label1.Text + ".";
            else
            {
                label1.Text = "分析完毕开始录制";
                this.Refresh();
                System.Threading.Thread.Sleep(1000);
                timer1.Stop();
                this.Close();
            }
        }
    }
}
