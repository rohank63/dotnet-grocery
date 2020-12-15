// Skipping function AddCategory(none), it contains poisonous unsupported syntaxes

// Skipping function AddProduct(none), it contains poisonous unsupported syntaxes

// Skipping function AllOrder(), it contains poisonous unsupported syntaxes

// Skipping function AllProduct(), it contains poisonous unsupported syntaxes

func @_Grocerydelevery.BusinessLayer.Services.AdminGroceryServices.GetAllUser$$() -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :60 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :62 :25) // Not a variable of known type: _adminRepository
%1 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :62 :25) // _adminRepository.GetAllUser() (InvocationExpression)
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :63 :19) // Not a variable of known type: result
return %3 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :63 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Grocerydelevery.BusinessLayer.Services.AdminGroceryServices.GetCategoryById$string$(none) -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :70 :8) {
^entry (%_Id : none):
%0 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :70 :46)
cbde.store %_Id, %0 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :70 :46)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :72 :25) // Not a variable of known type: _adminRepository
%2 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :72 :58) // Not a variable of known type: Id
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :72 :25) // _adminRepository.GetCategoryById(Id) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :73 :19) // Not a variable of known type: result
return %5 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :73 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Grocerydelevery.BusinessLayer.Services.AdminGroceryServices.GetOrderById$string$(none) -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :80 :8) {
^entry (%_OrderId : none):
%0 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :80 :47)
cbde.store %_OrderId, %0 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :80 :47)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :82 :25) // Not a variable of known type: _adminRepository
%2 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :82 :55) // Not a variable of known type: OrderId
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :82 :25) // _adminRepository.GetOrderById(OrderId) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :83 :19) // Not a variable of known type: result
return %5 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :83 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Grocerydelevery.BusinessLayer.Services.AdminGroceryServices.GetProductById$string$(none) -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :90 :8) {
^entry (%_ProductId : none):
%0 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :90 :44)
cbde.store %_ProductId, %0 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :90 :44)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :92 :25) // Not a variable of known type: _adminRepository
%2 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :92 :57) // Not a variable of known type: ProductId
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :92 :25) // _adminRepository.GetProductById(ProductId) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :93 :19) // Not a variable of known type: result
return %5 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :93 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function RemoveCategory(none), it contains poisonous unsupported syntaxes

// Skipping function RemoveProduct(none), it contains poisonous unsupported syntaxes

func @_Grocerydelevery.BusinessLayer.Services.AdminGroceryServices.UpdateCategory$string.Grocerydelevery.Entities.Category$(none, none) -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :119 :8) {
^entry (%_Id : none, %_category : none):
%0 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :119 :45)
cbde.store %_Id, %0 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :119 :45)
%1 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :119 :56)
cbde.store %_category, %1 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :119 :56)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :121 :25) // Not a variable of known type: _adminRepository
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :121 :57) // Not a variable of known type: Id
%4 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :121 :61) // Not a variable of known type: category
%5 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :121 :25) // _adminRepository.UpdateCategory(Id, category) (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :122 :19) // Not a variable of known type: result
return %7 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :122 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Grocerydelevery.BusinessLayer.Services.AdminGroceryServices.UpdateProduct$string.Grocerydelevery.Entities.Product$(none, none) -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :130 :8) {
^entry (%_ProductId : none, %_product : none):
%0 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :130 :43)
cbde.store %_ProductId, %0 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :130 :43)
%1 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :130 :61)
cbde.store %_product, %1 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :130 :61)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :132 :25) // Not a variable of known type: _adminRepository
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :132 :56) // Not a variable of known type: ProductId
%4 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :132 :67) // Not a variable of known type: product
%5 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :132 :25) // _adminRepository.UpdateProduct(ProductId, product) (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :133 :19) // Not a variable of known type: result
return %7 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\AdminGroceryServices.cs" :133 :12)

^1: // ExitBlock
cbde.unreachable

}
