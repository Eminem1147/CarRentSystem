# CarRentSystem
## 1. 数据库设计
系统管理员信息表：ManagementInfo(ManagerName, Password)<br>
客户信息表：User(IDCard, Name, Telephone, Address)<br>
汽车信息表：Car(CarID, Type, RentMoney, Color)<br>
借车信息表：Borrow(CarID, IDCard, BorrowTime, ReturnTime)<br>
还车信息表：Return(CarID, IDCard, ReturnTime, Type, MoneyPaid, Color)<br>
修车厂信息表：Factory(FactoryID, FactoryName, Address, Telephone)<br>
修车信息表：Repair(FactoryID, CarID, Type, RepairMoney)

## 2. 界面设计
ManagerLogin.aspx：管理员登录界面<br>
RegisterManager.aspx：管理员注册界面<br>
Success.aspx：注册成功界面<br>
index.aspx：总管理界面<br>
UserManagement：客户管理界面<br>
CarManagement：汽车管理界面<br>
BorrowManagement：借车管理界面<br>
ReturnManagement：还车管理界面<br>
RepairManagement：修车管理界面<br>

## 3. 运行说明
从ManagerLogin.aspx页面进入整个系统，输入帐号密码，如果没有帐号密码的话，可以点击注册按钮进入管理员帐号注册页面。在注册界面输入用户名和密码即可注册，但是用户名不可以和已有的重复，用户名和密码也不可以为空。当注册成功之后，进入Success.aspx页面，然后再点击按钮返回到登录界面，正确输入用户名密码进入index.aspx：总管理界面。这个页面有5个功能，客户管理、汽车管理、借车管理、还车管理、修车管理。管理员可以针对不同的需求，选择不同的功能。针对用户管理，可以查询和添加功能；针对汽车管理，提供查询、添加和删除功能；针对借车管理，提供添加功能；针对还车管理，提供添加功能；针对修车管理，提供添加功能。
