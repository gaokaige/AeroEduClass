using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.Windows.Forms.DataVisualization.Charting;
using 航天云态度表达.Lib;
using 航天云态度表达.Properties;

namespace 航天云态度表达.UserControls
{
    /// <summary>
    /// Summary description for RealTimeSample.
    /// </summary>
    public class RealTimeChartLine : System.Windows.Forms.UserControl
    {
        #region Fields
        const int LineWidth = 5;
        // Chart data adding thread
        //private Thread addDataRunner;

        // Thread Add Data delegate
        public delegate void RefreshChartDelegate();
        public RefreshChartDelegate RefreshChartDel;

        // Chart control
        private System.Windows.Forms.DataVisualization.Charting.Chart chart1;

        // Form fields
        private DateTime minValue, maxValue;
        private Random rand = new Random();
        Pen pen;
        #endregion // Fields

        #region Construction and Disposing

        public RealTimeChartLine()
        {
            //
            // Required for Windows Form Designer support
            //
            InitializeComponent();
            //
            // TODO: Add any constructor code after InitializeComponent call
            //
            chart1.BorderSkin.SkinStyle = BorderSkinStyle.None;

            pen = new Pen(Color.Red, 1);
            pen.DashStyle = System.Drawing.Drawing2D.DashStyle.Custom;
            pen.DashPattern = new float[] { 5, 5 };// 标识虚线

            Start();
        }

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        //protected override void Dispose(bool disposing)
        //{
        //    if (disposing)
        //    {
        //        if (components != null)
        //        {
        //            components.Dispose();
        //        }
        //    }
        //    base.Dispose(disposing);
        //}

        #endregion // Construction and Disposing

        #region Form user event handlers

        /// <summary>
        /// Page load event handler.
        /// </summary>
        /// <param name="sender">Event sender.</param>
        /// <param name="e">Event arguments.</param>
        private void RealTimeSample_Load(object sender, System.EventArgs e)
        {
            //Start();
        }

        /// <summary>
        /// Start real time data simulator.
        /// </summary>
        /// <param name="sender">Event sender.</param>
        /// <param name="e">Event arguments.</param>
        //private void startTrending_Click(object sender, System.EventArgs e)
        public void Start()
        {
            // Predefine the viewing area of the chart
            minValue = DateTime.Now;
            maxValue = minValue.AddSeconds(30);

            chart1.ChartAreas[0].AxisX.Minimum = minValue.ToOADate();
            chart1.ChartAreas[0].AxisX.Maximum = maxValue.ToOADate();

            // Reset number of series in the chart.
            chart1.Series.Clear();

            Series seriesPraise = new Series("点赞");
            SetChartStyle(seriesPraise, Color.Purple);
            chart1.Series.Add(seriesPraise);

            Series objectSeries = new Series("反对");
            SetChartStyle(objectSeries, Color.Gray);
            chart1.Series.Add(objectSeries);

            Series puzzleSeries = new Series("困惑");
            SetChartStyle(puzzleSeries, Color.DarkGreen);
            chart1.Series.Add(puzzleSeries);

            Series boringSeries = new Series("无聊");
            SetChartStyle(boringSeries, Color.Orange);
            chart1.Series.Add(boringSeries);
        }

        /// <summary>
        /// Set style and color of the Series 
        /// </summary>
        /// <param name="series"></param>
        /// <param name="color"></param>
        private void SetChartStyle(Series series, Color color)
        {
            series.ChartType = SeriesChartType.Line;
            series.BorderWidth = LineWidth;
            series.Color = color;
            series.ShadowOffset = 0;
            series.XValueType = ChartValueType.DateTime;
        }

        /// <summary>
        /// Stop real time data simulator.
        /// </summary>
        /// <param name="sender">Event sender.</param>
        /// <param name="e">Event arguments.</param>
        public void Stop()
        {
            
        }

        #endregion

        #region Add new data thread

        /// <summary>
        /// The AddNewPoint function is called for each series in the chart when
        /// new points need to be added.  The new point will be placed at specified
        /// X axis (Date/Time) position with a Y value in a range +/- 1 from the previous
        /// data point's Y value, and not smaller than zero.
        /// </summary>
        /// <param name="timeStamp"></param>
        /// <param name="ptSeries"></param>
        public void AddData(AttitudeData data)
        {
            chart1.ResetAutoValues();

            DateTime timeStamp = DateTime.Now;
            // Add new data point to its series.
            chart1.Series["点赞"].Points.AddXY(timeStamp.ToOADate(), data.PraiseCount);
            chart1.Series["反对"].Points.AddXY(timeStamp.ToOADate(), data.ObjectCount);
            chart1.Series["无聊"].Points.AddXY(timeStamp.ToOADate(), data.BoringCount);
            chart1.Series["困惑"].Points.AddXY(timeStamp.ToOADate(), data.PuzzleCount);

            // remove all points from the source series older than 20 seconds.
            double removeBefore = timeStamp.AddSeconds((double)(20) * (-1)).ToOADate();

            chart1.ChartAreas[0].AxisX.Minimum = chart1.Series["点赞"].Points[0].XValue;
            //chart1.ChartAreas[0].AxisX.Maximum = DateTime.FromOADate(chart1.Series["点赞"].Points[0].XValue).AddSeconds(30).ToOADate();
            chart1.ChartAreas[0].AxisX.Maximum = DateTime.Now.AddSeconds(30).ToOADate();
            chart1.ChartAreas[0].AxisY.Maximum = (double)data.Max() + 10D;

            chart1.Invalidate();
        }

        List<DataPoint> flags = new List<DataPoint>();
        public void DrawFlag()
        {
            DataPoint dataPoint = chart1.Series["点赞"].Points[chart1.Series["点赞"].Points.Count - 1];
            flags.Add(dataPoint);
        }

        private void chart1_PostPaint(object sender, ChartPaintEventArgs e)
        {
            PointF point1, point2;
            // Painting series object
            if (e.ChartElement is System.Windows.Forms.DataVisualization.Charting.Series)
            {
                // Add custom painting only to the series with name "Sereis2"
                Series series = (Series)e.ChartElement;
                if (series.Name == "点赞")
                {
                    // Find data point with maximum Y value
                    //DataPoint dataPoint = series.Points.FindMaxByValue();
                    foreach (DataPoint dataPoint in flags)
                    {
                        // Load bitmap from file 
                        //System.Drawing.Image bitmap = Resources.标记;//Bitmap.FromFile(fileNameString);

                        // Set Red color as transparent
                        ImageAttributes attrib = new ImageAttributes();
                        attrib.SetColorKey(Color.Red, Color.Red, ColorAdjustType.Default);

                        // Calculates marker position depending on the data point X and Y values
                        RectangleF imagePosition = RectangleF.Empty;

                        //imagePosition.X = (float)e.ChartGraphics.GetPositionFromAxis(
                        //    "Default", AxisName.X, dataPoint.XValue);
                        imagePosition.X = (float)e.ChartGraphics.GetPositionFromAxis(
                            "Default", AxisName.X, dataPoint.XValue);
                        imagePosition.Y = (float)e.ChartGraphics.GetPositionFromAxis(
                            "Default", AxisName.Y, dataPoint.YValues[0]);
                        imagePosition = e.ChartGraphics.GetAbsoluteRectangle(imagePosition);
                        imagePosition.Y = chart1.Location.Y + 30F;
                        imagePosition.Width = Resources.标记.Width;
                        imagePosition.Height = Resources.标记.Height;

                        point1 = imagePosition.Location;
                        point2 = new PointF(imagePosition.X, imagePosition.Y + 330);

                        imagePosition.Y -= Resources.标记.Height;
                        imagePosition.X -= Resources.标记.Width / 2;

                        // Draw image
                        e.ChartGraphics.Graphics.DrawImage(Resources.标记,
                            Rectangle.Round(imagePosition),
                            0, 0, Resources.标记.Width, Resources.标记.Height,
                            GraphicsUnit.Pixel,
                            attrib);
                        // Draw Line
                        e.ChartGraphics.Graphics.DrawLine(pen, point1, point2);
                        // Dispose image object
                        //bitmap.Dispose();
                    }
                }
            }
        }

        #endregion

        #region Windows Form Designer generated code
        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.chart1 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).BeginInit();
            this.SuspendLayout();
            // 
            // chart1
            // 
            this.chart1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(211)))), ((int)(((byte)(223)))), ((int)(((byte)(240)))));
            this.chart1.BackGradientStyle = System.Windows.Forms.DataVisualization.Charting.GradientStyle.TopBottom;
            this.chart1.BackSecondaryColor = System.Drawing.Color.White;
            this.chart1.BorderlineColor = System.Drawing.Color.FromArgb(((int)(((byte)(26)))), ((int)(((byte)(59)))), ((int)(((byte)(105)))));
            this.chart1.BorderlineDashStyle = System.Windows.Forms.DataVisualization.Charting.ChartDashStyle.Solid;
            this.chart1.BorderlineWidth = 2;
            chartArea1.Area3DStyle.Inclination = 15;
            chartArea1.Area3DStyle.IsClustered = true;
            chartArea1.Area3DStyle.IsRightAngleAxes = false;
            chartArea1.Area3DStyle.Perspective = 10;
            chartArea1.Area3DStyle.Rotation = 10;
            chartArea1.Area3DStyle.WallWidth = 0;
            chartArea1.AxisX.LabelStyle.Font = new System.Drawing.Font("Trebuchet MS", 8.25F, System.Drawing.FontStyle.Bold);
            chartArea1.AxisX.LabelStyle.Format = "hh:mm:ss";
            //chartArea1.AxisX.LabelStyle.Interval = 5D;
            //chartArea1.AxisX.LabelStyle.IntervalType = System.Windows.Forms.DataVisualization.Charting.DateTimeIntervalType.Minutes;
            chartArea1.AxisX.LineColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            //chartArea1.AxisX.MajorGrid.Interval = 60D;
            //chartArea1.AxisX.MajorGrid.IntervalType = System.Windows.Forms.DataVisualization.Charting.DateTimeIntervalType.Seconds;
            chartArea1.AxisX.MajorGrid.LineColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            //chartArea1.AxisX.MajorTickMark.Interval = 10D;
            //chartArea1.AxisX.MajorTickMark.IntervalType = System.Windows.Forms.DataVisualization.Charting.DateTimeIntervalType.Seconds;
            chartArea1.AxisX.ArrowStyle = AxisArrowStyle.Triangle;
            chartArea1.AxisX.IsLabelAutoFit = false;

            chartArea1.AxisY.ArrowStyle = AxisArrowStyle.Triangle;
            chartArea1.AxisY.IsLabelAutoFit = false;
            chartArea1.AxisY.IsStartedFromZero = false;
            chartArea1.AxisY.LabelStyle.Font = new System.Drawing.Font("Trebuchet MS", 8.25F, System.Drawing.FontStyle.Bold);
            chartArea1.AxisY.LineColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            chartArea1.AxisY.MajorGrid.LineColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            chartArea1.AxisY.Minimum = 0D;
            chartArea1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(165)))), ((int)(((byte)(191)))), ((int)(((byte)(228)))));
            chartArea1.BackGradientStyle = System.Windows.Forms.DataVisualization.Charting.GradientStyle.TopBottom;
            chartArea1.BackSecondaryColor = System.Drawing.Color.White;
            chartArea1.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            chartArea1.BorderDashStyle = System.Windows.Forms.DataVisualization.Charting.ChartDashStyle.Solid;
            chartArea1.InnerPlotPosition.Auto = false;
            chartArea1.InnerPlotPosition.Height = 85F;
            chartArea1.InnerPlotPosition.Width = 86F;
            chartArea1.InnerPlotPosition.X = 8.3969F;
            chartArea1.InnerPlotPosition.Y = 3.63068F;
            chartArea1.Name = "Default";
            chartArea1.Position.Auto = false;
            chartArea1.Position.Height = 86.76062F;
            chartArea1.Position.Width = 88F;
            chartArea1.Position.X = 5.089137F;
            chartArea1.Position.Y = 5.895753F;
            chartArea1.ShadowColor = System.Drawing.Color.Transparent;
            this.chart1.ChartAreas.Add(chartArea1);
            this.chart1.Dock = System.Windows.Forms.DockStyle.Fill;
            legend1.Alignment = System.Drawing.StringAlignment.Center;
            legend1.Docking = System.Windows.Forms.DataVisualization.Charting.Docking.Bottom;
            legend1.Font = new System.Drawing.Font("黑体", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            legend1.IsDockedInsideChartArea = false;
            legend1.IsTextAutoFit = false;
            legend1.LegendStyle = System.Windows.Forms.DataVisualization.Charting.LegendStyle.Row;
            legend1.Name = "Default";
            this.chart1.Legends.Add(legend1);
            this.chart1.Location = new System.Drawing.Point(0, 0);
            this.chart1.Name = "chart1";
            series1.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(180)))), ((int)(((byte)(26)))), ((int)(((byte)(59)))), ((int)(((byte)(105)))));
            series1.ChartArea = "Default";
            series1.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            series1.Color = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(64)))), ((int)(((byte)(10)))));
            series1.Legend = "Default";
            series1.Name = "Series1";
            series1.ShadowOffset = 1;
            this.chart1.Series.Add(series1);
            this.chart1.Size = new System.Drawing.Size(542, 371);
            this.chart1.TabIndex = 13;
            this.chart1.PostPaint += new System.EventHandler<System.Windows.Forms.DataVisualization.Charting.ChartPaintEventArgs>(this.chart1_PostPaint);
            // 
            // RealTimeChart
            // 
            this.BackColor = System.Drawing.Color.White;
            this.Controls.Add(this.chart1);
            this.Font = new System.Drawing.Font("Verdana", 9F);
            this.Name = "RealTimeChart";
            this.Size = new System.Drawing.Size(542, 371);
            this.Load += new System.EventHandler(this.RealTimeSample_Load);
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).EndInit();
            this.ResumeLayout(false);

        }
        #endregion
    }
}