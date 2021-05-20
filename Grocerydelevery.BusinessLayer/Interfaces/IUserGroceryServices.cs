﻿using Grocerydelevery.BusinessLayer.ViewModels;
using Grocerydelevery.Entities;
using System.Threading.Tasks;

namespace Grocerydelevery.BusinessLayer.Interfaces
{
    public interface IUserGroceryServices
    {
        Task<ApplicationUser> Register(ApplicationUser user);
        Task<ApplicationUser> GetUserById(string UserId);
        Task<ApplicationUser> UpdateUser(string UserId, ApplicationUser user);
        Task<ApplicationUser> Login(string Email, string password);
        Task<bool> Logout();
    }
}
