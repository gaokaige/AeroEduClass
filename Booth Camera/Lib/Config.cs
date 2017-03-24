using System.Xml;

namespace AeroEduClass.Lib
{
    public class Config
    {
        public int DefaultUI { get; set; }

        public int ShowCenterPoint { get; set; }

        public string VideoSavePath { get; set; }

        public string PictureSavePath { get; set; }

        public string CommentSavePath { get; set; }

        public string ErrColSavePath { get; set; }

        public string RTSPAddress { get; set; }

        public int SaveCommentInterval { get; set; }

        public int MaxCommentImageCount { get; set; }

        public string[] Subject { get; set; }

        XmlDocument xd = new XmlDocument();

        public Config()
        {
            xd.Load("Config.xml");
            DefaultUI = int.Parse(xd.SelectSingleNode("/config/DefaultUI").InnerText);
            ShowCenterPoint = int.Parse(xd.SelectSingleNode("/config/ShowCenterPoint").InnerText);
            VideoSavePath = xd.SelectSingleNode("/config/VideoSavePath").InnerText;
            PictureSavePath = xd.SelectSingleNode("/config/PictureSavePath").InnerText;
            CommentSavePath = xd.SelectSingleNode("/config/CommentSavePath").InnerText;
            ErrColSavePath = xd.SelectSingleNode("/config/ErrColSavePath").InnerText;

            if (VideoSavePath.LastIndexOf('\\') != VideoSavePath.Length - 1)
            {
                VideoSavePath = VideoSavePath.TrimEnd('\\');
            }
            if (PictureSavePath.LastIndexOf('\\') != PictureSavePath.Length - 1)
            {
                PictureSavePath = PictureSavePath.TrimEnd('\\');
            }
            if (CommentSavePath.LastIndexOf('\\') != CommentSavePath.Length - 1)
            {
                CommentSavePath = CommentSavePath.TrimEnd('\\');
            }
            if (ErrColSavePath.LastIndexOf('\\') != ErrColSavePath.Length - 1)
            {
                ErrColSavePath = ErrColSavePath.TrimEnd('\\');
            }

            RTSPAddress = xd.SelectSingleNode("/config/rtspSource/rtspFormat").InnerText;
            Subject = xd.SelectSingleNode("/config/Subjects").InnerText.Split('|');
            MaxCommentImageCount = int.Parse(xd.SelectSingleNode("/config/MaxCommentImageCount").InnerText);
            SaveCommentInterval = int.Parse(xd.SelectSingleNode("/config/SaveCommentInterval").InnerText);

        }

        public void Save()
        {
            xd.Load("Config.xml");
            xd.SelectSingleNode("/config/DefaultUI").InnerText = this.DefaultUI.ToString();
            xd.SelectSingleNode("/config/ShowCenterPoint").InnerText = this.ShowCenterPoint.ToString();
            xd.SelectSingleNode("/config/VideoSavePath").InnerText = this.VideoSavePath;
            xd.SelectSingleNode("/config/PictureSavePath").InnerText = this.PictureSavePath;
            xd.SelectSingleNode("/config/CommentSavePath").InnerText = this.CommentSavePath;
            xd.SelectSingleNode("/config/ErrColSavePath").InnerText = this.ErrColSavePath;
            xd.SelectSingleNode("/config/rtspSource/rtspFormat").InnerText = this.RTSPAddress;
            string subjects = string.Empty;
            foreach (var item in Subject)
            {
                subjects += item + "|";
            }
            subjects = subjects.TrimEnd('|');
            xd.SelectSingleNode("/config/Subjects").InnerText = subjects;
            xd.SelectSingleNode("/config/MaxCommentImageCount").InnerText = this.MaxCommentImageCount.ToString();
            xd.SelectSingleNode("/config/SaveCommentInterval").InnerText = this.SaveCommentInterval.ToString();
            xd.Save("Config.xml");
        }
    }
}
