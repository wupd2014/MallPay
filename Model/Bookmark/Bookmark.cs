using System;

namespace Model.Bookmark
{
    /// <summary>
    /// 书签管理
    /// </summary>
    public class BookMark
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Url { get; set; }
        public int pId { get; set; }
        public DateTime CreateTime { get; set; }
    }
}
