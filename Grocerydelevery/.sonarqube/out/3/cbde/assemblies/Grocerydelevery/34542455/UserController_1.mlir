// Skipping function AllUser(), it contains poisonous unsupported syntaxes

func @_Grocerydelevery.Controllers.UserController.Get$int$(i32) -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\UserController.cs" :39 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\UserController.cs" :40 :26)
cbde.store %_id, %0 : memref<i32> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\UserController.cs" :40 :26)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\UserController.cs" :42 :19) // "value" (StringLiteralExpression)
return %1 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\UserController.cs" :42 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function AddNewUser(none), it contains poisonous unsupported syntaxes

// Skipping function UpdateUser(none, none), it contains poisonous unsupported syntaxes

func @_Grocerydelevery.Controllers.UserController.Delete$int$(i32) -> () loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\UserController.cs" :97 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\UserController.cs" :98 :27)
cbde.store %_id, %0 : memref<i32> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery\\Controllers\\UserController.cs" :98 :27)
br ^0

^0: // ExitBlock
return

}
