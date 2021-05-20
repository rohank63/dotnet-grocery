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
            return await _adminGS.GetAllUser();
            //throw new NotImplementedException();
        }

        // GET api/<UserController>/5
        [HttpGet("{id}")]
        public string Get(string id)
        {

            Task<ApplicationUser> user_by_id = _userGS.GetUserById(id);
            if (user_by_id.Result is null)
                return "Wrong UserId";
            else
                return user_by_id.Result.Name;
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

            ApplicationUser new_user = new ApplicationUser();
            new_user.Name = model.Name;
            new_user.Email = model.Email;
            new_user.Password = model.Password;
            new_user.PinCode = model.PinCode;
            new_user.Road_area = model.Road_area;
            new_user.State = model.State;
            new_user.MobileNumber = model.MobileNumber;
            new_user.HouseNo_Building_Name = model.HouseNo_Building_Name;
            new_user.State = model.State;

            Task<ApplicationUser> obj_user = _userGS.Register(new_user);
            return Created(HttpContext.Request.Scheme + "://" + HttpContext.Request.Host + HttpContext.Request.Path + "/" + obj_user.Result.UserId,
                obj_user.Result.Name);
            //throw new NotImplementedException();
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

            if (UserId is null)
                return NotFound($"Employee with Id: {UserId} was not found");

            Task<ApplicationUser> user_updated = _userGS.UpdateUser(UserId, user);
            if (user_updated.Result is null)
                return Ok("Make Sure UserId and user is correct");
            return Ok("Updated");


            //throw new NotImplementedException();
        }

        // DELETE api/<UserController>/5
        [HttpDelete("{id}")]
        public void Delete(string id)
        {
            Task<ApplicationUser> user_by_id = _userGS.GetUserById(id);
            if (user_by_id.Result != null)
            {
                Task<bool> ans = _adminGS.RemoveUser(id);
                //Console.WriteLine(ans.Result);
            }

        }
    }
}
