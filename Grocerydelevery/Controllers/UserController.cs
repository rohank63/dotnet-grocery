using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Grocerydelevery.BusinessLayer.Interfaces;
using Grocerydelevery.BusinessLayer.ViewModels;
using Grocerydelevery.Entities;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Grocerydelevery.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        /// <summary>
        /// Creating referance variable of IUserGroceryServices and IAdminGroceryServices
        /// </summary>
        private readonly IUserGroceryServices _userGS;
        private readonly IAdminGroceryServices _adminGS;
        /// <summary>
        /// Injecting referance variable into UserController constructor
        /// </summary>
        public UserController(IUserGroceryServices userGroceryServices, IAdminGroceryServices adminGroceryServices)
        {
            _userGS = userGroceryServices;
            _adminGS = adminGroceryServices;
        }
        /// <summary>
        /// Get All user
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public async Task<IEnumerable<ApplicationUser>> AllUser()
        {
            //Do code here
            throw new NotImplementedException();
        }

        // GET api/<UserController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        /// <summary>
        /// Register new user
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost]
        [Route("Register")]
        public async Task<IActionResult> AddNewUser([FromBody] UserViewModel model)
        {
            //Do code here
            throw new NotImplementedException();
        }
        /// <summary>
        /// Update registred User
        /// </summary>
        /// <param name="UserId"></param>
        /// <param name="user"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("Updateuser/{string UserId}")]
        public async Task<IActionResult> UpdateUser(string UserId, [FromBody] ApplicationUser user)
        {
            //Do code here
            throw new NotImplementedException();
        }

        // DELETE api/<UserController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
