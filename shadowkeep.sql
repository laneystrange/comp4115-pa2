-- MySQL dump 10.13  Distrib 5.6.23, for osx10.8 (x86_64)
--
-- Host: localhost    Database: Shadowkeep
-- ------------------------------------------------------
-- Server version	5.6.23

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
-- Table structure for table `Event`
--

DROP TABLE IF EXISTS `Event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event` (
  `name` varchar(15) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `prize` int(11) DEFAULT NULL,
  `location` varchar(15) NOT NULL DEFAULT '',
  `WinningTeamId` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event`
--

LOCK TABLES `Event` WRITE;
/*!40000 ALTER TABLE `Event` DISABLE KEYS */;
INSERT INTO `Event` VALUES ('UnderWaterCup','0003-03-13',3313,'Berlin','0000000005'),('FinalShadowkeep','0002-12-15',25,'Canada','0000000003'),('WorldCup','0001-12-12',25,'China','0000000001'),('ShallowShadows','2012-12-13',5000,'Mexico','0000000006'),('DeepShadows','0001-01-14',10000000,'MtEverest','0000000006'),('ShallowShadows','0001-01-14',5000,'Panama','0000000006'),('LightAndShadows','0001-12-12',12,'TwelveTown','0000000004'),('ShadowToss','0002-02-13',100,'USA','0000000002');
/*!40000 ALTER TABLE `Event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Game`
--

DROP TABLE IF EXISTS `Game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Game` (
  `id` char(10) NOT NULL DEFAULT '',
  `matchNumber` int(11) NOT NULL,
  `eventLocation` varchar(15) NOT NULL DEFAULT '',
  `winnerId` char(10) DEFAULT NULL,
  `loserId` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `eventLocation` (`eventLocation`),
  KEY `winnerId` (`winnerId`),
  KEY `loserId` (`loserId`),
  CONSTRAINT `game_ibfk_1` FOREIGN KEY (`eventLocation`) REFERENCES `Event` (`location`),
  CONSTRAINT `game_ibfk_2` FOREIGN KEY (`winnerId`) REFERENCES `Team` (`id`),
  CONSTRAINT `game_ibfk_3` FOREIGN KEY (`loserId`) REFERENCES `Team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Game`
--

LOCK TABLES `Game` WRITE;
/*!40000 ALTER TABLE `Game` DISABLE KEYS */;
INSERT INTO `Game` VALUES ('0000000001',1,'China','0000000001','0000000002'),('0000000002',1,'China','0000000001','0000000002'),('0000000003',1,'China','0000000001','0000000002'),('0000000004',2,'China','0000000003','0000000004'),('0000000005',2,'China','0000000003','0000000004'),('0000000006',2,'China','0000000003','0000000004'),('0000000007',2,'China','0000000004','0000000003'),('0000000008',2,'China','0000000004','0000000003'),('0000000009',3,'China','0000000003','0000000001'),('0000000010',3,'China','0000000003','0000000001'),('0000000011',3,'China','0000000003','0000000001'),('0000000012',3,'China','0000000001','0000000003'),('0000000013',3,'China','0000000001','0000000003');
/*!40000 ALTER TABLE `Game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Player`
--

DROP TABLE IF EXISTS `Player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Player` (
  `id` char(10) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `handle` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `homeCountry` varchar(15) DEFAULT NULL,
  `gender` enum('f','m') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Player`
--

LOCK TABLES `Player` WRITE;
/*!40000 ALTER TABLE `Player` DISABLE KEYS */;
INSERT INTO `Player` VALUES ('000000001','Morgan','morgsteffy','1994-01-27','USA','f'),('000000002','John','appleSeed4lyfe','1922-02-02','Japan','m'),('000000003','Jill','flowerPower','1999-03-02','Mexico','f'),('000000004','Edward','sparkles','1991-04-19','Canada','m'),('000000005','John','doeOrDont','1995-05-25','Canada','m'),('000000006','Morgan','morganTheBoy','1996-06-06','Canada','m'),('000000007','Jackson','myDadisJack','1977-07-07','Canada','m'),('000000008','Win','WinNoMatterWhat','1988-08-08','Canada','m');
/*!40000 ALTER TABLE `Player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Team`
--

DROP TABLE IF EXISTS `Team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Team` (
  `id` char(10) NOT NULL,
  `dateFormed` date DEFAULT NULL,
  `dateEnded` date DEFAULT NULL,
  `name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Team`
--

LOCK TABLES `Team` WRITE;
/*!40000 ALTER TABLE `Team` DISABLE KEYS */;
INSERT INTO `Team` VALUES ('0000000001','2012-01-01','2013-03-01','allwedoiswin'),('0000000002','2012-01-01','2012-03-01','riceAndBeans'),('0000000003','2012-01-01','2012-03-01','thebest'),('0000000004','2014-01-01',NULL,'zoomzoom'),('0000000005','2012-01-01',NULL,'chau'),('0000000006','2013-01-01','2014-03-01','theGreatestTeam'),('0000000007','2013-01-01','2015-02-01','cheeseFries'),('0000000008','2015-01-01',NULL,'littleFish');
/*!40000 ALTER TABLE `Team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeamMember`
--

DROP TABLE IF EXISTS `TeamMember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TeamMember` (
  `teamId` char(10) NOT NULL DEFAULT '',
  `playerId` char(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`teamId`,`playerId`),
  KEY `playerId` (`playerId`),
  CONSTRAINT `teammember_ibfk_1` FOREIGN KEY (`teamId`) REFERENCES `Team` (`id`),
  CONSTRAINT `teammember_ibfk_2` FOREIGN KEY (`playerId`) REFERENCES `Player` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeamMember`
--

LOCK TABLES `TeamMember` WRITE;
/*!40000 ALTER TABLE `TeamMember` DISABLE KEYS */;
INSERT INTO `TeamMember` VALUES ('0000000001','000000001'),('0000000007','000000001'),('0000000001','000000002'),('0000000003','000000002'),('0000000006','000000002'),('0000000001','000000003'),('0000000003','000000003'),('0000000004','000000003'),('0000000006','000000003'),('0000000007','000000003'),('0000000002','000000004'),('0000000003','000000004'),('0000000005','000000004'),('0000000006','000000004'),('0000000008','000000004'),('0000000002','000000005'),('0000000003','000000005'),('0000000006','000000005'),('0000000007','000000005'),('0000000002','000000006'),('0000000003','000000006'),('0000000004','000000006'),('0000000003','000000007'),('0000000005','000000007'),('0000000008','000000007'),('0000000002','000000008'),('0000000003','000000008'),('0000000004','000000008'),('0000000005','000000008'),('0000000008','000000008');
/*!40000 ALTER TABLE `TeamMember` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-26 14:20:53
