using System.ComponentModel.DataAnnotations.Schema;

namespace bs24test.Models
{
    public class Comment
    {
        public int Id { get; set; }
        public int PostId { get; set; }
        public string Text { get; set; }
        public string UserName { get; set; }
        public int Likes { get; set; }
        public int Unlikes { get; set; }
        
        [ForeignKey(nameof(PostId))]
        public virtual Post Post { get; set; }
    }
}