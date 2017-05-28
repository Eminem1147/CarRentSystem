# CarRentSystem
## 1. 数据库设计
系统管理员信息表：ManagementInfo(ManagerName, Password)
客户信息表：User(IDCard, Name, Telephone, Address)
汽车信息表：Car(CarID, Type, RentMoney, Color)
借车信息表：Borrow(CarID, IDCard, BorrowTime, ReturnTime)
还车信息表：Return(CarID, IDCard, ReturnTime, Type, MoneyPaid, Color)
修车厂信息表：Factory(FactoryID, FactoryName, Address, Telephone)
修车信息表：Repair(FactoryID, CarID, Type, RepairMoney)

## 2. 界面设计
ManagerLogin.aspx：管理员登录界面
RegisterManager.aspx：管理员注册界面
Success.aspx：注册成功界面
index.aspx：总管理界面
UserManagement：客户管理界面
CarManagement：汽车管理界面
BorrowManagement：借车管理界面
ReturnManagement：还车管理界面
RepairManagement：修车管理界面

## 3. 运行说明
从ManagerLogin.aspx页面进入整个系统，输入帐号密码，如果没有帐号密码的话，可以点击注册按钮进入管理员帐号注册页面。在注册界面输入用户名和密码即可注册，但是用户名不可以和已有的重复，用户名和密码也不可以为空。当注册成功之后，进入Success.aspx页面，然后再点击按钮返回到登录界面，正确输入用户名密码进入index.aspx：总管理界面。这个页面有5个功能，客户管理、汽车管理、借车管理、还车管理、修车管理。管理员可以针对不同的需求，选择不同的功能。针对用户管理，可以查询和添加功能；针对汽车管理，提供查询、添加和删除功能；针对借车管理，提供添加功能；针对还车管理，提供添加功能；针对修车管理，提供添加功能。
