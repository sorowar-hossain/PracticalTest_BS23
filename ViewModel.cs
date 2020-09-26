using System.Linq;
using System;
using System.Collections.Generic;

namespace bs24test
{
    public class PostViewModel
    {
        public string Text { get; set; }
        public string UserName { get; set; }
        public DateTime CreateDate { get; set; }
        public string CommentCount => Comments.Count() + " Comments";
        public List<CommentViewModel> Comments { get; set; }
    }

    public class CommentViewModel
    {
        public string Text { get; set; }
        public string UserName { get; set; }
        public int Likes { get; set; }
        public int Unlikes { get; set; }
    }
}