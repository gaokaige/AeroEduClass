using System.Drawing;
using System.Drawing.Drawing2D;

namespace 航天云态度表达.Lib
{
    public class BitmapUtil
    {
        /// <summary>
        /// 返回指定图片中的非透明区域；
        /// </summary>
        /// <param name="img">位图</param>
        /// <param name="alpha">alpha 小于等于该值的为透明</param>
        /// <returns></returns>
        public static GraphicsPath GetNoneTransparentRegion(Bitmap img, byte alpha)
        {
            int height = img.Height;
            int width = img.Width;

            int xStart, xEnd;
            GraphicsPath grpPath = new GraphicsPath();
            for (int y = 0; y < height; y++)
            {
                //逐行扫描；
                for (int x = 0; x < width; x++)
                {
                    //略过连续透明的部分；
                    while (x < width && img.GetPixel(x, y).A <= alpha)
                    {
                        x++;
                    }
                    //不透明部分；
                    xStart = x;
                    while (x < width && img.GetPixel(x, y).A > alpha)
                    {
                        x++;
                    }
                    xEnd = x;
                    if (img.GetPixel(x - 1, y).A > alpha)
                    {
                        grpPath.AddRectangle(new Rectangle(xStart, y, xEnd - xStart, 1));
                    }
                }
            }
            return grpPath;
        }
    }
}
