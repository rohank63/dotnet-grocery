�
`D:\IIHT\Task_6\Project-MongoDb\Grocerydelevery.BusinessLayer\Interfaces\IAdminGroceryServices.cs
	namespace 	
Grocerydelevery
 
. 
BusinessLayer '
.' (

Interfaces( 2
{ 
public 

	interface !
IAdminGroceryServices *
{ 
Task		 
<		 
Category		 
>		 
AddCategory		 "
(		" #
Category		# +
category		, 4
)		4 5
;		5 6
Task

 
<

 
bool

 
>

 
RemoveCategory

 !
(

! "
string

" (
Id

) +
)

+ ,
;

, -
Task 
< 
Category 
> 
UpdateCategory %
(% &
string& ,
Id- /
,/ 0
Category1 9
category: B
)B C
;C D
Task 
< 
Product 
> 

AddProduct  
(  !
Product! (
product) 0
)0 1
;1 2
Task 
< 
bool 
> 
RemoveProduct  
(  !
string! '
	ProductId( 1
)1 2
;2 3
Task 
< 
Product 
> 
UpdateProduct #
(# $
string$ *
	ProductId+ 4
,4 5
Product6 =
product> E
)E F
;F G
Task 
< 
Category 
> 
GetCategoryById &
(& '
string' -
Id. 0
)0 1
;1 2
Task 
< 
Product 
> 
GetProductById $
($ %
string% +
	ProductId, 5
)5 6
;6 7
Task 
< 
ProductOrder 
> 
GetOrderById '
(' (
string( .
OrderId/ 6
)6 7
;7 8
Task 
< 
IEnumerable 
< 
ProductOrder %
>% &
>& '
AllOrder( 0
(0 1
)1 2
;2 3
Task 
< 
IEnumerable 
< 
Product  
>  !
>! "

AllProduct# -
(- .
). /
;/ 0
Task 
< 
IEnumerable 
< 
ApplicationUser (
>( )
>) *

GetAllUser+ 5
(5 6
)6 7
;7 8
} 
} �
[D:\IIHT\Task_6\Project-MongoDb\Grocerydelevery.BusinessLayer\Interfaces\IGroceryServices.cs
	namespace 	
Grocerydelevery
 
. 
BusinessLayer '
.' (

Interfaces( 2
{ 
public 

	interface 
IGroceryServices %
{ 
Task

 
<

 
bool

 
>

 

PlaceOrder

 
(

 
string

 $
	ProductId

% .
,

. /
string

0 6
UserId

7 =
)

= >
;

> ?
Task 
< 
IEnumerable 
< 
Product  
>  !
>! "
GetAllProduct# 0
(0 1
)1 2
;2 3
Task 
< 
Product 
> 
GetProductById $
($ %
string% +
	ProductId, 5
)5 6
;6 7
Task 
< 
IEnumerable 
< 
Product  
>  !
>! " 
GetProductByCategory# 7
(7 8
int8 ;
CatId< A
)A B
;B C
Task 
< 
IEnumerable 
< 
Product  
>  !
>! "
ProductByName# 0
(0 1
string1 7
ProductName8 C
)C D
;D E
IList 
< 
Category 
> 
CategoryList $
($ %
)% &
;& '
} 
} �

_D:\IIHT\Task_6\Project-MongoDb\Grocerydelevery.BusinessLayer\Interfaces\IUserGroceryServices.cs
	namespace 	
Grocerydelevery
 
. 
BusinessLayer '
.' (

Interfaces( 2
{ 
public 

	interface  
IUserGroceryServices )
{ 
Task 
< 
ApplicationUser 
> 
Register &
(& '
ApplicationUser' 6
user7 ;
); <
;< =
Task		 
<		 
ApplicationUser		 
>		 
GetUserById		 )
(		) *
string		* 0
UserId		1 7
)		7 8
;		8 9
Task

 
<

 
ApplicationUser

 
>

 

UpdateUser

 (
(

( )
string

) /
UserId

0 6
,

6 7
ApplicationUser

8 G
user

H L
)

L M
;

M N
Task 
< 
ApplicationUser 
> 
Login #
(# $
string$ *
Email+ 0
,0 1
string2 8
password9 A
)A B
;B C
Task 
< 
bool 
> 
Logout 
( 
) 
; 
} 
} �2
]D:\IIHT\Task_6\Project-MongoDb\Grocerydelevery.BusinessLayer\Services\AdminGroceryServices.cs
	namespace 	
Grocerydelevery
 
. 
BusinessLayer '
.' (
Services( 0
{ 
public		 

class		  
AdminGroceryServices		 %
:		& '!
IAdminGroceryServices		( =
{

 
private 
readonly #
IAdminGroceryRepository 0
_adminRepository1 A
;A B
public  
AdminGroceryServices #
(# $#
IAdminGroceryRepository$ ;"
adminGroceryRepository< R
)R S
{ 	
_adminRepository 
= "
adminGroceryRepository 5
;5 6
} 	
public 
async 
Task 
< 
Category "
>" #
AddCategory$ /
(/ 0
Category0 8
category9 A
)A B
{ 	
var 
result 
= 
await 
_adminRepository /
./ 0
AddCategory0 ;
(; <
category< D
)D E
;E F
return 
result 
; 
} 	
public## 
async## 
Task## 
<## 
Product## !
>##! "

AddProduct### -
(##- .
Product##. 5
product##6 =
)##= >
{$$ 	
var%% 
result%% 
=%% 
await%% 
_adminRepository%% /
.%%/ 0

AddProduct%%0 :
(%%: ;
product%%; B
)%%B C
;%%C D
return&& 
result&& 
;&& 
}'' 	
public,, 
async,, 
Task,, 
<,, 
IEnumerable,, %
<,,% &
ProductOrder,,& 2
>,,2 3
>,,3 4
AllOrder,,5 =
(,,= >
),,> ?
{-- 	
return.. 
await.. 
_adminRepository.. )
...) *
AllOrder..* 2
(..2 3
)..3 4
;..4 5
}// 	
public44 
async44 
Task44 
<44 
IEnumerable44 %
<44% &
Product44& -
>44- .
>44. /

AllProduct440 :
(44: ;
)44; <
{55 	
return66 
await66 
_adminRepository66 )
.66) *

AllProduct66* 4
(664 5
)665 6
;666 7
}88 	
public== 
Task== 
<== 
IEnumerable== 
<==  
ApplicationUser==  /
>==/ 0
>==0 1

GetAllUser==2 <
(==< =
)=== >
{>> 	
var?? 
result?? 
=?? 
_adminRepository?? )
.??) *

GetAllUser??* 4
(??4 5
)??5 6
;??6 7
return@@ 
result@@ 
;@@ 
}AA 	
publicGG 
TaskGG 
<GG 
CategoryGG 
>GG 
GetCategoryByIdGG -
(GG- .
stringGG. 4
IdGG5 7
)GG7 8
{HH 	
varII 
resultII 
=II 
_adminRepositoryII )
.II) *
GetCategoryByIdII* 9
(II9 :
IdII: <
)II< =
;II= >
returnJJ 
resultJJ 
;JJ 
}KK 	
publicQQ 
TaskQQ 
<QQ 
ProductOrderQQ  
>QQ  !
GetOrderByIdQQ" .
(QQ. /
stringQQ/ 5
OrderIdQQ6 =
)QQ= >
{RR 	
varSS 
resultSS 
=SS 
_adminRepositorySS )
.SS) *
GetOrderByIdSS* 6
(SS6 7
OrderIdSS7 >
)SS> ?
;SS? @
returnTT 
resultTT 
;TT 
}UU 	
public[[ 
Task[[ 
<[[ 
Product[[ 
>[[ 
GetProductById[[ +
([[+ ,
string[[, 2
	ProductId[[3 <
)[[< =
{\\ 	
var]] 
result]] 
=]] 
_adminRepository]] )
.]]) *
GetProductById]]* 8
(]]8 9
	ProductId]]9 B
)]]B C
;]]C D
return^^ 
result^^ 
;^^ 
}__ 	
publicee 
asyncee 
Taskee 
<ee 
boolee 
>ee 
RemoveCategoryee  .
(ee. /
stringee/ 5
Idee6 8
)ee8 9
{ff 	
returngg 
awaitgg 
_adminRepositorygg )
.gg) *
RemoveCategorygg* 8
(gg8 9
Idgg9 ;
)gg; <
;gg< =
}hh 	
publicnn 
asyncnn 
Tasknn 
<nn 
boolnn 
>nn 
RemoveProductnn  -
(nn- .
stringnn. 4
Idnn5 7
)nn7 8
{oo 	
returnpp 
awaitpp 
_adminRepositorypp )
.pp) *
RemoveProductpp* 7
(pp7 8
Idpp8 :
)pp: ;
;pp; <
}qq 	
publicxx 
Taskxx 
<xx 
Categoryxx 
>xx 
UpdateCategoryxx ,
(xx, -
stringxx- 3
Idxx4 6
,xx6 7
Categoryxx8 @
categoryxxA I
)xxI J
{yy 	
varzz 
resultzz 
=zz 
_adminRepositoryzz )
.zz) *
UpdateCategoryzz* 8
(zz8 9
Idzz9 ;
,zz; <
categoryzz= E
)zzE F
;zzF G
return{{ 
result{{ 
;{{ 
}|| 	
public
�� 
Task
�� 
<
�� 
Product
�� 
>
�� 
UpdateProduct
�� *
(
��* +
string
��+ 1
	ProductId
��2 ;
,
��; <
Product
��= D
product
��E L
)
��L M
{
�� 	
var
�� 
result
�� 
=
�� 
_adminRepository
�� )
.
��) *
UpdateProduct
��* 7
(
��7 8
	ProductId
��8 A
,
��A B
product
��C J
)
��J K
;
��K L
return
�� 
result
�� 
;
�� 
}
�� 	
}
�� 
}�� �
XD:\IIHT\Task_6\Project-MongoDb\Grocerydelevery.BusinessLayer\Services\GroceryServices.cs
	namespace 	
Grocerydelevery
 
. 
BusinessLayer '
.' (
Services( 0
{ 
public		 

class		 
GroceryServices		  
:		! "
IGroceryServices		# 3
{

 
private 
readonly 
IGroceryRepository +
_groceryRepository, >
;> ?
public 
GroceryServices 
( 
IGroceryRepository 1
groceryRepository2 C
)C D
{ 	
_groceryRepository 
=  
groceryRepository! 2
;2 3
} 	
public 
Task 
< 
IEnumerable 
<  
Product  '
>' (
>( )
GetAllProduct* 7
(7 8
)8 9
{ 	
var 
result 
= 
_groceryRepository +
.+ ,
GetAllProduct, 9
(9 :
): ;
;; <
return 
result 
; 
} 	
public!! 
Task!! 
<!! 
Product!! 
>!! 
GetProductById!! +
(!!+ ,
string!!, 2
	ProductId!!3 <
)!!< =
{"" 	
var## 
result## 
=## 
_groceryRepository## +
.##+ ,
GetProductById##, :
(##: ;
	ProductId##; D
)##D E
;##E F
return$$ 
result$$ 
;$$ 
}%% 	
public** 
IList** 
<** 
Category** 
>** 
CategoryList** +
(**+ ,
)**, -
{++ 	
var,, 
result,, 
=,, 
_groceryRepository,, +
.,,+ ,
CategoryList,,, 8
(,,8 9
),,9 :
;,,: ;
return-- 
result-- 
;-- 
}.. 	
public44 
Task44 
<44 
IEnumerable44 
<44  
Product44  '
>44' (
>44( )
ProductByName44* 7
(447 8
string448 >
ProductName44? J
)44J K
{55 	
var66 
result66 
=66 
_groceryRepository66 +
.66+ ,
ProductByName66, 9
(669 :
ProductName66: E
)66E F
;66F G
return77 
result77 
;77 
}88 	
public>> 
Task>> 
<>> 
IEnumerable>> 
<>>  
Product>>  '
>>>' (
>>>( ) 
GetProductByCategory>>* >
(>>> ?
int>>? B
CatId>>C H
)>>H I
{?? 	
var@@ 
result@@ 
=@@ 
_groceryRepository@@ +
.@@+ , 
GetProductByCategory@@, @
(@@@ A
CatId@@A F
)@@F G
;@@G H
returnAA 
resultAA 
;AA 
}BB 	
publicII 
TaskII 
<II 
boolII 
>II 

PlaceOrderII $
(II$ %
stringII% +
	ProductIdII, 5
,II5 6
stringII7 =
UserIdII> D
)IID E
{JJ 	
varKK 
resultKK 
=KK 
_groceryRepositoryKK +
.KK+ ,

PlaceOrderKK, 6
(KK6 7
	ProductIdKK7 @
,KK@ A
UserIdKKB H
)KKH I
;KKI J
returnLL 
resultLL 
;LL 
}MM 	
}NN 
}OO Ϋ
jD:\IIHT\Task_6\Project-MongoDb\Grocerydelevery.BusinessLayer\Services\Repository\AdminGroceryRepository.cs
	namespace

 	
Grocerydelevery


 
.

 
BusinessLayer

 '
.

' (
Services

( 0
.

0 1

Repository

1 ;
{ 
public 

class "
AdminGroceryRepository '
:( )#
IAdminGroceryRepository* A
{ 
private 
readonly 
IMongoDBContext (
_mongoContext) 6
;6 7
private 
IMongoCollection  
<  !
Product! (
>( ) 
_dbproductCollection* >
;> ?
private 
IMongoCollection  
<  !
ProductOrder! -
>- .%
_dbproductorderCollection/ H
;H I
private 
IMongoCollection  
<  !
Category! )
>) *
_dbcatCollection+ ;
;; <
public "
AdminGroceryRepository %
(% &
IMongoDBContext& 5
context6 =
)= >
{ 	
_mongoContext 
= 
context #
;# $ 
_dbproductCollection  
=! "
_mongoContext# 0
.0 1
GetCollection1 >
<> ?
Product? F
>F G
(G H
typeofH N
(N O
ProductO V
)V W
.W X
NameX \
)\ ]
;] ^%
_dbproductorderCollection %
=& '
_mongoContext( 5
.5 6
GetCollection6 C
<C D
ProductOrderD P
>P Q
(Q R
typeofR X
(X Y
ProductOrderY e
)e f
.f g
Nameg k
)k l
;l m
_dbcatCollection 
= 
_mongoContext ,
., -
GetCollection- :
<: ;
Category; C
>C D
(D E
typeofE K
(K L
CategoryL T
)T U
.U V
NameV Z
)Z [
;[ \
} 	
public%% 
async%% 
Task%% 
<%% 
Category%% "
>%%" #
AddCategory%%$ /
(%%/ 0
Category%%0 8
category%%9 A
)%%A B
{&& 	
try'' 
{(( 
if)) 
()) 
category)) 
==)) 
null))  $
)))$ %
{** 
throw++ 
new++ !
ArgumentNullException++ 3
(++3 4
typeof++4 :
(++: ;
Category++; C
)++C D
.++D E
Name++E I
+++J K
$str++L \
)++\ ]
;++] ^
},, 
_dbcatCollection--  
=--! "
_mongoContext--# 0
.--0 1
GetCollection--1 >
<--> ?
Category--? G
>--G H
(--H I
typeof--I O
(--O P
Category--P X
)--X Y
.--Y Z
Name--Z ^
)--^ _
;--_ `
await.. 
_dbcatCollection.. &
...& '
InsertOneAsync..' 5
(..5 6
category..6 >
)..> ?
;..? @
}// 
catch00 
(00 
	Exception00 
ex00 
)00  
{11 
throw22 
(22 
ex22 
)22 
;22 
}33 
return44 
category44 
;44 
}55 	
public;; 
async;; 
Task;; 
<;; 
Product;; !
>;;! "

AddProduct;;# -
(;;- .
Product;;. 5
product;;6 =
);;= >
{<< 	
try== 
{>> 
if?? 
(?? 
product?? 
==?? 
null?? #
)??# $
{@@ 
throwAA 
newAA !
ArgumentNullExceptionAA 3
(AA3 4
typeofAA4 :
(AA: ;
ProductAA; B
)AAB C
.AAC D
NameAAD H
+AAI J
$strAAK [
)AA[ \
;AA\ ]
}BB  
_dbproductCollectionCC $
=CC% &
_mongoContextCC' 4
.CC4 5
GetCollectionCC5 B
<CCB C
ProductCCC J
>CCJ K
(CCK L
typeofCCL R
(CCR S
ProductCCS Z
)CCZ [
.CC[ \
NameCC\ `
)CC` a
;CCa b
awaitDD  
_dbproductCollectionDD *
.DD* +
InsertOneAsyncDD+ 9
(DD9 :
productDD: A
)DDA B
;DDB C
}EE 
catchFF 
(FF 
	ExceptionFF 
exFF 
)FF  
{GG !
ExceptionDispatchInfoHH %
.HH% &
CaptureHH& -
(HH- .
exHH. 0
.HH0 1
InnerExceptionHH1 ?
)HH? @
.HH@ A
ThrowHHA F
(HHF G
)HHG H
;HHH I
}II 
returnJJ 
productJJ 
;JJ 
}KK 	
publicPP 
asyncPP 
TaskPP 
<PP 
IEnumerablePP %
<PP% &
ProductOrderPP& 2
>PP2 3
>PP3 4
AllOrderPP5 =
(PP= >
)PP> ?
{QQ 	
tryRR 
{SS 
varTT 
listTT 
=TT 
_mongoContextTT (
.TT( )
GetCollectionTT) 6
<TT6 7
ProductOrderTT7 C
>TTC D
(TTD E
$strTTE S
)TTS T
.UU 
FindUU 
(UU 
BuildersUU 
<UU 
ProductOrderUU +
>UU+ ,
.UU, -
FilterUU- 3
.UU3 4
EmptyUU4 9
,UU9 :
nullUU; ?
)UU? @
.VV 
SortByDescendingVV !
(VV! "
eVV" #
=>VV$ &
eVV' (
.VV( )
OrderIdVV) 0
)VV0 1
;VV1 2
returnWW 
awaitWW 
listWW !
.WW! "
ToListAsyncWW" -
(WW- .
)WW. /
;WW/ 0
}XX 
catchYY 
(YY 
	ExceptionYY 
exYY 
)YY  
{ZZ 
throw[[ 
([[ 
ex[[ 
)[[ 
;[[ 
}\\ 
}]] 	
publicbb 
asyncbb 
Taskbb 
<bb 
IEnumerablebb %
<bb% &
Productbb& -
>bb- .
>bb. /

AllProductbb0 :
(bb: ;
)bb; <
{cc 	
trydd 
{ee 
varff 
listff 
=ff 
_mongoContextff (
.ff( )
GetCollectionff) 6
<ff6 7
Productff7 >
>ff> ?
(ff? @
$strff@ I
)ffI J
.gg 
Findgg 
(gg 
Buildersgg 
<gg 
Productgg &
>gg& '
.gg' (
Filtergg( .
.gg. /
Emptygg/ 4
,gg4 5
nullgg6 :
)gg: ;
.hh 
SortByDescendinghh !
(hh! "
ehh" #
=>hh$ &
ehh' (
.hh( )
ProductNamehh) 4
)hh4 5
;hh5 6
returnii 
awaitii 
listii !
.ii! "
ToListAsyncii" -
(ii- .
)ii. /
;ii/ 0
}jj 
catchkk 
(kk 
	Exceptionkk 
exkk 
)kk  
{ll 
throwmm 
(mm 
exmm 
)mm 
;mm 
}nn 
}oo 	
publictt 
asynctt 
Tasktt 
<tt 
IEnumerablett %
<tt% &
ApplicationUsertt& 5
>tt5 6
>tt6 7

GetAllUsertt8 B
(ttB C
)ttC D
{uu 	
tryvv 
{ww 
varxx 
listxx 
=xx 
_mongoContextxx (
.xx( )
GetCollectionxx) 6
<xx6 7
ApplicationUserxx7 F
>xxF G
(xxG H
$strxxH Y
)xxY Z
.yy 
Findyy 
(yy 
Buildersyy 
<yy 
ApplicationUseryy .
>yy. /
.yy/ 0
Filteryy0 6
.yy6 7
Emptyyy7 <
,yy< =
nullyy> B
)yyB C
.zz 
SortByDescendingzz !
(zz! "
ezz" #
=>zz$ &
ezz' (
.zz( )
UserIdzz) /
)zz/ 0
;zz0 1
return{{ 
await{{ 
list{{ !
.{{! "
ToListAsync{{" -
({{- .
){{. /
;{{/ 0
}|| 
catch}} 
(}} 
	Exception}} 
ex}} 
)}}  
{~~ 
throw 
( 
ex 
) 
; 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
Category
�� "
>
��" #
GetCategoryById
��$ 3
(
��3 4
string
��4 :
Id
��; =
)
��= >
{
�� 	
try
�� 
{
�� 
var
�� 
objectId
�� 
=
�� 
new
�� "
ObjectId
��# +
(
��+ ,
Id
��, .
)
��. /
;
��/ 0
FilterDefinition
��  
<
��  !
Category
��! )
>
��) *
filter
��+ 1
=
��2 3
Builders
��4 <
<
��< =
Category
��= E
>
��E F
.
��F G
Filter
��G M
.
��M N
Eq
��N P
(
��P Q
$str
��Q U
,
��U V
objectId
��W _
)
��_ `
;
��` a
_dbcatCollection
��  
=
��! "
_mongoContext
��# 0
.
��0 1
GetCollection
��1 >
<
��> ?
Category
��? G
>
��G H
(
��H I
typeof
��I O
(
��O P
Category
��P X
)
��X Y
.
��Y Z
Name
��Z ^
)
��^ _
;
��_ `
return
�� 
await
�� 
_dbcatCollection
�� -
.
��- .
	FindAsync
��. 7
(
��7 8
filter
��8 >
)
��> ?
.
��? @
Result
��@ F
.
��F G!
FirstOrDefaultAsync
��G Z
(
��Z [
)
��[ \
;
��\ ]
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
throw
�� 
(
�� 
ex
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ProductOrder
�� &
>
��& '
GetOrderById
��( 4
(
��4 5
string
��5 ;
OrderId
��< C
)
��C D
{
�� 	
try
�� 
{
�� 
var
�� 
objectId
�� 
=
�� 
new
�� "
ObjectId
��# +
(
��+ ,
OrderId
��, 3
)
��3 4
;
��4 5
FilterDefinition
��  
<
��  !
ProductOrder
��! -
>
��- .
filter
��/ 5
=
��6 7
Builders
��8 @
<
��@ A
ProductOrder
��A M
>
��M N
.
��N O
Filter
��O U
.
��U V
Eq
��V X
(
��X Y
$str
��Y b
,
��b c
objectId
��d l
)
��l m
;
��m n'
_dbproductorderCollection
�� )
=
��* +
_mongoContext
��, 9
.
��9 :
GetCollection
��: G
<
��G H
ProductOrder
��H T
>
��T U
(
��U V
typeof
��V \
(
��\ ]
ProductOrder
��] i
)
��i j
.
��j k
Name
��k o
)
��o p
;
��p q
return
�� 
await
�� '
_dbproductorderCollection
�� 6
.
��6 7
	FindAsync
��7 @
(
��@ A
filter
��A G
)
��G H
.
��H I
Result
��I O
.
��O P!
FirstOrDefaultAsync
��P c
(
��c d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
throw
�� 
(
�� 
ex
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
Product
�� !
>
��! "
GetProductById
��# 1
(
��1 2
string
��2 8
	ProductId
��9 B
)
��B C
{
�� 	
try
�� 
{
�� 
var
�� 
objectId
�� 
=
�� 
new
�� "
ObjectId
��# +
(
��+ ,
	ProductId
��, 5
)
��5 6
;
��6 7
FilterDefinition
��  
<
��  !
Product
��! (
>
��( )
filter
��* 0
=
��1 2
Builders
��3 ;
<
��; <
Product
��< C
>
��C D
.
��D E
Filter
��E K
.
��K L
Eq
��L N
(
��N O
$str
��O Z
,
��Z [
objectId
��\ d
)
��d e
;
��e f"
_dbproductCollection
�� $
=
��% &
_mongoContext
��' 4
.
��4 5
GetCollection
��5 B
<
��B C
Product
��C J
>
��J K
(
��K L
typeof
��L R
(
��R S
Product
��S Z
)
��Z [
.
��[ \
Name
��\ `
)
��` a
;
��a b
return
�� 
await
�� "
_dbproductCollection
�� 1
.
��1 2
	FindAsync
��2 ;
(
��; <
filter
��< B
)
��B C
.
��C D
Result
��D J
.
��J K!
FirstOrDefaultAsync
��K ^
(
��^ _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
throw
�� 
(
�� 
ex
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 
RemoveCategory
��  .
(
��. /
string
��/ 5
Id
��6 8
)
��8 9
{
�� 	
try
�� 
{
�� 
var
�� 
objectId
�� 
=
�� 
new
�� "
ObjectId
��# +
(
��+ ,
Id
��, .
)
��. /
;
��/ 0
FilterDefinition
��  
<
��  !
Category
��! )
>
��) *
filter
��+ 1
=
��2 3
Builders
��4 <
<
��< =
Category
��= E
>
��E F
.
��F G
Filter
��G M
.
��M N
Eq
��N P
(
��P Q
$str
��Q U
,
��U V
objectId
��W _
)
��_ `
;
��` a
var
�� 
result
�� 
=
�� 
await
�� "
_dbcatCollection
��# 3
.
��3 4
DeleteOneAsync
��4 B
(
��B C
filter
��C I
)
��I J
;
��J K
return
�� 
result
�� 
.
�� 
DeletedCount
�� *
>
��+ ,
$num
��- .
;
��. /
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
throw
�� 
(
�� 
ex
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 
RemoveProduct
��  -
(
��- .
string
��. 4
	ProductId
��5 >
)
��> ?
{
�� 	
try
�� 
{
�� 
var
�� 
objectId
�� 
=
�� 
new
�� "
ObjectId
��# +
(
��+ ,
	ProductId
��, 5
)
��5 6
;
��6 7
FilterDefinition
��  
<
��  !
Product
��! (
>
��( )
filter
��* 0
=
��1 2
Builders
��3 ;
<
��; <
Product
��< C
>
��C D
.
��D E
Filter
��E K
.
��K L
Eq
��L N
(
��N O
$str
��O Z
,
��Z [
objectId
��\ d
)
��d e
;
��e f
var
�� 
result
�� 
=
�� 
await
�� ""
_dbproductCollection
��# 7
.
��7 8
DeleteOneAsync
��8 F
(
��F G
filter
��G M
)
��M N
;
��N O
return
�� 
result
�� 
.
�� 
DeletedCount
�� *
>
��+ ,
$num
��- .
;
��. /
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
throw
�� 
(
�� 
ex
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
Category
�� "
>
��" #
UpdateCategory
��$ 2
(
��2 3
string
��3 9
Id
��: <
,
��< =
Category
��> F
category
��G O
)
��O P
{
�� 	
if
�� 
(
�� 
category
�� 
==
�� 
null
��  
&&
��! #
Id
��$ &
==
��' )
null
��* .
)
��. /
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
typeof
��0 6
(
��6 7
Category
��7 ?
)
��? @
.
��@ A
Name
��A E
+
��F G
$str
��H m
)
��m n
;
��n o
}
�� 
var
�� 
update
�� 
=
�� 
await
�� 
_dbcatCollection
�� /
.
��/ 0#
FindOneAndUpdateAsync
��0 E
(
��E F
Builders
��F N
<
��N O
Category
��O W
>
��W X
.
��X Y
Filter
�� 
.
�� 
Eq
�� 
(
�� 
$str
�� 
,
�� 
category
��  (
.
��( )
Id
��) +
)
��+ ,
,
��, -
Builders
��. 6
<
��6 7
Category
��7 ?
>
��? @
.
��@ A
Update
�� 
.
�� 
Set
�� 
(
�� 
$str
�� "
,
��" #
category
��$ ,
.
��, -
Title
��- 2
)
��2 3
.
��3 4
Set
��4 7
(
��7 8
$str
��8 ?
,
��? @
category
��A I
.
��I J
CatId
��J O
)
��O P
.
��P Q
Set
��Q T
(
��T U
$str
��U Z
,
��Z [
category
��\ d
.
��d e
Url
��e h
)
��h i
.
�� 
Set
�� 
(
�� 
$str
�� &
,
��& '
category
��( 0
.
��0 1
OpenInNewWindow
��1 @
)
��@ A
)
��A B
;
��B C
return
�� 
update
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
Product
�� !
>
��! "
UpdateProduct
��# 0
(
��0 1
string
��1 7
Id
��8 :
,
��: ;
Product
��< C
product
��D K
)
��K L
{
�� 	
if
�� 
(
�� 
product
�� 
==
�� 
null
�� 
&&
��  "
Id
��# %
==
��& (
null
��) -
)
��- .
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
typeof
��0 6
(
��6 7
Product
��7 >
)
��> ?
.
��? @
Name
��@ D
+
��E F
$str
��G l
)
��l m
;
��m n
}
�� 
var
�� 
update
�� 
=
�� 
await
�� "
_dbproductCollection
�� 3
.
��3 4#
FindOneAndUpdateAsync
��4 I
(
��I J
Builders
��J R
<
��R S
Product
��S Z
>
��Z [
.
��[ \
Filter
�� 
.
�� 
Eq
�� 
(
�� 
$str
�� %
,
��% &
product
��' .
.
��. /
	ProductId
��/ 8
)
��8 9
,
��9 :
Builders
��; C
<
��C D
Product
��D K
>
��K L
.
��L M
Update
�� 
.
�� 
Set
�� 
(
�� 
$str
�� (
,
��( )
product
��* 1
.
��1 2
ProductName
��2 =
)
��= >
.
��> ?
Set
��? B
(
��B C
$str
��C P
,
��P Q
product
��R Y
.
��Y Z
Description
��Z e
)
��e f
.
��f g
Set
��g j
(
��j k
$str
��k s
,
��s t
product
��u |
.
��| }
Amount��} �
)��� �
.
�� 
Set
�� 
(
�� 
$str
�� 
,
�� 
product
�� %
.
��% &
stock
��& +
)
��+ ,
.
��, -
Set
��- 0
(
��0 1
$str
��1 8
,
��8 9
product
��: A
.
��A B
CatId
��B G
)
��G H
)
��H I
;
��I J
return
�� 
update
�� 
;
�� 
}
�� 	
}
�� 
}�� �g
eD:\IIHT\Task_6\Project-MongoDb\Grocerydelevery.BusinessLayer\Services\Repository\GroceryRepository.cs
	namespace		 	
Grocerydelevery		
 
.		 
BusinessLayer		 '
.		' (
Services		( 0
.		0 1

Repository		1 ;
{

 
public 

class 
GroceryRepository "
:# $
IGroceryRepository% 7
{ 
private 
readonly 
IMongoDBContext (
_mongoContext) 6
;6 7
private 
IMongoCollection  
<  !
ApplicationUser! 0
>0 1
_dbCollection2 ?
;? @
private 
IMongoCollection  
<  !
Product! (
>( ) 
_dbproductCollection* >
;> ?
private 
IMongoCollection  
<  !
Category! )
>) *
_dbcatCollection+ ;
;; <
private 
IMongoCollection  
<  !
ProductOrder! -
>- .%
_dbproductorderCollection/ H
;H I!
UserGroceryRepository !
usergroceryRepository 3
;3 4
public 
GroceryRepository  
(  !
IMongoDBContext! 0
context1 8
)8 9
{ 	
_mongoContext 
= 
context #
;# $
_dbCollection 
= 
_mongoContext )
.) *
GetCollection* 7
<7 8
ApplicationUser8 G
>G H
(H I
typeofI O
(O P
ApplicationUserP _
)_ `
.` a
Namea e
)e f
;f g 
_dbproductCollection  
=! "
_mongoContext# 0
.0 1
GetCollection1 >
<> ?
Product? F
>F G
(G H
typeofH N
(N O
ProductO V
)V W
.W X
NameX \
)\ ]
;] ^
_dbcatCollection 
= 
_mongoContext ,
., -
GetCollection- :
<: ;
Category; C
>C D
(D E
typeofE K
(K L
CategoryL T
)T U
.U V
NameV Z
)Z [
;[ \%
_dbproductorderCollection %
=& '
_mongoContext( 5
.5 6
GetCollection6 C
<C D
ProductOrderD P
>P Q
(Q R
typeofR X
(X Y
ProductOrderY e
)e f
.f g
Nameg k
)k l
;l m
}   	
public%% 
async%% 
Task%% 
<%% 
IEnumerable%% %
<%%% &
Product%%& -
>%%- .
>%%. /
GetAllProduct%%0 =
(%%= >
)%%> ?
{&& 	
try'' 
{(( 
var)) 
list)) 
=)) 
_mongoContext)) (
.))( )
GetCollection))) 6
<))6 7
Product))7 >
>))> ?
())? @
$str))@ I
)))I J
.** 
Find** 
(** 
Builders** 
<** 
Product** &
>**& '
.**' (
Filter**( .
.**. /
Empty**/ 4
,**4 5
null**6 :
)**: ;
.++ 
SortByDescending++ !
(++! "
e++" #
=>++$ &
e++' (
.++( )
ProductName++) 4
)++4 5
;++5 6
return,, 
await,, 
list,, !
.,,! "
ToListAsync,," -
(,,- .
),,. /
;,,/ 0
}-- 
catch.. 
(.. 
	Exception.. 
ex.. 
)..  
{// 
throw00 
(00 
ex00 
)00 
;00 
}11 
}22 	
public88 
async88 
Task88 
<88 
Product88 !
>88! "
GetProductById88# 1
(881 2
string882 8
	ProductId889 B
)88B C
{99 	
try:: 
{;; 
var<< 
objectId<< 
=<< 
new<< "
ObjectId<<# +
(<<+ ,
	ProductId<<, 5
)<<5 6
;<<6 7
FilterDefinition==  
<==  !
Product==! (
>==( )
filter==* 0
===1 2
Builders==3 ;
<==; <
Product==< C
>==C D
.==D E
Filter==E K
.==K L
Eq==L N
(==N O
$str==O Z
,==Z [
objectId==\ d
)==d e
;==e f 
_dbproductCollection>> $
=>>% &
_mongoContext>>' 4
.>>4 5
GetCollection>>5 B
<>>B C
Product>>C J
>>>J K
(>>K L
typeof>>L R
(>>R S
Product>>S Z
)>>Z [
.>>[ \
Name>>\ `
)>>` a
;>>a b
return?? 
await??  
_dbproductCollection?? 1
.??1 2
	FindAsync??2 ;
(??; <
filter??< B
)??B C
.??C D
Result??D J
.??J K
FirstOrDefaultAsync??K ^
(??^ _
)??_ `
;??` a
}@@ 
catchAA 
(AA 
	ExceptionAA 
exAA 
)AA  
{BB 
throwCC 
(CC 
exCC 
)CC 
;CC 
}DD 
}EE 	
publicJJ 
IListJJ 
<JJ 
CategoryJJ 
>JJ 
CategoryListJJ +
(JJ+ ,
)JJ, -
{KK 	
tryLL 
{MM 
varNN 
listNN 
=NN 
_mongoContextNN (
.NN( )
GetCollectionNN) 6
<NN6 7
CategoryNN7 ?
>NN? @
(NN@ A
$strNNA K
)NNK L
.OO 
FindOO 
(OO 
BuildersOO 
<OO 
CategoryOO '
>OO' (
.OO( )
FilterOO) /
.OO/ 0
EmptyOO0 5
,OO5 6
nullOO7 ;
)OO; <
.PP 
SortByDescendingPP !
(PP! "
ePP" #
=>PP$ &
ePP' (
.PP( )
TitlePP) .
)PP. /
;PP/ 0
returnQQ 
listQQ 
.QQ 
ToListQQ "
(QQ" #
)QQ# $
;QQ$ %
}RR 
catchSS 
(SS 
	ExceptionSS 
exSS 
)SS  
{TT 
throwUU 
(UU 
exUU 
)UU 
;UU 
}VV 
}WW 	
public^^ 
async^^ 
Task^^ 
<^^ 
bool^^ 
>^^ 

PlaceOrder^^  *
(^^* +
string^^+ 1
	ProductId^^2 ;
,^^; <
string^^= C
UserId^^D J
)^^J K
{__ 	
try`` 
{aa 
varbb 
resbb 
=bb 
falsebb 
;bb  
varcc 
objectIdcc 
=cc 
newcc "
ObjectIdcc# +
(cc+ ,
	ProductIdcc, 5
)cc5 6
;cc6 7
FilterDefinitiondd  
<dd  !
Productdd! (
>dd( )
filterdd* 0
=dd1 2
Buildersdd3 ;
<dd; <
Productdd< C
>ddC D
.ddD E
FilterddE K
.ddK L
EqddL N
(ddN O
$strddO Z
,ddZ [
objectIddd\ d
)ddd e
;dde f 
_dbproductCollectionee $
=ee% &
_mongoContextee' 4
.ee4 5
GetCollectionee5 B
<eeB C
ProducteeC J
>eeJ K
(eeK L
typeofeeL R
(eeR S
ProducteeS Z
)eeZ [
.ee[ \
Nameee\ `
)ee` a
;eea b
varff 
productff 
=ff 
awaitff $ 
_dbproductCollectionff% 9
.ff9 :
	FindAsyncff: C
(ffC D
filterffD J
)ffJ K
.ffK L
ResultffL R
.ffR S
FirstOrDefaultAsyncffS f
(fff g
)ffg h
;ffh i
ifgg 
(gg 
productgg 
!=gg 
nullgg "
)gg" #
{hh 
varii 
orderii 
=ii 
newii  #
ProductOrderii$ 0
(ii0 1
)ii1 2
{jj 
	ProductIdkk !
=kk" #
productkk$ +
.kk+ ,
	ProductIdkk, 5
,kk5 6
UserIdll 
=ll  
UserIdll! '
}mm 
;mm %
_dbproductorderCollectionnn -
=nn. /
_mongoContextnn0 =
.nn= >
GetCollectionnn> K
<nnK L
ProductOrdernnL X
>nnX Y
(nnY Z
typeofnnZ `
(nn` a
ProductOrdernna m
)nnm n
.nnn o
Namenno s
)nns t
;nnt u
awaitoo %
_dbproductorderCollectionoo 3
.oo3 4
InsertOneAsyncoo4 B
(ooB C
orderooC H
)ooH I
;ooI J
}pp 
resqq 
=qq 
trueqq 
;qq 
returnrr 
resrr 
;rr 
}ss 
catchtt 
(tt 
	Exceptiontt 
extt 
)tt  
{uu 
throwvv 
(vv 
exvv 
)vv 
;vv 
}ww 
}xx 	
public~~ 
async~~ 
Task~~ 
<~~ 
IEnumerable~~ %
<~~% &
Product~~& -
>~~- .
>~~. /
ProductByName~~0 =
(~~= >
string~~> D
ProductName~~E P
)~~P Q
{ 	
try
�� 
{
�� 
var
�� 
filterBuilder
�� !
=
��" #
new
��$ '%
FilterDefinitionBuilder
��( ?
<
��? @
Product
��@ G
>
��G H
(
��H I
)
��I J
;
��J K
var
�� 
productName
�� 
=
��  !
filterBuilder
��" /
.
��/ 0
Eq
��0 2
(
��2 3
s
��3 4
=>
��5 7
s
��8 9
.
��9 :
ProductName
��: E
,
��E F
ProductName
��G R
.
��R S
ToString
��S [
(
��[ \
)
��\ ]
)
��] ^
;
��^ _"
_dbproductCollection
�� $
=
��% &
_mongoContext
��' 4
.
��4 5
GetCollection
��5 B
<
��B C
Product
��C J
>
��J K
(
��K L
typeof
��L R
(
��R S
Product
��S Z
)
��Z [
.
��[ \
Name
��\ `
)
��` a
;
��a b
var
�� 
result
�� 
=
�� 
await
�� ""
_dbproductCollection
��# 7
.
��7 8
	FindAsync
��8 A
(
��A B
productName
��B M
)
��M N
.
��N O
Result
��O U
.
��U V
ToListAsync
��V a
(
��a b
)
��b c
;
��c d
return
�� 
result
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
throw
�� 
(
�� 
ex
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IEnumerable
�� %
<
��% &
Product
��& -
>
��- .
>
��. /"
GetProductByCategory
��0 D
(
��D E
int
��E H
CatId
��I N
)
��N O
{
�� 	
try
�� 
{
�� 
FilterDefinition
��  
<
��  !
Product
��! (
>
��( )
filter
��* 0
=
��1 2
Builders
��3 ;
<
��; <
Product
��< C
>
��C D
.
��D E
Filter
��E K
.
��K L
Eq
��L N
(
��N O
$str
��O V
,
��V W
CatId
��X ]
)
��] ^
;
��^ _"
_dbproductCollection
�� $
=
��% &
_mongoContext
��' 4
.
��4 5
GetCollection
��5 B
<
��B C
Product
��C J
>
��J K
(
��K L
typeof
��L R
(
��R S
Product
��S Z
)
��Z [
.
��[ \
Name
��\ `
)
��` a
;
��a b
return
�� 
await
�� "
_dbproductCollection
�� 1
.
��1 2
	FindAsync
��2 ;
(
��; <
filter
��< B
)
��B C
.
��C D
Result
��D J
.
��J K
ToListAsync
��K V
(
��V W
)
��W X
;
��X Y
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
throw
�� 
(
�� 
ex
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �
kD:\IIHT\Task_6\Project-MongoDb\Grocerydelevery.BusinessLayer\Services\Repository\IAdminGroceryRepository.cs
	namespace 	
Grocerydelevery
 
. 
BusinessLayer '
.' (
Services( 0
.0 1

Repository1 ;
{ 
public 

	interface #
IAdminGroceryRepository ,
{ 
Task		 
<		 
Category		 
>		 
AddCategory		 "
(		" #
Category		# +
category		, 4
)		4 5
;		5 6
Task

 
<

 
bool

 
>

 
RemoveCategory

 !
(

! "
string

" (
Id

) +
)

+ ,
;

, -
Task 
< 
Category 
> 
UpdateCategory %
(% &
string& ,
Id- /
,/ 0
Category1 9
category: B
)B C
;C D
Task 
< 
Product 
> 

AddProduct  
(  !
Product! (
product) 0
)0 1
;1 2
Task 
< 
bool 
> 
RemoveProduct  
(  !
string! '
	ProductId( 1
)1 2
;2 3
Task 
< 
Product 
> 
UpdateProduct #
(# $
string$ *
	ProductId+ 4
,4 5
Product6 =
product> E
)E F
;F G
Task 
< 
Category 
> 
GetCategoryById &
(& '
string' -
Id. 0
)0 1
;1 2
Task 
< 
Product 
> 
GetProductById $
($ %
string% +
	ProductId, 5
)5 6
;6 7
Task 
< 
IEnumerable 
< 
ProductOrder %
>% &
>& '
AllOrder( 0
(0 1
)1 2
;2 3
Task 
< 
ProductOrder 
> 
GetOrderById '
(' (
string( .
OrderId/ 6
)6 7
;7 8
Task 
< 
IEnumerable 
< 
Product  
>  !
>! "

AllProduct# -
(- .
). /
;/ 0
Task 
< 
IEnumerable 
< 
ApplicationUser (
>( )
>) *

GetAllUser+ 5
(5 6
)6 7
;7 8
} 
} �
fD:\IIHT\Task_6\Project-MongoDb\Grocerydelevery.BusinessLayer\Services\Repository\IGroceryRepository.cs
	namespace 	
Grocerydelevery
 
. 
BusinessLayer '
.' (
Services( 0
.0 1

Repository1 ;
{ 
public 

	interface 
IGroceryRepository '
{ 
Task

 
<

 
bool

 
>

 

PlaceOrder

 
(

 
string

 $
	ProductId

% .
,

. /
string

0 6
UserId

7 =
)

= >
;

> ?
Task 
< 
IEnumerable 
< 
Product  
>  !
>! "
GetAllProduct# 0
(0 1
)1 2
;2 3
Task 
< 
Product 
> 
GetProductById $
($ %
string% +
	ProductId, 5
)5 6
;6 7
Task 
< 
IEnumerable 
< 
Product  
>  !
>! " 
GetProductByCategory# 7
(7 8
int8 ;
CatId< A
)A B
;B C
Task 
< 
IEnumerable 
< 
Product  
>  !
>! "
ProductByName# 0
(0 1
string1 7
ProductName8 C
)C D
;D E
IList 
< 
Category 
> 
CategoryList $
($ %
)% &
;& '
} 
} �

jD:\IIHT\Task_6\Project-MongoDb\Grocerydelevery.BusinessLayer\Services\Repository\IUserGroceryRepository.cs
	namespace 	
Grocerydelevery
 
. 
BusinessLayer '
.' (
Services( 0
.0 1

Repository1 ;
{ 
public 

	interface "
IUserGroceryRepository +
{ 
Task 
< 
ApplicationUser 
> 
Register &
(& '
ApplicationUser' 6
user7 ;
); <
;< =
Task		 
<		 
ApplicationUser		 
>		 
GetUserById		 )
(		) *
string		* 0
UserId		1 7
)		7 8
;		8 9
Task

 
<

 
ApplicationUser

 
>

 

UpdateUser

 (
(

( )
string

) /
UserId

0 6
,

6 7
ApplicationUser

8 G
user

H L
)

L M
;

M N
Task 
< 
ApplicationUser 
> 
Login #
(# $
string$ *
Email+ 0
,0 1
string2 8
password9 A
)A B
;B C
Task 
< 
bool 
> 
Logout 
( 
) 
; 
} 
} �G
iD:\IIHT\Task_6\Project-MongoDb\Grocerydelevery.BusinessLayer\Services\Repository\UserGroceryRepository.cs
	namespace 	
Grocerydelevery
 
. 
BusinessLayer '
.' (
Services( 0
.0 1

Repository1 ;
{		 
public

 

class

 !
UserGroceryRepository

 &
:

' ("
IUserGroceryRepository

) ?
{ 
private 
readonly 
IMongoDBContext (
_mongoContext) 6
;6 7
private 
IMongoCollection  
<  !
ApplicationUser! 0
>0 1
_dbCollection2 ?
;? @
public !
UserGroceryRepository $
($ %
IMongoDBContext% 4
context5 <
)< =
{ 	
_mongoContext 
= 
context #
;# $
_dbCollection 
= 
_mongoContext )
.) *
GetCollection* 7
<7 8
ApplicationUser8 G
>G H
(H I
typeofI O
(O P
ApplicationUserP _
)_ `
.` a
Namea e
)e f
;f g
} 	
public 
async 
Task 
< 
ApplicationUser )
>) *
GetUserById+ 6
(6 7
string7 =
UserId> D
)D E
{ 	
try   
{!! 
var"" 
objectId"" 
="" 
new"" "
ObjectId""# +
(""+ ,
UserId"", 2
)""2 3
;""3 4
FilterDefinition##  
<##  !
ApplicationUser##! 0
>##0 1
filter##2 8
=##9 :
Builders##; C
<##C D
ApplicationUser##D S
>##S T
.##T U
Filter##U [
.##[ \
Eq##\ ^
(##^ _
$str##_ g
,##g h
objectId##i q
)##q r
;##r s
_dbCollection$$ 
=$$ 
_mongoContext$$  -
.$$- .
GetCollection$$. ;
<$$; <
ApplicationUser$$< K
>$$K L
($$L M
typeof$$M S
($$S T
ApplicationUser$$T c
)$$c d
.$$d e
Name$$e i
)$$i j
;$$j k
return%% 
await%% 
_dbCollection%% *
.%%* +
	FindAsync%%+ 4
(%%4 5
filter%%5 ;
)%%; <
.%%< =
Result%%= C
.%%C D
FirstOrDefaultAsync%%D W
(%%W X
)%%X Y
;%%Y Z
}&& 
catch'' 
('' 
	Exception'' 
ex'' 
)''  
{(( 
throw)) 
()) 
ex)) 
))) 
;)) 
}** 
}++ 	
public22 
async22 
Task22 
<22 
ApplicationUser22 )
>22) *
Login22+ 0
(220 1
string221 7
Email228 =
,22= >
string22? E
password22F N
)22N O
{33 	
try44 
{55 
var66 
email66 
=66 
Builders66 $
<66$ %
ApplicationUser66% 4
>664 5
.665 6
Filter666 <
.66< =
Eq66= ?
(66? @
$str66@ G
,66G H
Email66I N
)66N O
;66O P
var77 
pass77 
=77 
Builders77 #
<77# $
ApplicationUser77$ 3
>773 4
.774 5
Filter775 ;
.77; <
Eq77< >
(77> ?
$str77? I
,77I J
password77K S
)77S T
;77T U
var88 
filterCriteria88 "
=88# $
Builders88% -
<88- .
ApplicationUser88. =
>88= >
.88> ?
Filter88? E
.88E F
And88F I
(88I J
email88J O
,88O P
pass88Q U
)88U V
;88V W
var99 
userFind99 
=99 
await99 $
_dbCollection99% 2
.992 3
	FindAsync993 <
(99< =
filterCriteria99= K
)99K L
;99L M
return:: 
userFind:: 
.::  
SingleOrDefault::  /
(::/ 0
)::0 1
;::1 2
};; 
catch<< 
(<< 
	Exception<< 
ex<< 
)<<  
{== 
throw>> 
(>> 
ex>> 
)>> 
;>> 
}?? 
}@@ 	
publicEE 
TaskEE 
<EE 
boolEE 
>EE 
LogoutEE  
(EE  !
)EE! "
{FF 	
throwGG 
newGG #
NotImplementedExceptionGG -
(GG- .
)GG. /
;GG/ 0
}HH 	
publicNN 
asyncNN 
TaskNN 
<NN 
ApplicationUserNN )
>NN) *
RegisterNN+ 3
(NN3 4
ApplicationUserNN4 C
userNND H
)NNH I
{OO 	
tryPP 
{QQ 
ifRR 
(RR 
userRR 
==RR 
nullRR  
)RR  !
{SS 
throwTT 
newTT !
ArgumentNullExceptionTT 3
(TT3 4
typeofTT4 :
(TT: ;
ApplicationUserTT; J
)TTJ K
.TTK L
NameTTL P
+TTQ R
$strTTS c
)TTc d
;TTd e
}UU 
_dbCollectionVV 
=VV 
_mongoContextVV  -
.VV- .
GetCollectionVV. ;
<VV; <
ApplicationUserVV< K
>VVK L
(VVL M
typeofVVM S
(VVS T
ApplicationUserVVT c
)VVc d
.VVd e
NameVVe i
)VVi j
;VVj k
awaitWW 
_dbCollectionWW #
.WW# $
InsertOneAsyncWW$ 2
(WW2 3
userWW3 7
)WW7 8
;WW8 9
}XX 
catchYY 
(YY 
	ExceptionYY 
exYY 
)YY  
{ZZ 
throw[[ 
([[ 
ex[[ 
)[[ 
;[[ 
}\\ 
return]] 
user]] 
;]] 
}^^ 	
publicee 
asyncee 
Taskee 
<ee 
ApplicationUseree )
>ee) *

UpdateUseree+ 5
(ee5 6
stringee6 <
UserIdee= C
,eeC D
ApplicationUsereeE T
usereeU Y
)eeY Z
{ff 	
ifgg 
(gg 
usergg 
==gg 
nullgg 
&&gg 
UserIdgg  &
==gg' )
nullgg* .
)gg. /
{hh 
throwii 
newii !
ArgumentNullExceptionii /
(ii/ 0
typeofii0 6
(ii6 7
ApplicationUserii7 F
)iiF G
.iiG H
NameiiH L
+iiM N
$striiO p
)iip q
;iiq r
}jj 
varkk 
updatekk 
=kk 
awaitkk 
_dbCollectionkk ,
.kk, -!
FindOneAndUpdateAsynckk- B
(kkB C
BuilderskkC K
<kkK L
ApplicationUserkkL [
>kk[ \
.kk\ ]
Filterll 
.ll 
Eqll 
(ll 
$strll "
,ll" #
userll$ (
.ll( )
UserIdll) /
)ll/ 0
,ll0 1
Buildersll2 :
<ll: ;
ApplicationUserll; J
>llJ K
.llK L
Updatemm 
.mm 
Setmm 
(mm 
$strmm !
,mm! "
usermm# '
.mm' (
Namemm( ,
)mm, -
.mm- .
Setmm. 1
(mm1 2
$strmm2 9
,mm9 :
usermm; ?
.mm? @
Emailmm@ E
)mmE F
.mmF G
SetmmG J
(mmJ K
$strmmK U
,mmU V
usermmW [
.mm[ \
Passwordmm\ d
)mmd e
.nn 
Setnn 
(nn 
$strnn #
,nn# $
usernn% )
.nn) *
MobileNumbernn* 6
)nn6 7
.nn7 8
Setnn8 ;
(nn; <
$strnn< E
,nnE F
usernnG K
.nnK L
PinCodennL S
)nnS T
.nnT U
SetnnU X
(nnX Y
$strnnY p
,nnp q
usernnr v
.nnv w"
HouseNo_Building_Name	nnw �
)
nn� �
.oo 
Setoo 
(oo 
$stroo  
,oo  !
useroo" &
.oo& '
	Road_areaoo' 0
)oo0 1
.oo1 2
Setoo2 5
(oo5 6
$stroo6 <
,oo< =
useroo> B
.ooB C
CityooC G
)ooG H
.ooH I
SetooI L
(ooL M
$strooM T
,ooT U
userooV Z
.ooZ [
Stateoo[ `
)oo` a
)ooa b
;oob c
returnpp 
updatepp 
;pp 
}qq 	
}rr 
}ss �
\D:\IIHT\Task_6\Project-MongoDb\Grocerydelevery.BusinessLayer\Services\UserGroceryServices.cs
	namespace 	
Grocerydelevery
 
. 
BusinessLayer '
.' (
Services( 0
{ 
public		 

class		 
UserGroceryServices		 $
:		% & 
IUserGroceryServices		' ;
{

 
private 
readonly "
IUserGroceryRepository /"
_userGroceryRepository0 F
;F G
public 
UserGroceryServices "
(" #"
IUserGroceryRepository# 9!
userGroceryRepository: O
)O P
{ 	"
_userGroceryRepository "
=# $!
userGroceryRepository% :
;: ;
} 	
public 
Task 
< 
ApplicationUser #
># $
GetUserById% 0
(0 1
string1 7
UserId8 >
)> ?
{ 	
var 
result 
= "
_userGroceryRepository /
./ 0
GetUserById0 ;
(; <
UserId< B
)B C
;C D
return 
result 
; 
} 	
public## 
Task## 
<## 
ApplicationUser## #
>### $
Login##% *
(##* +
string##+ 1
Email##2 7
,##7 8
string##9 ?
password##@ H
)##H I
{$$ 	
var%% 
result%% 
=%% "
_userGroceryRepository%% /
.%%/ 0
Login%%0 5
(%%5 6
Email%%6 ;
,%%; <
password%%= E
)%%E F
;%%F G
return&& 
result&& 
;&& 
}'' 	
public,, 
Task,, 
<,, 
bool,, 
>,, 
Logout,,  
(,,  !
),,! "
{-- 	
throw.. 
new.. #
NotImplementedException.. -
(..- .
)... /
;../ 0
}// 	
public55 
Task55 
<55 
ApplicationUser55 #
>55# $
Register55% -
(55- .
ApplicationUser55. =
user55> B
)55B C
{66 	
var77 
result77 
=77 "
_userGroceryRepository77 /
.77/ 0
Register770 8
(778 9
user779 =
)77= >
;77> ?
return88 
result88 
;88 
}99 	
public@@ 
Task@@ 
<@@ 
ApplicationUser@@ #
>@@# $

UpdateUser@@% /
(@@/ 0
string@@0 6
UserId@@7 =
,@@= >
ApplicationUser@@? N
user@@O S
)@@S T
{AA 	
varBB 
updateBB 
=BB "
_userGroceryRepositoryBB /
.BB/ 0

UpdateUserBB0 :
(BB: ;
UserIdBB; A
,BBA B
userBBC G
)BBG H
;BBH I
returnCC 
updateCC 
;CC 
}DD 	
}EE 
}FF �
\D:\IIHT\Task_6\Project-MongoDb\Grocerydelevery.BusinessLayer\ViewModels\CategoryViewModel.cs
	namespace 	
Grocerydelevery
 
. 
BusinessLayer '
.' (

ViewModels( 2
{ 
public 

class 
CategoryViewModel "
{ 
[ 	
Required	 
] 
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
[		 	
Required			 
]		 
public

 
string

 
Url

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
bool 
OpenInNewWindow #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} �
[D:\IIHT\Task_6\Project-MongoDb\Grocerydelevery.BusinessLayer\ViewModels\ProductViewModel.cs
	namespace 	
Grocerydelevery
 
. 
BusinessLayer '
.' (

ViewModels( 2
{ 
public 

class 
ProductViewModel !
{ 
[		 	
Required			 
]		 
[

 	
Display

	 
(

 
Name

 
=

 
$str

 &
)

& '
]

' (
public 
string 
ProductName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
[ 	
Display	 
( 
Name 
= 
$str $
)$ %
]% &
public 
Double 
Amount 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
[ 	
Display	 
( 
Name 
= 
$str 
)  
]  !
public 
int 
stock 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
photo 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
CatId 
{ 
get 
; 
set  #
;# $
}% &
public 
ProductOrder 
ProductOrder (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} �
XD:\IIHT\Task_6\Project-MongoDb\Grocerydelevery.BusinessLayer\ViewModels\UserViewModel.cs
	namespace 	
Grocerydelevery
 
. 
BusinessLayer '
.' (

ViewModels( 2
{ 
public 

class 
UserViewModel 
{ 
[ 	
Required	 
] 
[ 	
Display	 
( 
Name 
= 
$str 
) 
]  
[		 	
	MaxLength			 
(		 
$num		 
,		 
ErrorMessage		 #
=		$ %
$str		& H
)		H I
]		I J
public

 
string

 
Name

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
[ 	
Required	 
] 
[ 	
RegularExpression	 
( 
$str N
,N O
ErrorMessageP \
=] ^
$str_ u
)u v
]v w
[ 	
Display	 
( 
Name 
= 
$str &
)& '
]' (
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[ 	
Display	 
( 
Name 
= 
$str  
)  !
]! "
public 
long 
MobileNumber  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
Required	 
] 
[ 	
Display	 
( 
Name 
= 
$str "
)" #
]# $
public 
long 
PinCode 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
Display	 
( 
Name 
= 
$str 0
)0 1
]1 2
public 
string !
HouseNo_Building_Name +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
[ 	
Required	 
] 
[ 	
Display	 
( 
Name 
= 
$str 1
)1 2
]2 3
public 
string 
	Road_area 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
[ 	
Display	 
( 
Name 
= 
$str 
) 
]  
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
[   	
Required  	 
]   
[!! 	
Display!!	 
(!! 
Name!! 
=!! 
$str!! 
)!!  
]!!  !
public"" 
string"" 
State"" 
{"" 
get"" !
;""! "
set""# &
;""& '
}""( )
}## 
}$$ 