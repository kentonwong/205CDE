-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2019 年 04 月 11 日 00:02
-- 伺服器版本: 5.7.25-0ubuntu0.16.04.2
-- PHP 版本： 7.0.33-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `WTW_Computer`
--

-- --------------------------------------------------------

--
-- 資料表結構 `customer`
--

CREATE TABLE `customer` (
  `cr_ID` int(8) NOT NULL,
  `cr_firstName` varchar(30) COLLATE utf8_bin NOT NULL,
  `cr_lastName` varchar(30) COLLATE utf8_bin NOT NULL,
  `cr_Username` varchar(20) COLLATE utf8_bin NOT NULL,
  `cr_Password` varchar(20) COLLATE utf8_bin NOT NULL,
  `cr_Email` varchar(30) COLLATE utf8_bin NOT NULL,
  `cr_address` text COLLATE utf8_bin NOT NULL,
  `cr_phoneNO` int(8) NOT NULL,
  `shopping_point` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `customer`
--

INSERT INTO `customer` (`cr_ID`, `cr_firstName`, `cr_lastName`, `cr_Username`, `cr_Password`, `cr_Email`, `cr_address`, `cr_phoneNO`, `shopping_point`) VALUES
(10001, 'hi', 'yo', 'yolo', '12345678', 'thelastk2820@gmail.com', 'ght 366street', 89226588, 0),
(20180001, 'lam', 'tai man', 'hi123', '12345678', 'ok1@gmail.com', '', 12345678, 0),
(20180002, 'li', 'tai man', 'man123', '99999999', 'man123@kmail.com', '', 99999999, 0),
(20180003, 'yo', 'yo yo', 'tai123', '87778777', 'tai123@gg.com', '', 87778777, 3),
(20180004, 'ng', 'fun', 'fun111', '86868686', 'fun111@er.com', '', 86868686, 0),
(20180005, 'wong', 'tai sin', 'god', '66666666', 'god@god.com', '', 66666666, 2),
(20180006, 'chan', 'tom', 'tom123', '78912345', 'tom123@hello.com', '', 78912345, 0),
(20180007, 'li', 'vin', 'AppleINC', 't31285362', 'vincent@apple.com', '', 97218289, 6),
(20180008, 'm', 'mky', 'm.mky', 'iamrich', 'mmky@richclub.com', '', 69020826, 15),
(20180011, 'panda', 'eric', 'PandaEric', 'uhgu434', 'hi_im_eric@pandamail.com', '', 51105554, 0),
(20180017, 'Hi', 'yo', 'yolo', '12345678', 'thelastk2820@gmail.com', 'tryh 356street', 56668955, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `News`
--

CREATE TABLE `News` (
  `NewsNO` int(11) NOT NULL,
  `editoName` text NOT NULL,
  `title` text NOT NULL,
  `news` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `pd_ID` varchar(4) COLLATE utf8_bin NOT NULL,
  `pd_Name` varchar(40) COLLATE utf8_bin NOT NULL,
  `pd_Brand` varchar(20) COLLATE utf8_bin NOT NULL,
  `pd_Type` varchar(15) COLLATE utf8_bin NOT NULL,
  `pd_Rom` int(3) NOT NULL,
  `pd_Price` int(6) NOT NULL,
  `pd_Stock` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `products`
--

INSERT INTO `products` (`pd_ID`, `pd_Name`, `pd_Brand`, `pd_Type`, `pd_Rom`, `pd_Price`, `pd_Stock`) VALUES
('A01', 'iPhone 6s plus', 'Apple', 'Smartphone', 32, 4688, 5),
('A02', 'iPhone 6s plus', 'Apple', 'Smartphone', 128, 5588, 4),
('A03', 'iPhone 7', 'Sony', 'Smartphone', 32, 4688, 3),
('A04', 'iPhone 7', 'Apple', 'Smartphone', 128, 5588, 2),
('A05', 'iPhone 7 plus', 'Apple', 'Smartphone', 32, 5788, 2),
('A06', 'iPhone 7 plus', 'Apple', 'Smartphone', 128, 6688, 3),
('A07', 'iPhone 8', 'Apple', 'Smartphone', 64, 5988, 6),
('A08', 'iPhone 8', 'Apple', 'Smartphone', 256, 7288, 5),
('A09', 'iPhone 8 plus', 'Apple', 'Smartphone', 64, 6888, 6),
('A10', 'iPhone 8 plus', 'Apple', 'Smartphone', 256, 8188, 6),
('A11', 'iPhone X', 'Apple', 'Smartphone', 64, 8588, 10),
('A12', 'iPhone X', 'Apple', 'Smartphone', 256, 9888, 14),
('AS01', 'zenfone 4', 'ASUS', 'Smartphone', 128, 3798, 4),
('AS02', 'zenfone 4 Max Pro', 'ASUS', 'Smartphone', 64, 1798, 2),
('HT01', 'U Ultra ', 'HTC', 'Smartphone', 64, 4988, 4),
('HT02', 'U play', 'HTC', 'Smartphone', 32, 1798, 2),
('LG01', 'V30+', 'LG', 'Smartphone', 64, 5698, 4),
('NK01', '3310 4G', 'Nokia', 'Phone', 4, 598, 20),
('SA01', 'Galaxy S8', 'Samsung', 'Smartphone', 64, 5698, 3),
('SA02', 'Galaxy S8+', 'Samsung', 'Smartphone', 64, 6398, 4),
('SA03', 'Galaxy S8+', 'Samsung', 'Smartphone', 128, 6998, 3),
('SA04', 'Galaxy note 8', 'Samsung', 'Smartphone', 64, 6998, 2),
('SA05', 'Galaxy note 8', 'Samsung', 'Smartphone', 128, 7598, 5),
('SA06', 'Galaxy note 8', 'Samsung', 'Smartphone', 256, 8198, 8),
('SA07', 'Galaxy S9', 'Samsung', 'Smartphone', 64, 6398, 6),
('SA08', 'Galaxy S9+', 'Samsung', 'Smartphone', 128, 7298, 7),
('SA09', 'Galaxy S9+', 'Samsung', 'Smartphone', 256, 8398, 5),
('SA10', 'Galaxy A8+', 'Samsung', 'Smartphone', 64, 4398, 10),
('SN01', 'Xperia XZ Premium', 'Sony', 'Smartphone', 64, 4698, 4),
('SN02', 'Xperia XZ2   ', 'Sony', 'Smartphone', 128, 7898, 5);

-- --------------------------------------------------------

--
-- 資料表結構 `product_CPU`
--

CREATE TABLE `product_CPU` (
  `pd_ID` varchar(5) NOT NULL,
  `pd_Name` varchar(40) NOT NULL,
  `pd_Brand` varchar(20) NOT NULL,
  `pd_Price` int(6) NOT NULL,
  `pd_Clockrate` varchar(30) NOT NULL,
  `pd_Cache` varchar(20) NOT NULL,
  `pd_Socket` varchar(10) NOT NULL,
  `pd_stock` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `product_CPU`
--

INSERT INTO `product_CPU` (`pd_ID`, `pd_Name`, `pd_Brand`, `pd_Price`, `pd_Clockrate`, `pd_Cache`, `pd_Socket`, `pd_stock`) VALUES
('CP01', 'Core i5-9400F', 'Intel', 1500, '2900MHz', '9MD Smart', 'LGA1151', 0),
('CP02', 'Core i9-9900K', 'Intel', 4500, '3600MHz to 5000MHz', '16MB Smart', 'LGA1151', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `product_Display`
--

CREATE TABLE `product_Display` (
  `pd_ID` varchar(5) NOT NULL,
  `pd_Name` varchar(100) NOT NULL,
  `pd_Brand` varchar(50) NOT NULL,
  `pd_Price` int(6) NOT NULL,
  `pd_Ram` int(4) NOT NULL,
  `pd_RamType` varchar(20) NOT NULL,
  `pd_Stock` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `product_Set`
--

CREATE TABLE `product_Set` (
  `pd_ID` varchar(6) NOT NULL,
  `pd_Name` varchar(40) NOT NULL,
  `pd_Price` int(7) NOT NULL,
  `pd_CPU` varchar(40) NOT NULL,
  `pd_Ram` varchar(40) NOT NULL,
  `pd_Rom` varchar(40) NOT NULL,
  `pd_Memory` varchar(40) NOT NULL,
  `pd_Power` varchar(5) NOT NULL,
  `pd_Display` varchar(40) NOT NULL,
  `pd_stock` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `product_Set`
--

INSERT INTO `product_Set` (`pd_ID`, `pd_Name`, `pd_Price`, `pd_CPU`, `pd_Ram`, `pd_Rom`, `pd_Memory`, `pd_Power`, `pd_Display`, `pd_stock`) VALUES
('st01', 'ASUS G036', 6555, 'I7 7700k', 'DDR3 16GB', '2GB', '256GB SSD', '650', '', 4),
('st02', 'Acer', 5000, 'I5 7700K', '8 GB', '1 GB', '1000GB HDD', '450', 'GTX 630', 3);

-- --------------------------------------------------------

--
-- 資料表結構 `smartphone`
--

CREATE TABLE `smartphone` (
  `pd_Type` varchar(8) COLLATE utf8_bin NOT NULL,
  `pd_Color` varchar(20) COLLATE utf8_bin NOT NULL,
  `pd_Description` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `staff`
--

CREATE TABLE `staff` (
  `sf_ID` int(8) NOT NULL,
  `sf_firstName` varchar(30) COLLATE utf8_bin NOT NULL,
  `sf_lastName` varchar(30) COLLATE utf8_bin NOT NULL,
  `sf_Username` varchar(20) COLLATE utf8_bin NOT NULL,
  `sf_Birthday` date NOT NULL,
  `sf_Password` varchar(20) COLLATE utf8_bin NOT NULL,
  `sf_Email` varchar(50) COLLATE utf8_bin NOT NULL,
  `sf_Address` text COLLATE utf8_bin NOT NULL,
  `sf_phoneNO` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `staff`
--

INSERT INTO `staff` (`sf_ID`, `sf_firstName`, `sf_lastName`, `sf_Username`, `sf_Birthday`, `sf_Password`, `sf_Email`, `sf_Address`, `sf_phoneNO`) VALUES
(12340001, 'Wong', 'Kenton', 'kenton', '1997-03-01', '12345678', 'kenton@gmail.com', '112road,Hong Kong', 98765432),
(12340002, 'Poon', 'Eric', 'eric', '1998-01-01', '87654321', 'eric@gmail.com', '1233 road, Hong Kong', 97654321),
(12340003, 'Tsui', 'Jason', 'jason', '1999-02-01', '11111111', 'jason@gmail.com', '111 road', 55555555),
(12340004, 'Yuen', 'Ambrose', 'ambrose', '1999-04-01', '22334455', 'ambrose@gmail.com', '2345 road', 66666666);

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `ur_ID` varchar(5) NOT NULL,
  `ur_Type` varchar(20) NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `FirstName` varchar(40) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `UserName` varchar(40) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `phoneNo` int(8) NOT NULL,
  `Address` text NOT NULL,
  `shoppingPoint` int(8) NOT NULL,
  `shoppingdetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `user`
--

INSERT INTO `user` (`ur_ID`, `ur_Type`, `Gender`, `FirstName`, `LastName`, `UserName`, `Password`, `Email`, `phoneNo`, `Address`, `shoppingPoint`, `shoppingdetails`) VALUES
('ST001', 'Staff', 'M', 'Ken', 'Wong', 'kenton', '12345678', 'kenton2830@gmail.com', 22345678, 'hi kong, HK (22 Hi Tong street)', 0, '');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cr_ID`);

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pd_ID`),
  ADD UNIQUE KEY `pd_ID` (`pd_ID`),
  ADD KEY `pd_Type` (`pd_Type`),
  ADD KEY `pd_ID_2` (`pd_ID`);

--
-- 資料表索引 `smartphone`
--
ALTER TABLE `smartphone`
  ADD KEY `pd_Type` (`pd_Type`);

--
-- 資料表索引 `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sf_ID`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `customer`
--
ALTER TABLE `customer`
  MODIFY `cr_ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20180018;
--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `smartphone`
--
ALTER TABLE `smartphone`
  ADD CONSTRAINT `smartphone_ibfk_1` FOREIGN KEY (`pd_Type`) REFERENCES `products` (`pd_Type`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
