﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Grocerydelevery.BusinessLayer.Interfaces;
using Grocerydelevery.BusinessLayer.Services.Repository;
using Grocerydelevery.BusinessLayer.ViewModels;
using Grocerydelevery.Entities;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Grocerydelevery.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class GroceryController : ControllerBase
    {
        /// <summary>
        /// Creating referance variable of IGroceryServices and IUserGroceryServices
        /// </summary>
        private readonly IGroceryServices _groceryServices;
        private readonly IUserGroceryServices _userGroceryServices;
        /// <summary>
        /// Injecting referance variable into GroceryController constructor
        /// </summary>
        public GroceryController(IGroceryServices groceryServices, IUserGroceryServices userGroceryServices)
        {
            _groceryServices = groceryServices;
            _userGroceryServices = userGroceryServices;
        }
        /// <summary>
        /// Get All product and show Index Page for user
        /// </summary>
        /// <returns></returns>
        // GET: api/<GroceryController>
        [HttpGet]
        public async Task<IEnumerable<Product>> AllProduct()
        {
            return await _groceryServices.GetAllProduct();
        }
        /// <summary>
        /// Get Product Details
        /// </summary>
        /// <param name="ProductId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("ProductById/{ProductId}")]
        public async Task<IActionResult> ProductById(string ProductId)
        {
            //Do code here
            Task<Product> product_by_id = _groceryServices.GetProductById(ProductId);

            if (product_by_id.Result is null)
                return NotFound($"{ProductId} not found");
            
            return Ok(product_by_id.Result.ProductName);
        }
        /// <summary>
        /// Get All product by CategoryId
        /// </summary>
        /// <param name="CatId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("ProductByCategory/{CatId}")]
        public async Task<IEnumerable<Product>> ProductByCategory(int CatId)
        {
            //Do code here
            return await _groceryServices.GetProductByCategory(CatId);

            //throw new NotImplementedException();
        }
        /// <summary>
        /// Get product by product Name
        /// </summary>
        /// <param name="ProductName"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("ProductByName/{ProductName}")]
        public async Task<IEnumerable<Product>> ProductByName(string ProductName)
        {
            //Do code here

            return await _groceryServices.ProductByName(ProductName);
            //throw new NotImplementedException();
        }
        /// <summary>
        /// Get all category list
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("Categorylist")]
        public IActionResult GetCategoryList()
        {
            //Do code here

            return Ok(_groceryServices.CategoryList());
            //throw new NotImplementedException();
        }
        /// <summary>
        /// Place order for Registred user
        /// </summary>
        /// <param name="ProductId"></param>
        /// <param name="email"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        [HttpPost]
        [Route("Placeorder/{ProductId}/{email}/{password}")]
        public async Task<IActionResult> Placeorder(string ProductId, string email, string password)
        {
            //Do code here

            Task<ApplicationUser> l_user = _userGroceryServices.Login(email, password);
            if(l_user.Result is null)
                return NotFound("No User Found");

            Task<Product> product_by_id = _groceryServices.GetProductById(ProductId);
            if (product_by_id.Result is null)
                return NotFound($"{ProductId} not found");

            Task<bool> x = _groceryServices.PlaceOrder(ProductId,l_user.Result.UserId);
            return Ok("Order Placed");

            // Check for Stock of that Product
            
            
            //throw new NotImplementedException();
        }
    }
}