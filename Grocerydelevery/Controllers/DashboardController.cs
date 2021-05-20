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
    public class DashboardController : ControllerBase
    {
        /// <summary>
        /// Creating referance variable of IAdminGroceryServices
        /// </summary>
        private readonly IAdminGroceryServices _adminGS;
        /// <summary>
        /// Injecting referance variable into DashboardController constructor
        /// </summary>
        /// <param name="adminGroceryServices"></param>
        public DashboardController(IAdminGroceryServices adminGroceryServices)
        {
            _adminGS = adminGroceryServices;
        }
        /// <summary>
        /// Get All order plced by user
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public async Task<IEnumerable<ProductOrder>> AllOrder()
        {
            //Do code here

            return await _adminGS.AllOrder();
            //throw new NotImplementedException();
        }
        /// <summary>
        /// Get product Order By Id
        /// </summary>
        /// <param name="OrderId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("OrderById/{OrderId}")]
        public async Task<IActionResult> OrderById(string OrderId)
        {
            //Do code here
            Task<ProductOrder> order_by_id = _adminGS.GetOrderById(OrderId);
            if (order_by_id.Result is null)
                return NotFound("Wrong OrderId");
            else
                return Ok(order_by_id.Result.OrderId);
            
        }
        /// <summary>
        /// Add new category in MongoDb Collection
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost]
        [Route("AddCategory")]
        public async Task<IActionResult> AddNewCategory([FromBody] CategoryViewModel model)
        {
            //Do code here
            Category cat = new Category();
            cat.Title = model.Title;
            cat.Url = model.Url;
            cat.OpenInNewWindow = model.OpenInNewWindow;
            


            Task<Category> new_cat = _adminGS.AddCategory(cat);
            return Created(HttpContext.Request.Scheme + "://" + HttpContext.Request.Host + HttpContext.Request.Path + "/" + cat.Id,
                cat.Title);
            //return Ok();
        }
        /// <summary>
        /// Add new Product in MongoDb Collection
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost]
        [Route("AddProduct")]
        public async Task<IActionResult> AddNewProduct([FromBody] ProductViewModel model)
        {
            //Do code here
            Product pro = new Product();
            pro.ProductName = model.ProductName;
            pro.Description = model.Description;
            pro.Amount = model.Amount;
            pro.stock = model.stock;
            pro.photo = model.photo;
            pro.CatId = model.CatId;
            pro.ProductOrder = model.ProductOrder;


            Task<Product> new_pro = _adminGS.AddProduct(pro);
            return Created(HttpContext.Request.Scheme + "://" + HttpContext.Request.Host + HttpContext.Request.Path + "/" + pro.ProductId,
                pro.ProductName);
            //return Ok();
        }
        /// <summary>
        /// Updatecategory in MongoDb Collection
        /// </summary>
        /// <param name="Id"></param>
        /// <param name="category"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("Updatecategory/{Id}")]
        public async Task<IActionResult> Updatecategory(string Id, [FromBody] Category category)
        {
            //Do code here
            if (Id is null)
                return NotFound("Category with Id not found");


            Task<Category> up_cat = _adminGS.UpdateCategory(Id, category);
            if (up_cat.Result is null)
                return Ok("Make Sure Id and Category is correct");
            return Ok("Updated");
        }
        /// <summary>
        /// Update Product in MongoDb
        /// </summary>
        /// <param name="ProductId"></param>
        /// <param name="product"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("UpdateProduct/{ProductId}")]
        public async Task<IActionResult> UpdateProduct(string ProductId, [FromBody] Product product)
        {
            //Do code here
            if (ProductId is null)
                return NotFound("Product Id not found");

            Task<Product> up_pro = _adminGS.UpdateProduct(ProductId, product);
            if (up_pro.Result is null)
                return Ok("Make sure ProductId and Product is correct");
            return Ok("Updated");
        }
        /// <summary>
        /// Remove Category form MmongoDb by Id
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        [HttpDelete]
        [Route("Removecategory/{Id}")]
        public async Task<IActionResult> RemoveCategory(string Id)
        {
            //Do code here
            Task<bool> is_valid = _adminGS.RemoveCategory(Id);
            if (is_valid.Result == false)
                return NotFound("No Category found with given Id");
            return Ok("Deleted");
        }
        /// <summary>
        /// Remove Product from MongoDb
        /// </summary>
        /// <param name="ProductId"></param>
        /// <returns></returns>
        [HttpDelete]
        [Route("Removeproduct/{ProductId}")]
        public async Task<IActionResult> RemoveProduct(string ProductId)
        {
            //Do code here
            Task<Product> x = _adminGS.GetProductById(ProductId);
            if (x.Result is null)
                return NotFound("No Product found with given Id");

            Task<bool> is_valid = _adminGS.RemoveProduct(ProductId);
            if (is_valid.Result == false)
                return NotFound("No Product found with given Id");
            return Ok("Deleted");
        
            //return Ok();
        }
    }
}