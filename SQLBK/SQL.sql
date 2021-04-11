-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: donationdb
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `tbl_applog`
--

DROP TABLE IF EXISTS `tbl_applog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_applog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_applog`
--

LOCK TABLES `tbl_applog` WRITE;
/*!40000 ALTER TABLE `tbl_applog` DISABLE KEYS */;
INSERT INTO `tbl_applog` VALUES (1,'alpha21','2021-04-05 22:30:10'),(2,'alpha21','2021-04-09 17:58:28'),(3,'alpha21','2021-04-09 21:58:32'),(4,'alpha21','2021-04-09 21:59:14'),(5,'alpha21','2021-04-09 22:02:19'),(6,'alpha21','2021-04-09 22:03:28'),(7,'alpha21','2021-04-09 22:11:52'),(8,'alpha21','2021-04-09 22:13:33'),(9,'alpha21','2021-04-09 22:15:50'),(10,'alpha21','2021-04-09 23:43:02'),(11,'alpha21','2021-04-09 23:43:41'),(12,'alpha21','2021-04-09 23:54:59'),(13,'alpha21','2021-04-09 23:58:14'),(14,'alpha21','2021-04-09 23:58:47'),(15,'alpha21','2021-04-09 23:59:33'),(16,'alpha21','2021-04-10 00:22:18'),(17,'alpha21','2021-04-10 00:23:26'),(18,'username1','2021-04-10 15:43:01'),(19,'username1','2021-04-10 15:57:10'),(20,'username1','2021-04-11 16:56:03'),(21,'alpha21','2021-04-11 17:03:22'),(22,'alpha21','2021-04-11 22:29:12');
/*!40000 ALTER TABLE `tbl_applog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_donations`
--

DROP TABLE IF EXISTS `tbl_donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_donations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `donor_id` int DEFAULT NULL,
  `receiver_id` int DEFAULT NULL,
  `donationAmt` decimal(18,2) DEFAULT NULL,
  `transcation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `donor_id_idx` (`donor_id`),
  KEY `receiver_id_idx` (`receiver_id`),
  CONSTRAINT `donor_id` FOREIGN KEY (`donor_id`) REFERENCES `tbl_donorinfo` (`id`),
  CONSTRAINT `receiver_id` FOREIGN KEY (`receiver_id`) REFERENCES `tbl_recieverinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_donations`
--

LOCK TABLES `tbl_donations` WRITE;
/*!40000 ALTER TABLE `tbl_donations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_donorinfo`
--

DROP TABLE IF EXISTS `tbl_donorinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_donorinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `Dob` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `emailid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_donorinfo`
--

LOCK TABLES `tbl_donorinfo` WRITE;
/*!40000 ALTER TABLE `tbl_donorinfo` DISABLE KEYS */;
INSERT INTO `tbl_donorinfo` VALUES (18,'donor','username1','firstname','lastname','male','1/april/2001','root','nearest Street','89082','','Canada','123456789','abc@username.com'),(19,'donor','alpha21','fname','lname','female','1/april/2001','root','nearest street','29018','','us','12345531','abc@abcde.com');
/*!40000 ALTER TABLE `tbl_donorinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_recieverinfo`
--

DROP TABLE IF EXISTS `tbl_recieverinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_recieverinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recieverinfo`
--

LOCK TABLES `tbl_recieverinfo` WRITE;
/*!40000 ALTER TABLE `tbl_recieverinfo` DISABLE KEYS */;
INSERT INTO `tbl_recieverinfo` VALUES (1,'ABC','DEF','description','receiver'),(2,'ABC','DEF','description','receiver'),(3,'ABC','DEF','description','receiver'),(4,'ABC','DEF','description','receiver');
/*!40000 ALTER TABLE `tbl_recieverinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-11 22:46:37
