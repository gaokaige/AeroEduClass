using System;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;
using 航天云态度表达.Lib;

namespace 航天云态度表达.UserControls
{
    public partial class RealTimeCharPie : UserControl
    {
        #region Field
        const int LineWidth = 5;
        bool _rotate = false;

        public bool Rotate
        {
            set { _rotate = value; }
        }
        #endregion
        
        public RealTimeCharPie()
        {
            InitializeComponent();
            Start();
        }

        private void RealTimeCharPie_Load(object sender, EventArgs e)
        {
            timer1.Start();
        }

        public void Start()
        {
            chart1.Series.Clear();

            Series seriesPraise = new Series("Default");
            seriesPraise.ChartType = SeriesChartType.Pie;
            // 添加了个小样式，居然不是枚举类型；
            seriesPraise["PieDrawingStyle"] = "SoftEdge";//Default 、SoftEdge、Concave三选一
            seriesPraise.IsValueShownAsLabel = true;// 显示数据
            seriesPraise.Font = new System.Drawing.Font("Microsoft Sans Serif", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            chart1.Series.Add(seriesPraise);
        }

        public void AddData(AttitudeData data)
        {
            chart1.ResetAutoValues();
            int[] yValues = { data.PraiseCount, data.ObjectCount, data.PuzzleCount, data.BoringCount };
            string[] xValues = { "点赞", "反对", "无聊", "困扰"};
            chart1.Series["Default"].Points.DataBindXY(xValues, yValues);	
            chart1.Invalidate();
        }

        private int angle = 0;
        private void ChartRotate()
        {
            if (_rotate)
            {
                angle += 2;// 每次转动角度
                if (angle >= 360)
                {
                    angle = 0;
                }
                chart1.Series["Default"]["PieStartAngle"] = angle.ToString();
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            ChartRotate();
        }
    }
}
