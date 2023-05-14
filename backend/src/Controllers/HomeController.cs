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
            /* Return a JSON response with the following structure:
             * {
             *   "data": "Hello World!"
             * }
             */
            return Ok(new { data = "Hello World!" });
        }
    }
}