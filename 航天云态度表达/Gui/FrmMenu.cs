using System;
using System.Drawing;
using System.Windows.Forms;
using 航天云态度表达.Properties;

namespace 航天云态度表达.Gui
{
    public partial class FrmMenu : Form
    {
        /// <summary>
        /// 正在评价教师
        /// </summary>
        public bool IsTeacherEvaluate = false;
        /// <summary>
        /// 正在评价学生
        /// </summary>
        public bool IsStudentEvaluate = false;

        FrmFloat frmFloat;
        FrmStudent frmStu;
        FrmTeacher frmTea;
        public FrmMenu(FrmFloat _frmFloat)
        {
            InitializeComponent();
            frmFloat = _frmFloat;
        }

        private void frmMenu_Load(object sender, EventArgs e)
        {
            frmStu = new FrmStudent(this);
            frmTea = new FrmTeacher(this);
        }
        /// <summary>
        /// 评价老师
        /// </summary>
        private void plS2T_Click(object sender, EventArgs e)
        {
            if (IsStudentEvaluate)
            {
                MessageBox.Show("正在进行学生评价");
                return;
            }

            if (frmTea.pause)
            {
                if (!IsTeacherEvaluate)
                {
                    MessageBox.Show("正在进行学生答题，不能使用该功能");
                    return;
                }
            }

            IsTeacherEvaluate = !IsTeacherEvaluate;
            if (IsTeacherEvaluate)
            {
                if (frmStu == null)
                    frmStu = new FrmStudent(this);
                frmTea.Start();
                //frmTea.Hide();
                plS2T.BackgroundImage = Resources.结束评价;
                frmFloat.TeacherStart();
            }
            else
            {
                frmTea.Stop();
                plS2T.BackgroundImage = Resources.开始评价;
                frmFloat.TeacherEnd();
            }
        }

        private void plSign_MouseDown(object sender, MouseEventArgs e)
        {
            plSign.BackgroundImage = Resources.标记_active;
        }

        private void plSign_MouseUp(object sender, MouseEventArgs e)
        {
            plSign.BackgroundImage = Resources.标记_static;
        }
        /// <summary>
        /// 开始评价学生
        /// </summary>
        private void plS2S_Click(object sender, EventArgs e)
        {
            if (IsTeacherEvaluate)
            {
                MessageBox.Show("正在进行教师评价");
                return;
            }
            if (frmStu.pause)
            {
                MessageBox.Show("正在进行学生答题，不能使用该功能");
                return;
            }

            IsStudentEvaluate = !IsStudentEvaluate;
            if (IsStudentEvaluate)
            {
                if (frmStu.IsDisposed)
                    frmStu = new FrmStudent(this);
                frmStu.Show();
                frmStu.Location = new Point((1024 - frmStu.Width )/2, (768 - this.Height) / 2);
                
                frmStu.Focus();
                plS2S.BackgroundImage = Resources.结束评价;
                frmFloat.StudentStart();
                plS2S.Enabled = false;
            }
        }
        /// <summary>
        /// 停止评价学生
        /// </summary>
        public void S2SStop()
        {
            plS2S.BackgroundImage = Resources.开始评价;

            frmFloat.StudentEnd();
            plS2S.Enabled = true;
            IsStudentEvaluate = false;
        }
        /// <summary>
        /// 标记
        /// </summary>
        private void plSign_Click(object sender, EventArgs e)
        {
            if (IsTeacherEvaluate)
                frmTea.DrawFlag();
        }
        /// <summary>
        /// 查看实时统计
        /// </summary>
        private void plReadTime_Click(object sender, EventArgs e)
        {
            if (IsTeacherEvaluate && frmFloat != null)
                frmTea.Show();
        }
    }
}
