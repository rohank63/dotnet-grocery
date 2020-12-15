func @_Grocerydelevery.DataLayer.MongoDBContext.GetCollection$TEntity$$string$(none) -> none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.DataLayer\\MongoDBContext.cs" :15 :8) {
^entry (%_name : none):
%0 = cbde.alloca none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.DataLayer\\MongoDBContext.cs" :15 :64)
cbde.store %_name, %0 : memref<none> loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.DataLayer\\MongoDBContext.cs" :15 :64)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.DataLayer\\MongoDBContext.cs" :17 :16) // string (PredefinedType)
%2 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.DataLayer\\MongoDBContext.cs" :17 :37) // Not a variable of known type: name
%3 = cbde.unknown : i1 loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.DataLayer\\MongoDBContext.cs" :17 :16) // string.IsNullOrEmpty(name) (InvocationExpression)
cond_br %3, ^1, ^2 loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.DataLayer\\MongoDBContext.cs" :17 :16)

^1: // JumpBlock
%4 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.DataLayer\\MongoDBContext.cs" :19 :23) // null (NullLiteralExpression)
return %4 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.DataLayer\\MongoDBContext.cs" :19 :16)

^2: // JumpBlock
%5 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.DataLayer\\MongoDBContext.cs" :21 :19) // Not a variable of known type: _mongoDatabase
%6 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.DataLayer\\MongoDBContext.cs" :21 :57) // Not a variable of known type: name
%7 = cbde.unknown : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.DataLayer\\MongoDBContext.cs" :21 :19) // _mongoDatabase.GetCollection<TEntity>(name) (InvocationExpression)
return %7 : none loc("D:\\IIHT\\Task_6\\Project-MongoDb\\Grocerydelevery.DataLayer\\MongoDBContext.cs" :21 :12)

^3: // ExitBlock
cbde.unreachable

}
