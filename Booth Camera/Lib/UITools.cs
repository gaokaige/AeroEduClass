using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace AeroEduClass.Lib
{
    public class UITools
    {
        public static void AddButtonStyle(Button btn, Image imageStatic, Image imageHover, Image imageActive, Image imageDisabled, Image imageEnabled)
        {
            btn.MouseEnter += delegate(object sender, EventArgs e)
            {
                ((Button)sender).BackgroundImage = imageHover;
            };
            btn.MouseHover += delegate(object sender, EventArgs e)
            {
                ((Button)sender).BackgroundImage = imageHover;
            };
            btn.MouseLeave += delegate(object sender, EventArgs e)
            {
                ((Button)sender).BackgroundImage = imageStatic;
            };
            btn.MouseDown += delegate(object sender, MouseEventArgs e)
            {
                ((Button)sender).BackgroundImage = imageActive;
            };
            btn.MouseUp += delegate(object sender, MouseEventArgs e)
            {
                ((Button)sender).BackgroundImage = imageHover;
            };
            btn.EnabledChanged += delegate(object sender, EventArgs e)
            {
                if (!((Button)sender).Enabled)
                    ((Button)sender).BackgroundImage = imageDisabled;
                else
                    ((Button)sender).BackgroundImage = imageEnabled;
            };
        }

        public static void AddButtonStyle(Button btn, Image imageEnabled, Image imageDisabled)
        {
            btn.EnabledChanged += delegate(object sender, EventArgs e)
            {
                if (!((Button)sender).Enabled)
                    ((Button)sender).BackgroundImage = imageDisabled;
                else
                    ((Button)sender).BackgroundImage = imageEnabled;
            };
        }
    }
}
