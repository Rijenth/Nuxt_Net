using Microsoft.AspNetCore.Mvc;

namespace src.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class HomeController : ControllerBase
    {
        [HttpGet(Name = "GetHome")]
        public IActionResult Get()
        {
            return Ok(new { data = "Hello World!" });
        }
    }
}