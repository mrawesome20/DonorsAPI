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
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admin`
--

LOCK TABLES `tbl_admin` WRITE;
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` VALUES (1,'admin','admin'),(2,'root','root');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_applog`
--

LOCK TABLES `tbl_applog` WRITE;
/*!40000 ALTER TABLE `tbl_applog` DISABLE KEYS */;
INSERT INTO `tbl_applog` VALUES (1,'alpha21','2021-04-05 22:30:10'),(2,'alpha21','2021-04-09 17:58:28'),(3,'alpha21','2021-04-09 21:58:32'),(4,'alpha21','2021-04-09 21:59:14'),(5,'alpha21','2021-04-09 22:02:19'),(6,'alpha21','2021-04-09 22:03:28'),(7,'alpha21','2021-04-09 22:11:52'),(8,'alpha21','2021-04-09 22:13:33'),(9,'alpha21','2021-04-09 22:15:50'),(10,'alpha21','2021-04-09 23:43:02'),(11,'alpha21','2021-04-09 23:43:41'),(12,'alpha21','2021-04-09 23:54:59'),(13,'alpha21','2021-04-09 23:58:14'),(14,'alpha21','2021-04-09 23:58:47'),(15,'alpha21','2021-04-09 23:59:33'),(16,'alpha21','2021-04-10 00:22:18'),(17,'alpha21','2021-04-10 00:23:26'),(18,'username1','2021-04-10 15:43:01'),(19,'username1','2021-04-10 15:57:10'),(20,'username1','2021-04-11 16:56:03'),(21,'alpha21','2021-04-11 17:03:22'),(22,'alpha21','2021-04-11 22:29:12'),(23,'alpha21','2021-04-11 23:13:08'),(24,'alpha21','2021-04-11 23:46:58'),(25,'alpha21','2021-04-11 23:47:59'),(26,'alpha21','2021-04-11 23:49:23'),(27,'alpha21','2021-04-11 23:51:24'),(28,'Derek20','2021-04-14 23:07:46'),(29,'Derek20','2021-04-14 23:16:38');
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
  `donationTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `donor_id_idx` (`donor_id`),
  KEY `receiver_id_idx` (`receiver_id`),
  CONSTRAINT `donor_id` FOREIGN KEY (`donor_id`) REFERENCES `tbl_donorinfo` (`id`),
  CONSTRAINT `receiver_id` FOREIGN KEY (`receiver_id`) REFERENCES `tbl_recieverinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_donations`
--

LOCK TABLES `tbl_donations` WRITE;
/*!40000 ALTER TABLE `tbl_donations` DISABLE KEYS */;
INSERT INTO `tbl_donations` VALUES (2,19,1,100.00,0,'2021-04-13 23:45:19'),(5,20,1,100.00,1,'2021-04-13 23:50:49'),(6,20,5,45.00,0,'2021-04-13 23:57:55'),(7,20,2,47.00,0,'2021-04-13 23:59:39');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_donorinfo`
--

LOCK TABLES `tbl_donorinfo` WRITE;
/*!40000 ALTER TABLE `tbl_donorinfo` DISABLE KEYS */;
INSERT INTO `tbl_donorinfo` VALUES (18,'donor','username1','firstname','lastname','male','1/april/2001','root','nearest Street','89082','','Canada','123456789','abc@username.com'),(19,'donor','alpha21','fname','lname','female','1/april/2001','ravi20','nearest street','29018','','us','12345531','abc@abcde.com'),(20,'guest','guest',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'guest','Anonymous',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'donor','Derek20','Derek ','Yak','female','04/13/2021','yak20','nearest Street','3251','','us','1234567','abc@abcde.com');
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
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `isDeleted` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recieverinfo`
--

LOCK TABLES `tbl_recieverinfo` WRITE;
/*!40000 ALTER TABLE `tbl_recieverinfo` DISABLE KEYS */;
INSERT INTO `tbl_recieverinfo` VALUES (1,'ABC','DEF','description','receiver',NULL,NULL,NULL,0),(2,'ABC','DEF','description','receiver',NULL,NULL,NULL,1),(3,'ABC','DEF','description','receiver',NULL,NULL,NULL,0),(4,'ABC','DEF','description','receiver',NULL,NULL,NULL,0),(5,'fname','lname','decriptionABC','reciever','DEFF','45748745','2021-04-13 21:28:48',1),(6,'NFname','NLname','NewDescription','reciever','Newly adress','541723314','2021-04-14 23:35:15',0),(7,'NFname','NLname','NewDescription','reciever','Newly adress','541723314','2021-04-14 23:36:24',0),(8,'NFname','NLname','NewDescription','reciever','Newly adress','541723314','2021-04-14 23:39:17',0),(9,'NFname','NLname','','reciever','','541723314','2021-04-14 23:41:27',0),(10,'NewFname','NewLname','NewDesc','reciever','newly adress','1234567','2021-04-14 23:52:16',0);
/*!40000 ALTER TABLE `tbl_recieverinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'donationdb'
--

--
-- Dumping routines for database 'donationdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `USP_CRUD_Donorinfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_CRUD_Donorinfo`(
 IN username varchar(50) 
,IN Firstname varchar(50)
,IN lastname varchar(50)
,IN gender varchar(50)
,IN Dob varchar(50)
,IN password varchar(50)
,IN street varchar(50)
,IN zipcode varchar(50)
,IN city varchar(50)
,IN country varchar(50)
,IN phone varchar(50)
,IN emailid varchar(50)
,IN operation varchar(20)
)
BEGIN
DECLARE isInserted INT ;
DECLARE isAdminUsername INT ;
	IF operation = 'insert' THEN 
     SELECT count(*) INTO isInserted from tbl_donorinfo as i where i.username = username LIMIT 1 ;
     SELECT count(*) INTO isAdminUsername from tbl_admin as a where a.username = username LIMIT 1 ;
     
           IF isInserted = 1 OR isAdminUsername = 1 THEN
             Select 'exists' as firstname;
			ELSE 
             INSERT INTO `donationdb`.`tbl_donorinfo`
(`role`,
`username`,
`firstname`,
`lastname`,
`gender`,
`Dob`,
`password`,
`street`,
`zipcode`,
`city`,
`country`,
`phone`,
`emailid`)
 VALUES
(
			'donor'
			,username  
			,Firstname
			,lastname 
			,gender   
			,Dob      
			,password 
			,street  
			,zipcode 
			,city    
			,country 
			,phone   
			,emailid 
);

Select 'inserted' as firstname;
           END IF;
    END IF ;
    IF operation = 'update' THEN
    UPDATE `donationdb`.`tbl_donorinfo`
SET
`firstname` = Firstname ,
`lastname` = lastname,
`gender` = gender,
`Dob` = Dob,
`street` = street,
`zipcode` = zipcode,
`city` = city,
`country` = country,
`phone` = phone,
`emailid` =emailid
WHERE `username` = username and 'password' = password ;

Select 'updated' as firstname;
		
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `USP_CRUD_Reciever` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_CRUD_Reciever`(
IN firstname   varchar(50),  
IN lastname    varchar(50),
IN descrp varchar(200),
IN address     varchar(50),
IN phone       varchar(15) ,
IN operation varchar(10)  ,
IN id int
)
BEGIN
DECLARE isPresent int;
IF operation = 'insert' THEN
Select count(*) into isPresent from donationdb.tbl_recieverinfo as i where 
i.firstname = firstname AND 
i.lastname = lastname AND 
i.phone = phone ;
IF isPresent >= 1 THEN 
Select 'duplicate' as firstname;
ELSE
INSERT INTO `donationdb`.`tbl_recieverinfo`
(`firstname`,
`lastname`,
`description`,
`role`,
`address`,
`phone`,
`createdDate` ,
`isDeleted`)
VALUES
(
firstname  , 
lastname   ,
descrp,
'reciever',
address    ,
phone      ,
NOW() , 0
);
Select 'done' as firstname;
END IF;
END IF; 

IF operation = 'delete' THEN
UPDATE `donationdb`.`tbl_recieverinfo` as a
SET
`isDeleted` =  1
WHERE a.`id` = id;
Select 'done' as firstname;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `USP_Donation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Donation`(
IN receiver int,
IN donationAmt int,
IN uname varchar(50),
IN operation varchar(20)
)
BEGIN
DECLARE D_id INT ;
DECLARE TotalDonation decimal ;
DECLARE YearDonation decimal ;
DECLARE MonthDonation decimal ;
IF operation = 'donate' THEN
IF uname = 'guest' OR uname = 'Anonymous' THEN
SET D_id = 20;
ELSE 
Select id  INTO D_id from donationdb.tbl_donorinfo where username = uname;
END IF;
INSERT INTO `donationdb`.`tbl_donations`
(`donor_id`,
`receiver_id`,
`donationAmt`,
`transcation_id`,
`donationTime`)
VALUES
( D_id ,
receiver,
donationAmt,
RAND(),
NOW());

Select 'done' as firstname;
END IF;
IF operation = 'getdonation' THEN 

Select 
D.id as id , 
CONCAT(I.username ) as DonorName,  
CONCAT(R.firstname , ' ', R.lastname ) as ReceiverName , 
D.donationAmt ,
CAST(CONVERT(D.donationTime ,DATETIME) AS char) as donationTime 
from donationdb.tbl_donations AS D 
INNER JOIN donationdb.tbl_recieverinfo R ON D.receiver_id = R.id
INNER JOIN  donationdb.tbl_donorinfo I ON D.donor_id = I.id;

END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `USP_Login_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Login_Update`(
IN uname varchar(50),
IN pass varchar(50),
IN operation varchar(10)
)
BEGIN
DECLARE result INT;
DECLARE Isadmin INT;
IF operation = 'Login' THEN
    SELECT count(*) INTO result from tbl_donorinfo where username = uname and password = pass LIMIT 1 ;
    SELECT count(*) INTO Isadmin from tbl_admin as a where a.username = uname and a.password = pass LIMIT 1 ;
    IF Isadmin = 1 THEN
		Select 'Admin' as firstname , 'Admin' as username;
    ELSEIF result = 1 THEN 
		Select firstname , username from tbl_donorinfo where username = uname and password = pass LIMIT 1 ;
        INSERT INTO `donationdb`.`tbl_applog`(`username`,`last_login`) VALUES  (uname, NOW());
	ELSE 
		Select 'lock' as firstname ;
    END IF;	
END IF;
IF operation = 'update' THEN 
   SELECT count(*) INTO result from tbl_donorinfo where username = uname LIMIT 1 ;
   IF result = 1 THEN
	   Update tbl_donorinfo SET password = pass where username = uname;
       select 'updated' as firstname ; 
	ELSE 
        select 'nouser' as firstname ;
	END IF;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-16 21:26:54
