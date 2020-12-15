func @_Grocerydelevery.BusinessLayer.Services.GroceryServices.GetAllProduct$$() -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :22 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :24 :25) // Not a variable of known type: _groceryRepository
%1 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :24 :25) // _groceryRepository.GetAllProduct() (InvocationExpression)
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :25 :19) // Not a variable of known type: result
return %3 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :25 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Grocerydelevery.BusinessLayer.Services.GroceryServices.GetProductById$string$(none) -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :32 :8) {
^entry (%_ProductId : none):
%0 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :32 :44)
cbde.store %_ProductId, %0 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :32 :44)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :34 :25) // Not a variable of known type: _groceryRepository
%2 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :34 :59) // Not a variable of known type: ProductId
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :34 :25) // _groceryRepository.GetProductById(ProductId) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :35 :19) // Not a variable of known type: result
return %5 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :35 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Grocerydelevery.BusinessLayer.Services.GroceryServices.CategoryList$$() -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :41 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :43 :25) // Not a variable of known type: _groceryRepository
%1 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :43 :25) // _groceryRepository.CategoryList() (InvocationExpression)
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :44 :19) // Not a variable of known type: result
return %3 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :44 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Grocerydelevery.BusinessLayer.Services.GroceryServices.ProductByName$string$(none) -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :51 :8) {
^entry (%_ProductName : none):
%0 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :51 :56)
cbde.store %_ProductName, %0 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :51 :56)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :53 :25) // Not a variable of known type: _groceryRepository
%2 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :53 :58) // Not a variable of known type: ProductName
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :53 :25) // _groceryRepository.ProductByName(ProductName) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :54 :19) // Not a variable of known type: result
return %5 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :54 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Grocerydelevery.BusinessLayer.Services.GroceryServices.GetProductByCategory$int$(i32) -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :61 :8) {
^entry (%_CatId : i32):
%0 = cbde.alloca i32 loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :61 :63)
cbde.store %_CatId, %0 : memref<i32> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :61 :63)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :63 :25) // Not a variable of known type: _groceryRepository
%2 = cbde.load %0 : memref<i32> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :63 :65)
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :63 :25) // _groceryRepository.GetProductByCategory(CatId) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :64 :19) // Not a variable of known type: result
return %5 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :64 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Grocerydelevery.BusinessLayer.Services.GroceryServices.PlaceOrder$string.string$(none, none) -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :72 :8) {
^entry (%_ProductId : none, %_UserId : none):
%0 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :72 :37)
cbde.store %_ProductId, %0 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :72 :37)
%1 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :72 :55)
cbde.store %_UserId, %1 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :72 :55)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :74 :25) // Not a variable of known type: _groceryRepository
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :74 :55) // Not a variable of known type: ProductId
%4 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :74 :66) // Not a variable of known type: UserId
%5 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :74 :25) // _groceryRepository.PlaceOrder(ProductId, UserId) (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :75 :19) // Not a variable of known type: result
return %7 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\GroceryServices.cs" :75 :12)

^1: // ExitBlock
cbde.unreachable

}
