using System;
using System.Linq;
using bs24test.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace bs24test.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PostController : ControllerBase
    {
        private readonly TestDBContext _testDBContext;
        private readonly ILogger<PostController> _logger;

        public PostController(ILogger<PostController> logger, TestDBContext testDBContext)
        {
            _testDBContext = testDBContext;
            _logger = logger;
        }

        [HttpGet]
        public IActionResult Get(int page = 1, int pageSize = 5, string searchKey = null)
        {
            var skip = (page - 1) * pageSize;
            var result = _testDBContext.Posts.Where(s => s.Text.Contains(searchKey ?? ""))
                        .Skip(skip).Take(pageSize).Select(q => new PostViewModel{
                            Text = q.Text,
                            UserName = q.UserName,
                            CreateDate = q.CreateDate,
                            Comments = q.Comments.Select(w => new CommentViewModel {
                                Text = w.Text,
                                UserName = w.UserName,
                                Likes = w.Likes,
                                Unlikes = w.Unlikes
                            }).ToList()
                        }).ToList();
            return Ok(result);
        }

        [HttpPost("AddPost")]
        public IActionResult AddPost([FromBody] Post post)
        {
            _testDBContext.Posts.Add(post);
            _testDBContext.SaveChanges();
            _logger.LogInformation("post create time" + DateTime.Now);
            return Ok(post);
        }

        [HttpPost("AddComment")]
        public IActionResult AddComment([FromBody] Comment comment)
        {
            _testDBContext.Comments.Add(comment);
            _testDBContext.SaveChanges();
            _logger.LogInformation("comment create time" + DateTime.Now);
            return Ok(comment);
        }
    }
}
