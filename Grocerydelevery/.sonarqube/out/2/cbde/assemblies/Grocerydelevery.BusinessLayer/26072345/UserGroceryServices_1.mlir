func @_Grocerydelevery.BusinessLayer.Services.UserGroceryServices.GetUserById$string$(none) -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :23 :8) {
^entry (%_UserId : none):
%0 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :23 :49)
cbde.store %_UserId, %0 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :23 :49)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :25 :25) // Not a variable of known type: _userGroceryRepository
%2 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :25 :60) // Not a variable of known type: UserId
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :25 :25) // _userGroceryRepository.GetUserById(UserId) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :26 :19) // Not a variable of known type: result
return %5 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :26 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Grocerydelevery.BusinessLayer.Services.UserGroceryServices.Login$string.string$(none, none) -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :34 :8) {
^entry (%_Email : none, %_password : none):
%0 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :34 :43)
cbde.store %_Email, %0 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :34 :43)
%1 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :34 :57)
cbde.store %_password, %1 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :34 :57)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :36 :25) // Not a variable of known type: _userGroceryRepository
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :36 :54) // Not a variable of known type: Email
%4 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :36 :61) // Not a variable of known type: password
%5 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :36 :25) // _userGroceryRepository.Login(Email, password) (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :37 :19) // Not a variable of known type: result
return %7 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :37 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Grocerydelevery.BusinessLayer.Services.UserGroceryServices.Logout$$() -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :43 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :45 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %0 :  none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :45 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Grocerydelevery.BusinessLayer.Services.UserGroceryServices.Register$Grocerydelevery.Entities.ApplicationUser$(none) -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :52 :8) {
^entry (%_user : none):
%0 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :52 :46)
cbde.store %_user, %0 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :52 :46)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :54 :25) // Not a variable of known type: _userGroceryRepository
%2 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :54 :57) // Not a variable of known type: user
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :54 :25) // _userGroceryRepository.Register(user) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :55 :19) // Not a variable of known type: result
return %5 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :55 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Grocerydelevery.BusinessLayer.Services.UserGroceryServices.UpdateUser$string.Grocerydelevery.Entities.ApplicationUser$(none, none) -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :63 :8) {
^entry (%_UserId : none, %_user : none):
%0 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :63 :48)
cbde.store %_UserId, %0 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :63 :48)
%1 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :63 :63)
cbde.store %_user, %1 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :63 :63)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :65 :25) // Not a variable of known type: _userGroceryRepository
%3 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :65 :59) // Not a variable of known type: UserId
%4 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :65 :67) // Not a variable of known type: user
%5 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :65 :25) // _userGroceryRepository.UpdateUser(UserId, user) (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :66 :19) // Not a variable of known type: update
return %7 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.BusinessLayer\\Services\\UserGroceryServices.cs" :66 :12)

^1: // ExitBlock
cbde.unreachable

}
