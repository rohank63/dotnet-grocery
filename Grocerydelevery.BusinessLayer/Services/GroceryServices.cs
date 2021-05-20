using Grocerydelevery.BusinessLayer.Interfaces;
using Grocerydelevery.BusinessLayer.Services.Repository;
using Grocerydelevery.Entities;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Grocerydelevery.BusinessLayer.Services
{
    public class GroceryServices : IGroceryServices
    {
        /// <summary>
        /// Creating referance Variable of IGroceryRepository and injecting in GroceryServices constructor
        /// </summary>
        private readonly IGroceryRepository _groceryRepository;
        public GroceryServices(IGroceryRepository groceryRepository)
        {
            _groceryRepository = groceryRepository;
        }
        /// <summary>
        /// Get all product
        /// </summary>
        /// <returns></returns>
        public Task<IEnumerable<Product>> GetAllProduct()
        {
            //Do code here

            Task<IEnumerable<Product>> all_product = _groceryRepository.GetAllProduct();
            return all_product;
            //throw new NotImplementedException();
        }
        /// <summary>
        /// Get Product by Id
        /// </summary>
        /// <param name="ProductId"></param>
        /// <returns></returns>
        public Task<Product> GetProductById(string ProductId)
        {
            //Do code here

            return _groceryRepository.GetProductById(ProductId);
            //throw new NotImplementedException();
        }
        /// <summary>
        /// Get acategory list
        /// </summary>
        /// <returns></returns>
        public IList<Category> CategoryList()
        {
            //Do code here

            return _groceryRepository.CategoryList();
            //throw new NotImplementedException();
        }
        /// <summary>
        /// Get Product by name
        /// </summary>
        /// <param name="ProductName"></param>
        /// <returns></returns>
        public Task<IEnumerable<Product>> ProductByName(string ProductName)
        {
            //Do code here

            Task<IEnumerable<Product>> producy_by_name = _groceryRepository.ProductByName(ProductName);
            return producy_by_name;
            //throw new NotImplementedException();
        }
        /// <summary>
        /// Get Product By Category
        /// </summary>
        /// <param name="CatId"></param>
        /// <returns></returns>
        public Task<IEnumerable<Product>> GetProductByCategory(int CatId)
        {
            //Do code here

            Task<IEnumerable<Product>> all_product_by_cid = _groceryRepository.GetProductByCategory(CatId);
            return all_product_by_cid;
            //throw new NotImplementedException();
        }
        /// <summary>
        /// Place order
        /// </summary>
        /// <param name="ProductId"></param>
        /// <param name="UserId"></param>
        /// <returns></returns>
        public Task<bool> PlaceOrder(string ProductId, string UserId)
        {
            //Do code here

            return _groceryRepository.PlaceOrder(ProductId, UserId);
            //throw new NotImplementedException();
        }
    }
}
