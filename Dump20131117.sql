CREATE DATABASE  IF NOT EXISTS `insta_ride` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `insta_ride`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: insta_ride
-- ------------------------------------------------------
-- Server version	5.6.14-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `VIN` varchar(17) NOT NULL,
  `Make` varchar(45) DEFAULT NULL,
  `Model` varchar(45) DEFAULT NULL,
  `Year` year(4) DEFAULT NULL,
  `Color` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `Max_Pass` varchar(2) DEFAULT NULL,
  `Notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`VIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES ('1ZF4567HLNSD357AD','Mazda','3',2013,'Gray','Intermediate','5','Can carry 4-6 standard size boxes and is equipped with bike attachement '),('2DF4567GF4T357AD8','Jeep','Grand Cherokee',2014,'Granite','Luxury','5','Can carry 6-8 standard size boxes'),('2R48F2G972SK0MKU1','Audi','Q5',2013,'Blue','Luxury SUV','5','This car is fully loaded with all options and can carry up to 10 standard size boxes'),('3XJB411SD5L88FMMK','Honda','Odyssee',2013,'Silver','Minivan','7','This car is equipped with a DVD player and can carry up to 14 Standard size boxes'),('4D123ZS8YJUGR5YYY','Toyota','Corolla',2013,'White','Intermediate','5','Can carry 4-6 standard size boxes'),('E32RVBT5T6JXMFD34','Chevy','Spark',2013,'Blue','Economy','4','Can carry 4-6 standard size boxes'),('F2LKMMS900YLWP211','Dodge','Charger',2013,'Silver','Full Size','5','This car can carry 8-10 standard size boxes'),('L2MH4RTS117KV467M','Mazda','3-Hatch Back',2012,'Gray','Intermediate','5','This car can carry 6-8 standard size boxes'),('RT48F2G834SKPWJ81','Cadillac','SRX',2013,'Black','Luxury SUV','5','This car is fully loaded with all options and can carry up to 10 standard size boxes'),('Y848F2DG34SLGWJ81','Audi','A6',2012,'Black','Luxury','5','This car can carry up to 7-8 standard size boxes');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `Cust_ID` varchar(10) NOT NULL,
  `First_Name` varchar(45) DEFAULT NULL,
  `MI` varchar(1) DEFAULT NULL,
  `Last_Name` varchar(45) DEFAULT NULL,
  `Street_Num` varchar(10) DEFAULT NULL,
  `Street_Name` varchar(85) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Zip_Code` varchar(5) DEFAULT NULL,
  `Cell_Phone` varchar(13) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Cust_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('102254','Rose','R','White','3602','Kennedy St','Arlington','VA','22204','(123)422-5897',NULL),('102478','Jared','S','Shopper','2540','Eye Street','Washington','DC','20052','(231)522-1234',NULL),('102496','Rachel','E','McCoy','2500','Ashburn Village Blvd','Ashburn','VA','20142','(123)546-0987',NULL),('103214','Elliot','D','Wood','14300','Gallows Road','Mclean','VA','22122','(123)224-1248',NULL),('105478','Joe','M','Sanders','360','M Street','Washington','DC','20054','(231)456-7890',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_licenses`
--

DROP TABLE IF EXISTS `driver_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver_licenses` (
  `DL_Num` varchar(11) NOT NULL,
  `Cust_ID` varchar(10) NOT NULL,
  `DOB` date DEFAULT NULL,
  `DL_Exp` date DEFAULT NULL,
  `DL_State` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`DL_Num`,`Cust_ID`),
  KEY `fk_custid_dl_idx` (`Cust_ID`),
  CONSTRAINT `fk_custid_dl` FOREIGN KEY (`Cust_ID`) REFERENCES `customers` (`Cust_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_licenses`
--

LOCK TABLES `driver_licenses` WRITE;
/*!40000 ALTER TABLE `driver_licenses` DISABLE KEYS */;
INSERT INTO `driver_licenses` VALUES ('D23240944','105478','1980-07-22','2013-11-27','DC'),('G23023456','102254','1988-06-02','2015-09-10','GA'),('T47026221','102478','1987-02-10','2020-02-10','VA'),('T63989912','102496','1970-03-04','2014-05-10','VA'),('T96078973','103214','1990-10-10','2013-12-01','VA');
/*!40000 ALTER TABLE `driver_licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `Emp_ID` varchar(10) NOT NULL,
  `First_Name` varchar(45) DEFAULT NULL,
  `Middle_Name` varchar(45) DEFAULT NULL,
  `Last_Name` varchar(45) DEFAULT NULL,
  `Street_Num` varchar(10) DEFAULT NULL,
  `Street_Name` varchar(85) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Zip_Code` varchar(5) DEFAULT NULL,
  `Cell_Phone` varchar(13) DEFAULT NULL,
  `Work_Phone` varchar(13) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Department` varchar(45) DEFAULT NULL,
  `Title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Emp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `Car_VIN` varchar(17) NOT NULL,
  `Street_Num` varchar(10) DEFAULT NULL,
  `Street_Name` varchar(85) DEFAULT NULL,
  `Slot_Num` varchar(10) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Zip_Code` varchar(5) DEFAULT NULL,
  `Notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Car_VIN`),
  CONSTRAINT `fk_carvin_loc` FOREIGN KEY (`Car_VIN`) REFERENCES `cars` (`VIN`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES ('1ZF4567HLNSD357AD','20101','Academic Way','05','Ashburn','VA','20147',''),('2DF4567GF4T357AD8','1957','Columbia Pike','04','Arlington','VA','22204','This is an underground garage. Zip cars are located on the P2 level'),('2R48F2G972SK0MKU1','20101','Academic Way','02','Ashburn','VA','20147',NULL),('3XJB411SD5L88FMMK','2121','Eye Street','01','Washington','DC','20052',NULL),('4D123ZS8YJUGR5YYY','3500','Eye Street','','Washington','DC','20060','This parking lot is on the street'),('E32RVBT5T6JXMFD34','2200','Eye Street','02','Washington','DC','20052',NULL),('F2LKMMS900YLWP211','1916','Chain Bridge Road','03','Mclean','VA','22102','Insta-Ride cars are located on the second floor of Garage C located infront of Macys'),('L2MH4RTS117KV467M','5800','Columbia Pike',NULL,'Arlington','VA','22204','This parking lot is on the street'),('RT48F2G834SKPWJ81','14300','M Street',NULL,'Washington','DC','20004','This parking lot is on the street'),('Y848F2DG34SLGWJ81','1916','Chain Bridge Road','02','Mclean','VA','22102','Insta-Ride cars are located on the second floor of Garage C located infront of Macys');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_methods` (
  `CC_Num` varchar(16) NOT NULL,
  `Cust_ID` varchar(10) NOT NULL,
  `Name` varchar(70) DEFAULT NULL,
  `CC_Exp_Month` varchar(2) DEFAULT NULL,
  `CC_Exp_Year` year(4) DEFAULT NULL,
  `CVV2` varchar(3) DEFAULT NULL,
  `Billing_Street_Num` varchar(10) DEFAULT NULL,
  `Billing_Street_Name` varchar(45) DEFAULT NULL,
  `Billing_City` varchar(45) DEFAULT NULL,
  `Billing_State` varchar(2) DEFAULT NULL,
  `Zip_Code` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`CC_Num`,`Cust_ID`),
  KEY `fk_custid_cc_idx` (`Cust_ID`),
  CONSTRAINT `fk_custid_cc` FOREIGN KEY (`Cust_ID`) REFERENCES `customers` (`Cust_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES ('3250983543072345','103214','Elliot D Wood','08',2017,'310','14300','Gallows Road','Mclean','VA','22122'),('3405682205625642','102496','Rachel E McCoy','03',2015,'561','2500','Ashburn Village Blvd','Ashburn','VA','20142'),('4360978567098303','102254','Rose R White','02',2016,'053','48700','Ashburn Village Blvd Apt#100','Ashburn','VA','20142'),('5465037823406987','102478','Jared S Shopper','04',2014,'268','2540','Eye Street','Washington','DC','20052'),('8259654934598943','105478','Joe M Sanders','09',2016,'097','360','East South Water St','Chicago','IL','60606'),('9863423825356398','102254','Rose R White','12',2014,'709','360','Ashburn Village Blvd Apt#100','Ashburn','VA','20142');
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservations` (
  `Res_ID` varchar(20) NOT NULL,
  `Cust_ID` varchar(45) DEFAULT NULL,
  `Car_VIN` varchar(45) DEFAULT NULL,
  `From_Date` datetime DEFAULT NULL,
  `To_Date` datetime DEFAULT NULL,
  PRIMARY KEY (`Res_ID`),
  KEY `fk_carvin_idx` (`Car_VIN`),
  KEY `fk_carvin_res_idx` (`Car_VIN`),
  KEY `fk_custid_res_idx` (`Cust_ID`),
  CONSTRAINT `fk_carvin_res` FOREIGN KEY (`Car_VIN`) REFERENCES `cars` (`VIN`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_custid_res` FOREIGN KEY (`Cust_ID`) REFERENCES `customers` (`Cust_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES ('CF1008756920','102254','1ZF4567HLNSD357AD','2013-11-12 08:00:00','2013-11-12 10:00:00'),('CF1008789654','102496','1ZF4567HLNSD357AD','2013-11-12 10:00:01','2013-11-12 11:30:00'),('CF2598654121','103214','F2LKMMS900YLWP211','2013-11-14 11:00:00','2013-11-14 15:00:00'),('CF4558436762','102254','F2LKMMS900YLWP211','2013-11-15 09:00:00','2013-11-15 14:00:00');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `Username` varchar(50) NOT NULL,
  `Pass` varchar(15) DEFAULT NULL,
  `Cust_ID` varchar(10) DEFAULT NULL,
  `Permission` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Username`),
  KEY `fk_custid_users_idx` (`Cust_ID`),
  CONSTRAINT `fk_custid_users` FOREIGN KEY (`Cust_ID`) REFERENCES `customers` (`Cust_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin1','54321',NULL,'admin'),('admin2','54321',NULL,'admin'),('user1','12345','102254','user'),('user2','12345','102478','user'),('user3','12345','102496','user'),('user4','12345','103214','user'),('user5','12345','105478','user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-11-17 18:14:59
