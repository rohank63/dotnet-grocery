using Grocerydelevery.BusinessLayer.Interfaces;
using Grocerydelevery.BusinessLayer.Services.Repository;
using Grocerydelevery.Entities;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Grocerydelevery.BusinessLayer.Services
{
    public class AdminGroceryServices : IAdminGroceryServices
    {
        /// <summary>
        /// Creating referance Variable of IAdminGroceryRepository and injecting in AdminGroceryServices constructor
        /// </summary>
        private readonly IAdminGroceryRepository _adminRepository;

        public AdminGroceryServices(IAdminGroceryRepository adminGroceryRepository)
        {
            _adminRepository = adminGroceryRepository;
        }
        /// <summary>
        /// Add new category 
        /// </summary>
        /// <param name="category"></param>
        /// <returns></returns>
        public async Task<Category> AddCategory(Category category)
        {
            //Do code here

            return await _adminRepository.AddCategory(category);
            //throw new NotImplementedException();
        }
        /// <summary>
        /// Add new Product
        /// </summary>
        /// <param name="product"></param>
        /// <returns></returns>
        public async Task<Product> AddProduct(Product product)
        {
            //Do code here

            return await _adminRepository.AddProduct(product);
            //throw new NotImplementedException();
        }
        /// <summary>
        /// Get all order
        /// </summary>
        /// <returns></returns>
        public async Task<IEnumerable<ProductOrder>> AllOrder()
        {
            //Do code here

            Task<IEnumerable<ProductOrder>> all_order = _adminRepository.AllOrder();
            return await all_order;
            //throw new NotImplementedException();
        }
        /// <summary>
        /// get all product
        /// </summary>
        /// <returns></returns>
        public async Task<IEnumerable<Product>> AllProduct()
        {
            //Do code here
            throw new NotImplementedException();
        }
        /// <summary>
        /// Get all user
        /// </summary>
        /// <returns></returns>
        public Task<IEnumerable<ApplicationUser>> GetAllUser()
        {
            //Do code here

            Task<IEnumerable<ApplicationUser>> all_users = _adminRepository.GetAllUser();
            return all_users;

            //throw new NotImplementedException();
        }
        /// <summary>
        /// Remove User
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public Task<bool> RemoveUser(string Id)
        {
            return _adminRepository.RemoveUser(Id);

        }
        /// <summary>
        /// Get Category ById
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public Task<Category> GetCategoryById(string Id)
        {
            //Do code here

            return _adminRepository.GetCategoryById(Id);
            //throw new NotImplementedException();
        }
        /// <summary>
        /// Get Order By Id
        /// </summary>
        /// <param name="OrderId"></param>
        /// <returns></returns>
        public Task<ProductOrder> GetOrderById(string OrderId)
        {
            //Do code here

            return _adminRepository.GetOrderById(OrderId);
            //throw new NotImplementedException();
        }
        /// <summary>
        /// Get Product By Id
        /// </summary>
        /// <param name="ProductId"></param>
        /// <returns></returns>
        public Task<Product> GetProductById(string ProductId)
        {
            //Do code here

            return _adminRepository.GetProductById(ProductId);
            //throw new NotImplementedException();
        }
        /// <summary>
        /// Remove Category
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public async Task<bool> RemoveCategory(string Id)
        {
            //Do code here

            return await _adminRepository.RemoveCategory(Id);
            //throw new NotImplementedException();
        }
        /// <summary>
        /// Remove Product
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public async Task<bool> RemoveProduct(string Id)
        {
            //Do code here

            return await _adminRepository.RemoveProduct(Id);
            //throw new NotImplementedException();
        }
        /// <summary>
        /// Update Category
        /// </summary>
        /// <param name="Id"></param>
        /// <param name="category"></param>
        /// <returns></returns>
        public Task<Category> UpdateCategory(string Id, Category category)
        {
            //Do code here

            return _adminRepository.UpdateCategory(Id, category);
            //throw new NotImplementedException();
        }
        /// <summary>
        /// Update Product
        /// </summary>
        /// <param name="ProductId"></param>
        /// <param name="product"></param>
        /// <returns></returns>
        public Task<Product> UpdateProduct(string ProductId, Product product)
        {
            //Do code here

            return _adminRepository.UpdateProduct(ProductId, product);
            //throw new NotImplementedException();
        }
    }
}
