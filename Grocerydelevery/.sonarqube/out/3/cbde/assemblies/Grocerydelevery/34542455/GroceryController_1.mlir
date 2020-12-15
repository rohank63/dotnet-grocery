// Skipping function AllProduct(), it contains poisonous unsupported syntaxes

// Skipping function ProductById(none), it contains poisonous unsupported syntaxes

// Skipping function ProductByCategory(i32), it contains poisonous unsupported syntaxes

// Skipping function ProductByName(none), it contains poisonous unsupported syntaxes

func @_Grocerydelevery.Controllers.GroceryController.GetCategoryList$$() -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :83 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :87 :17) // Identifier from another assembly: ModelState
%1 = cbde.unknown : i1 loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :87 :17) // ModelState.IsValid (SimpleMemberAccessExpression)
%2 = cbde.unknown : i1 loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :87 :16) // !ModelState.IsValid (LogicalNotExpression)
cond_br %2, ^1, ^2 loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :87 :16)

^1: // JumpBlock
// Entity from another assembly: BadRequest
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :89 :23) // BadRequest() (InvocationExpression)
return %3 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :89 :16)

^2: // BinaryBranchBlock
%4 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :91 :30) // Not a variable of known type: _groceryServices
%5 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :91 :30) // _groceryServices.CategoryList() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :92 :16) // Not a variable of known type: getcategory
%8 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :92 :31) // null (NullLiteralExpression)
%9 = cbde.unknown : i1  loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :92 :16) // comparison of unknown type: getcategory == null
cond_br %9, ^3, ^4 loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :92 :16)

^3: // JumpBlock
// Entity from another assembly: NotFound
%10 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :94 :23) // NotFound() (InvocationExpression)
return %10 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :94 :16)

^4: // JumpBlock
// Entity from another assembly: CreatedAtAction
%11 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :96 :35) // "AllProduct" (StringLiteralExpression)
%12 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :96 :49) // Not a variable of known type: getcategory
%13 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :96 :19) // CreatedAtAction("AllProduct", getcategory) (InvocationExpression)
return %13 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\GroceryController.cs" :96 :12)

^5: // ExitBlock
cbde.unreachable

}
// Skipping function Placeorder(none, none, none), it contains poisonous unsupported syntaxes

