using System;
using System.Collections.Generic;

namespace bs24test.Models
{
    public class Post
    {
        public int Id { get; set; }
        public string Text { get; set; }
        public string UserName { get; set; }
        public DateTime CreateDate { get; set; }
        public virtual IList<Comment> Comments { get; set; }
    }
}