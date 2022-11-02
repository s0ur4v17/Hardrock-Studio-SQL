-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: localhost    Database: hardrockstudio
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Album`
--

DROP TABLE IF EXISTS `Album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Album` (
  `Album_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Genre_ID` int NOT NULL,
  `Singer_ID` int NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Released_Date` date DEFAULT NULL,
  `Length` decimal(10,2) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `List_Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Album_ID`),
  KEY `FK_Albums_Genre_ID_idx` (`Genre_ID`),
  KEY `FK_Albums_Singer_ID_idx` (`Singer_ID`),
  CONSTRAINT `FK_Albums_Genre_ID` FOREIGN KEY (`Genre_ID`) REFERENCES `Genre` (`Genre_ID`),
  CONSTRAINT `FK_Albums_Singer_ID` FOREIGN KEY (`Singer_ID`) REFERENCES `Singer` (`Singer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Album`
--

LOCK TABLES `Album` WRITE;
/*!40000 ALTER TABLE `Album` DISABLE KEYS */;
INSERT INTO `Album` VALUES (1,'Better Together',1,1,'Better Together and Forever','2021-11-10',2.00,5,9.99),(2,'Never Been',1,1,'Never Been a Moment','2020-11-17',3.10,4,8.99),(3,'Different',1,1,'Different and Forever','2019-09-18',2.25,7,4.99),(4,'Even Then',2,2,'Even Then Together','2017-01-31',6.21,3,6.99),(5,'Directions',2,2,'Directions That Are Seen','2019-06-22',2.14,3,9.99),(6,'Last Together',3,3,'Last Never Blast','2021-06-30',4.19,10,7.99),(7,'Story I Tell',3,3,'Story I Heard and Told','2018-03-03',3.09,3,5.99);
/*!40000 ALTER TABLE `Album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Billing`
--

DROP TABLE IF EXISTS `Billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Billing` (
  `Billing_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_ID` int NOT NULL,
  `Album_ID` int NOT NULL,
  `Payment_Method_ID` int DEFAULT NULL,
  `Invoice_ID` int DEFAULT NULL,
  `Billing_Date` date DEFAULT NULL,
  `Units_Sold` int DEFAULT NULL,
  `Per_Unit_Amount` decimal(10,2) DEFAULT NULL,
  `Ship_Amount` decimal(10,2) DEFAULT NULL,
  `Tax_Amount` decimal(10,2) DEFAULT NULL,
  `Discount_Percent` decimal(10,2) DEFAULT NULL,
  `Total_Billing_Amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Billing_ID`),
  KEY `FK_Billing_Customer_ID_idx` (`Customer_ID`),
  KEY `FK_Billing_Album_ID_idx` (`Album_ID`),
  KEY `FK_Billing_Payment_Method_ID_idx` (`Payment_Method_ID`),
  CONSTRAINT `FK_Billing_Album_ID` FOREIGN KEY (`Album_ID`) REFERENCES `Album` (`Album_ID`),
  CONSTRAINT `FK_Billing_Customer_ID` FOREIGN KEY (`Customer_ID`) REFERENCES `Customer` (`Customer_ID`),
  CONSTRAINT `FK_Billing_Payment_Method_ID` FOREIGN KEY (`Payment_Method_ID`) REFERENCES `Payment_Method` (`Payment_Method_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Billing`
--

LOCK TABLES `Billing` WRITE;
/*!40000 ALTER TABLE `Billing` DISABLE KEYS */;
INSERT INTO `Billing` VALUES (1,1,1,1,1001,'2021-11-17',2,9.99,0.02,1.02,10.00,50.00),(2,2,2,2,1002,'2021-11-18',2,9.99,0.02,1.02,10.00,18.00),(3,3,3,3,1003,'2021-11-20',2,9.99,0.02,1.02,10.00,18.00),(4,4,4,4,1004,'2021-11-15',2,9.99,0.02,1.02,10.00,18.00),(5,5,5,1,1005,'2021-11-16',2,9.99,0.02,1.02,10.00,18.00),(6,1,5,2,1006,'2021-11-19',2,9.99,0.02,1.02,10.00,13.00);
/*!40000 ALTER TABLE `Billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `Phone_Number` varchar(45) DEFAULT NULL,
  `Address_Line_1` varchar(80) DEFAULT NULL,
  `Address_Line_2` varchar(45) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `Province` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `Zip_Code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Elton','John','M','2000-12-21','123-456-789','21 Western Street','Infornt of Parkview Mall','Canada','ON','Waterloo','N2L 1U7'),(2,'Mark','Waugh','M','2001-11-01','145-546-099','98 King Street','Barrel Drive','Canada','ON','Kitchener','N2I 2N3'),(3,'Michelle','Johnson','F','1998-04-11','765-326-091','32 Erb Street','Midway Colony','Canada','AB','Edmonton','ABL 1P9'),(4,'Olivia','Denver','F','2004-11-22','156-632-900','55 Weber Street','Rich Colony','Canada','BC','Vancouver','M6G 5H3'),(5,'Simon','Spencer','M','2001-03-15','312-644-887','90 Westmount Road','Village Drive','Canada','ON','Toronto','N1M 1J7');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genre`
--

DROP TABLE IF EXISTS `Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Genre` (
  `Genre_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Genre_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genre`
--

LOCK TABLES `Genre` WRITE;
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
INSERT INTO `Genre` VALUES (1,'Rock'),(2,'Pop'),(3,'Metal'),(4,'Country'),(5,'Jazz');
/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payment_Method`
--

DROP TABLE IF EXISTS `Payment_Method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Payment_Method` (
  `Payment_Method_ID` int NOT NULL AUTO_INCREMENT,
  `Payment_Method_Desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Payment_Method_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment_Method`
--

LOCK TABLES `Payment_Method` WRITE;
/*!40000 ALTER TABLE `Payment_Method` DISABLE KEYS */;
INSERT INTO `Payment_Method` VALUES (1,'American Express'),(2,'Cash'),(3,'Mastercard'),(4,'Visa');
/*!40000 ALTER TABLE `Payment_Method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Singer`
--

DROP TABLE IF EXISTS `Singer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Singer` (
  `Singer_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Last_Album_Released_Date` date DEFAULT NULL,
  PRIMARY KEY (`Singer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Singer`
--

LOCK TABLES `Singer` WRITE;
/*!40000 ALTER TABLE `Singer` DISABLE KEYS */;
INSERT INTO `Singer` VALUES (1,'Micheal','Jackson','1967-10-17','M','2002-10-19'),(2,'Taylor','Swift','1994-03-20','F','2021-01-19'),(3,'Lady','Gaga','1993-11-08','F','2020-11-07'),(4,'Ariana','Grande','1998-04-01','F','2020-05-15'),(5,'Bruno','Mars','1985-10-08','M','2021-05-05');
/*!40000 ALTER TABLE `Singer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_customer`
--

DROP TABLE IF EXISTS `vw_customer`;
/*!50001 DROP VIEW IF EXISTS `vw_customer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_customer` AS SELECT 
 1 AS `Customer_Name`,
 1 AS `Gender`,
 1 AS `Date_Of_Birth`,
 1 AS `Phone_Number`,
 1 AS `Address_Line_1`,
 1 AS `Address_Line_2`,
 1 AS `Country`,
 1 AS `Province`,
 1 AS `City`,
 1 AS `Zip_Code`,
 1 AS `Album_Name`,
 1 AS `Genre_Name`,
 1 AS `Payment_Method_Desc`,
 1 AS `Singer_Name`,
 1 AS `Billing_Date`,
 1 AS `Units_Sold`,
 1 AS `Per_Unit_Amount`,
 1 AS `Ship_Amount`,
 1 AS `Tax_Amount`,
 1 AS `Discount_Percent`,
 1 AS `Total_Billing_Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_customer`
--

/*!50001 DROP VIEW IF EXISTS `vw_customer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_customer` AS select concat(`C`.`First_Name`,' ',`C`.`Last_Name`) AS `Customer_Name`,`C`.`Gender` AS `Gender`,`C`.`Date_Of_Birth` AS `Date_Of_Birth`,`C`.`Phone_Number` AS `Phone_Number`,`C`.`Address_Line_1` AS `Address_Line_1`,`C`.`Address_Line_2` AS `Address_Line_2`,`C`.`Country` AS `Country`,`C`.`Province` AS `Province`,`C`.`City` AS `City`,`C`.`Zip_Code` AS `Zip_Code`,`A`.`Name` AS `Album_Name`,`G`.`Name` AS `Genre_Name`,`PM`.`Payment_Method_Desc` AS `Payment_Method_Desc`,concat(`S`.`First_Name`,' ',`S`.`Last_Name`) AS `Singer_Name`,`B`.`Billing_Date` AS `Billing_Date`,`B`.`Units_Sold` AS `Units_Sold`,`B`.`Per_Unit_Amount` AS `Per_Unit_Amount`,`B`.`Ship_Amount` AS `Ship_Amount`,`B`.`Tax_Amount` AS `Tax_Amount`,`B`.`Discount_Percent` AS `Discount_Percent`,`B`.`Total_Billing_Amount` AS `Total_Billing_Amount` from (((((`customer` `C` join `billing` `B` on((`C`.`Customer_ID` = `B`.`Customer_ID`))) join `album` `A` on((`A`.`Album_ID` = `B`.`Album_ID`))) join `payment_method` `PM` on((`PM`.`Payment_Method_ID` = `B`.`Payment_Method_ID`))) join `singer` `S` on((`A`.`Singer_ID` = `S`.`Singer_ID`))) join `genre` `G` on((`G`.`Genre_ID` = `A`.`Genre_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-24  0:33:55
