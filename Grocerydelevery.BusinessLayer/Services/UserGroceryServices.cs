using Grocerydelevery.BusinessLayer.Interfaces;
using Grocerydelevery.BusinessLayer.Services.Repository;
using Grocerydelevery.Entities;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Grocerydelevery.BusinessLayer.Services
{
    public class UserGroceryServices : IUserGroceryServices
    {
        /// <summary>
        /// Creating referance Variable of IUserGroceryRepository and injecting in UserGroceryServices constructor
        /// </summary>
        private readonly IUserGroceryRepository _userGroceryRepository;
        public UserGroceryServices(IUserGroceryRepository userGroceryRepository)
        {
            _userGroceryRepository = userGroceryRepository;
        }
        /// <summary>
        /// Get user by id
        /// </summary>
        /// <param name="UserId"></param>
        /// <returns></returns>
        public Task<ApplicationUser> GetUserById(string UserId)
        {
            //Do code here
            throw new NotImplementedException();
        }
        /// <summary>
        /// Loging user to check is registred or not
        /// </summary>
        /// <param name="Email"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public Task<ApplicationUser> Login(string Email, string password)
        {
            //Do code here
            throw new NotImplementedException();
        }
        /// <summary>
        /// Log out 
        /// </summary>
        /// <returns></returns>
        public Task<bool> Logout()
        {
            //Do code here
            throw new NotImplementedException();
        }
        /// <summary>
        /// Registred new user
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public Task<ApplicationUser> Register(ApplicationUser user)
        {
            //Do code here
            throw new NotImplementedException();
        }
        /// <summary>
        /// Update user
        /// </summary>
        /// <param name="UserId"></param>
        /// <param name="user"></param>
        /// <returns></returns>
        public Task<ApplicationUser> UpdateUser(string UserId, ApplicationUser user)
        {
            //Do code here
            throw new NotImplementedException();
        }
    }
}
