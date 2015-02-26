-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: gametournament
-- ------------------------------------------------------
-- Server version	5.6.23-log

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
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_name` varchar(20) DEFAULT NULL,
  `prize` int(11) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `e_date` date DEFAULT NULL,
  `e_winner` int(11) DEFAULT NULL,
  PRIMARY KEY (`e_id`),
  KEY `e_winner` (`e_winner`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`e_winner`) REFERENCES `team` (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (22,'Mee Inthi vanta',300000,'Mumbai','2014-08-25',3),(23,'Rogers Cup one',300000,'Hyderabad','2015-08-26',2),(24,'Rio Open',300000,'Memphis','2016-08-27',4),(25,'Citi Open',300000,'NewYork','2017-08-28',5),(26,'FA Cup',300000,'Texas','2018-08-29',6),(27,'Champions',300000,'London','2019-08-30',1),(28,'Master Chef',300000,'Warangal','2020-08-31',8);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT '0',
  `g_winner` int(11) DEFAULT NULL,
  PRIMARY KEY (`g_id`,`m_id`),
  KEY `m_id` (`m_id`),
  KEY `g_winner` (`g_winner`),
  CONSTRAINT `games_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `matchinformation` (`m_id`),
  CONSTRAINT `games_ibfk_2` FOREIGN KEY (`g_winner`) REFERENCES `team` (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,1,1),(2,1,1),(3,1,1),(4,2,1),(5,2,1),(6,2,1),(7,3,1),(8,3,1),(9,3,1),(10,4,1),(11,4,1),(12,4,1),(13,5,2),(14,5,2),(15,5,2),(16,6,2),(17,6,2),(18,6,2),(19,7,2),(20,7,2),(21,7,2),(22,8,2),(23,8,2),(24,8,2),(25,9,3),(26,9,3),(27,9,3),(28,10,3),(29,10,3),(30,10,3),(31,11,3),(32,11,3),(33,11,3),(34,12,3),(35,12,3),(36,12,3),(37,13,4),(38,13,4),(39,13,4),(40,14,4),(41,14,4),(42,14,4),(43,15,4),(44,15,4),(45,15,4),(46,16,4),(47,16,4),(48,16,4),(49,17,5),(50,17,5),(51,17,5),(52,18,5),(53,18,5),(54,18,5),(55,19,5),(56,19,5),(57,19,5),(58,20,5),(59,20,5),(60,20,5),(61,21,6),(62,21,6),(63,21,6),(64,22,6),(65,22,6),(66,22,6),(67,23,6),(68,23,6),(69,23,6),(70,24,6),(71,24,6),(72,24,6),(73,25,7),(74,25,7),(75,25,7),(76,26,7),(77,26,7),(78,26,7),(79,27,7),(80,27,7),(81,27,7),(82,28,7),(83,28,7),(84,28,7);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchinformation`
--

DROP TABLE IF EXISTS `matchinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matchinformation` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_id` int(11) DEFAULT NULL,
  `teamA_id` int(11) DEFAULT NULL,
  `teamB_id` int(11) DEFAULT NULL,
  `m_winner` int(11) DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  KEY `e_id` (`e_id`),
  KEY `teamA_id` (`teamA_id`),
  KEY `teamB_id` (`teamB_id`),
  KEY `m_winner` (`m_winner`),
  CONSTRAINT `matchinformation_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `event` (`e_id`),
  CONSTRAINT `matchinformation_ibfk_2` FOREIGN KEY (`teamA_id`) REFERENCES `team` (`t_id`),
  CONSTRAINT `matchinformation_ibfk_3` FOREIGN KEY (`teamB_id`) REFERENCES `team` (`t_id`),
  CONSTRAINT `matchinformation_ibfk_4` FOREIGN KEY (`m_winner`) REFERENCES `team` (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchinformation`
--

LOCK TABLES `matchinformation` WRITE;
/*!40000 ALTER TABLE `matchinformation` DISABLE KEYS */;
INSERT INTO `matchinformation` VALUES (1,22,1,2,1),(2,22,1,3,1),(3,22,1,4,1),(4,22,1,5,1),(5,23,2,3,2),(6,23,2,4,2),(7,23,2,5,2),(8,23,2,6,2),(9,24,3,4,3),(10,24,3,5,3),(11,24,3,6,3),(12,24,3,7,3),(13,25,4,5,4),(14,25,4,6,4),(15,25,4,7,4),(16,25,4,8,4),(17,26,5,6,5),(18,26,5,7,5),(19,26,5,8,5),(20,26,5,1,5),(21,27,6,7,6),(22,27,6,8,6),(23,27,6,1,6),(24,27,6,2,6),(25,28,7,8,7),(26,28,7,1,7),(27,28,7,2,7),(28,28,7,3,7);
/*!40000 ALTER TABLE `matchinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sportmen`
--

DROP TABLE IF EXISTS `sportmen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sportmen` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `handle` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `t_id` (`t_id`),
  CONSTRAINT `sportmen_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `team` (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sportmen`
--

LOCK TABLES `sportmen` WRITE;
/*!40000 ALTER TABLE `sportmen` DISABLE KEYS */;
INSERT INTO `sportmen` VALUES (16,1,'Mahender singh','Dhoni','1897-08-25','India','M'),(17,2,'Andrew','Tye','1897-08-26','australia','M'),(18,3,'Suresh','Raina','1897-08-27','India','M'),(19,4,'serena','williams','1897-08-28','south africa','M'),(20,5,'Katrina','Adams','1897-08-29','canada','F'),(21,6,'Juan','Theron','1897-08-30','china','F'),(22,7,'Shane Watson','Watson','1897-08-31','australia','F'),(23,8,'Iqbal','Abdullah','1897-09-01','iraq','M'),(24,1,'Kevin','Pietersen','1897-09-02','gremany','F'),(25,2,'Greta','Arn','1897-09-03','gremany','M'),(26,3,'Kane','Williamson','1897-09-04','canada','F'),(27,4,'Ravi','Bopara','1897-09-05','India','M'),(28,5,'Sania','Mirza','1897-09-06','India','M'),(29,6,'Jasprit','Bumrah','1897-09-07','bangladesh','M'),(30,7,'Josh','Hazlewood','1897-09-08','bangladesh','F'),(31,8,'Marchant','De Lange','1897-09-09','australia','F'),(32,1,'Pawan','Suyal','1897-09-10','India','F'),(33,2,'Shreyas','Gopal','1897-09-11','india','M'),(34,3,'Aaron','Finch','1897-09-12','france','M'),(35,4,'Virat','Kohli','1897-09-13','india','F'),(36,5,'Sean','Abbott','1897-09-14','france','M'),(37,6,'Adam','Milne','1897-09-15','south africa','F'),(38,7,'Brad','Hogg','1897-09-16','china','M'),(39,8,'Sai','Kiran','1897-09-17','australia','F');
/*!40000 ALTER TABLE `sportmen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(20) DEFAULT NULL,
  `members` int(11) DEFAULT NULL,
  `date_formed` date DEFAULT NULL,
  `data_disbanded` date DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Super Kings',3,'1992-05-24','2017-08-25'),(2,'Sunrisers',3,'1992-05-25','2017-08-26'),(3,'Royal Challengers',3,'1992-05-26','2017-08-27'),(4,'Knight Riders',3,'1992-05-27','2017-08-28'),(5,'Daredevils',3,'1992-05-28','2017-08-29'),(6,'warriors',3,'1992-05-29','2017-08-30'),(7,'tigers',3,'1992-05-30','2017-08-31'),(8,'Master Blasters',3,'1992-05-31','2017-09-01');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-26 13:17:15
