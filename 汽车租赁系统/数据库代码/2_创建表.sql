SET FOREIGN_KEY_CHECKS=0;

/*系统管理员信息*/
DROP TABLE IF EXISTS `managerinfo`;
CREATE TABLE `managerinfo` (
  `ManagerName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`ManagerName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `managerinfo` VALUES ('admin', '123456');
INSERT INTO `managerinfo` VALUES ('admin1', '123456');

/*客户信息*/
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `IDCard` varchar(20) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Telephone` varchar(15) NOT NULL,
  `Address` varchar(20) NOT NULL,
  PRIMARY KEY (`IDCard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user` VALUES ('10001', '张三', '15295575596', '南京市玄武区');
INSERT INTO `user` VALUES ('10002', '李四', '18861504533', '南京市鼓楼区');

/*汽车信息*/
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `CarID` varchar(20) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `RentMoney` integer NOT NULL,
  `Color` varchar(10) NOT NULL,
  PRIMARY KEY (`CarID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `car` VALUES ('苏A 100001', '奥迪', '1000', '黑色');
INSERT INTO `car` VALUES ('苏B 100002', '宝马', '2000', '白色');
INSERT INTO `car` VALUES ('苏C 100003', '北京现代', '500', '金色');
INSERT INTO `car` VALUES ('苏D 100004', '本田', '1000', '银色');

/*借车信息*/
DROP TABLE IF EXISTS `Borrow`;
CREATE TABLE `Borrow` (
  `CarID` varchar(20) NOT NULL,
  `IDCard` varchar(20) NOT NULL,
  `BorrowTime` varchar(15) NOT NULL,
  `ReturnTime` varchar(15) NOT NULL,
  PRIMARY KEY (`CarID`, `IDCard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
INSERT INTO `Borrow` VALUES ('苏C 100003', '10001', '2008/08/11', '2008/09/12');
INSERT INTO `Borrow` VALUES ('苏D 100004', '10002', '2009/01/11', '2009/02/11');
*/

/*还车信息*/
DROP TABLE IF EXISTS `Return`;
CREATE TABLE `Return` (
  `CarID` varchar(20) NOT NULL,
  `IDCard` varchar(20) NOT NULL,
  `ReturnTime` varchar(15) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `MoneyPaid` integer NOT NULL,
  `Color` varchar(10) NOT NULL,
  PRIMARY KEY (`CarID`, `IDCard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
INSERT INTO `Return` VALUES ('苏C 100003', '10001', '2008/09/12', '宝马', 1000, '黑色');
INSERT INTO `Return` VALUES ('苏D 100004', '10002', '2009/02/11', '奔驰', 2000, '白色');
*/

/*修理厂信息*/
DROP TABLE IF EXISTS `Factory`;
CREATE TABLE `Factory` (
  `FactoryID` varchar(20) NOT NULL,
  `FactoryName` varchar(15) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Telephone` varchar(15) NOT NULL,
  PRIMARY KEY (`FactoryID`, `FactoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Factory` VALUES ('1', '吉庆修理厂', '龙蟠路188号', '15295584523');
INSERT INTO `Factory` VALUES ('2', '昌盛修理厂', '长江路100号', '15354869845');
INSERT INTO `Factory` VALUES ('3', '福昕修理厂', '珠江路104号', '15986545235');

/*修理汽车表信息*/
DROP TABLE IF EXISTS `Repair`;
CREATE TABLE `Repair` (
  `FactoryID` varchar(20) NOT NULL,
  `CarID` varchar(20) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `RepairMoney` integer NOT NULL,
  PRIMARY KEY (`FactoryID`, `CarID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
INSERT INTO `Repair` VALUES ('1', '苏C 100003', '宝马', '10000');
INSERT INTO `Repair` VALUES ('2', '苏D 100004', '奔驰', '20000');
*/