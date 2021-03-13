-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bloodbank
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `bloodbank`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bloodbank` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `bloodbank`;

--
-- Table structure for table `advertisement`
--

DROP TABLE IF EXISTS `advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertisement` (
  `adv_id` int(100) NOT NULL AUTO_INCREMENT,
  `camp_title` varchar(100) NOT NULL,
  `org_by` varchar(100) NOT NULL,
  `pic` varchar(700) NOT NULL,
  `detail` varchar(900) NOT NULL,
  PRIMARY KEY (`adv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement`
--

LOCK TABLES `advertisement` WRITE;
/*!40000 ALTER TABLE `advertisement` DISABLE KEYS */;
INSERT INTO `advertisement` VALUES (4,'Ramgarhia Engg Collage','Ramgarhia education consial','2.jpg','Blood donation camp Organised by REC.  One who donate get certificate by REC\r\nThat can help you also to gets blood in jeopard time');
/*!40000 ALTER TABLE `advertisement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloodgroup`
--

DROP TABLE IF EXISTS `bloodgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bloodgroup` (
  `bg_id` int(100) NOT NULL AUTO_INCREMENT,
  `bg_name` varchar(100) NOT NULL,
  PRIMARY KEY (`bg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloodgroup`
--

LOCK TABLES `bloodgroup` WRITE;
/*!40000 ALTER TABLE `bloodgroup` DISABLE KEYS */;
INSERT INTO `bloodgroup` VALUES (13,'o+'),(14,'o-'),(15,'AB+'),(16,'AB-'),(17,'A+'),(18,'A-'),(19,'B+'),(20,'B-');
/*!40000 ALTER TABLE `bloodgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camp`
--

DROP TABLE IF EXISTS `camp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `camp` (
  `camp_id` int(100) NOT NULL AUTO_INCREMENT,
  `camp_title` varchar(500) NOT NULL,
  `organised_by` varchar(500) NOT NULL,
  `state` int(100) NOT NULL,
  `city` int(100) NOT NULL,
  `pic` varchar(900) NOT NULL,
  `detail` varchar(1000) NOT NULL,
  PRIMARY KEY (`camp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camp`
--

LOCK TABLES `camp` WRITE;
/*!40000 ALTER TABLE `camp` DISABLE KEYS */;
INSERT INTO `camp` VALUES (1,'Ramgarhia Engg Collage','Ramgarhia Counsil',1,1,'blood_donation_camp.jpg','A Blood Donation Camp at Ramgarhia Engg Collage organized by Ramgarhia consial , Phagwara.'),(7,' Lovely Professional University','Lovely Professional University',1,7,'B.D camp 034.jpg','A Blood Donation Camp at Lovely Professional University organized by Lovely Professional University , Jalandhar.'),(8,'Guru Nanak College','Lions Club',1,1,'p36.jpg','A Blood Donation Camp at G.N.C College, Phagwara organized by Lions Club, Phagwara.'),(9,'Apee Jay College','Human Welfare Society',1,1,'p38_2.jpg','A Blood Donation Camp at Apee-Jay College, Jalandhar organized by Human Welfare Society, Jalandhar.\n ');
/*!40000 ALTER TABLE `camp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `city_id` int(100) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) NOT NULL,
  `pin_code` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` int(100) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'phagwara','144401','kapurthala',1),(4,'faridabad','121001','Gurgaon',2),(7,'jalandhar','144001','jalandhar',1);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `row_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `subj` varchar(700) NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'nannu','bawa12@ymail.com','98889619909','save life'),(2,'manu','manukaler@yahoo.com','9888889765','save life'),(3,'neeru','neeru45@gmail.com','9463958058','give blooooooood'),(4,'paras','bhatia34@gmail.com','9216291294','save life'),(10,'herry','herry@ymaol.com','8790675438','give me a blood');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donarregistration`
--

DROP TABLE IF EXISTS `donarregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donarregistration` (
  `donar_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `pic` varchar(1000) NOT NULL,
  PRIMARY KEY (`donar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donarregistration`
--

LOCK TABLES `donarregistration` WRITE;
/*!40000 ALTER TABLE `donarregistration` DISABLE KEYS */;
INSERT INTO `donarregistration` VALUES (3,'neeru','female','20','9463958058',13,'neeru.bawa@yahoo.com','123','neeru.jpg'),(4,'Paras Bhatia','male','21','9888961990',13,'parasbhatia08@gmail.com','123','11168037_1610636085842033_904443745256932191_n.jpg'),(5,'Rakesh','male','22','9876505652',17,'rakesh12@gmil.com','123','1002679_629448530471361_5912528223898153120_n.jpg'),(6,'Manu','female','20','9779730479',13,'manpreetkaler@yahoo.com','123','12144826_691191231017304_7118038794667291151_n.jpg'),(7,'Sukhwinder','male','22','01823280290',17,'sunnysuyan@gmail.com','123','p3Penguins.jpg'),(8,'Abhishek','male','24','0123456780',19,'abhi@ymail.com','123','resizedBlood donation (1).jpg'),(9,'Ramanjeet Kaur','female','26','9295769630',15,'rbawa08@yahoo.com','123','11261437_1624099511137421_8482759699813102898_n.jpg'),(10,'kuldip Banga','male','26','9878967543',15,'kbanga@yahoo.com','123','10593057_728311113906338_1063644592728298376_n.jpg'),(11,'Jaspinder','male','24','9445678765',16,'singhjaspinder12@gmail.com','123','12038392_969929529729736_1007747926670734265_n (1).jpg'),(12,'Sahil','male','20','8591824296',13,'sahildubey@gmail.com','123','12038380_834746969972073_6382623771453128938_n.jpg'),(13,'sonu','male','25','9594918765',16,'sonukhana34@gmail.com','123','11863382_1032998280067097_2552428582935820453_n.jpg'),(14,'Vinny','male','24','01824230721',18,'vinny786@gmail.com','123','11175046_366978330169273_8044521424217911178_n.jpg'),(15,'Rishav Bhatia','male','19','8781846758',19,'rbhatia@ymail.com','123','1491626_647476172014342_6155162312561723489_n.jpg'),(16,'Rahul Bangar','male','25','9216291294',20,'raulban@gmail.com','123','11899909_948967995160204_759838727467883977_n.jpg'),(17,'Prabhjot','male','24','9818134576',20,'prabh786@gmail.com','123','11899866_690854484348510_8725848025714675727_n.jpg'),(18,'Ridhima','female','25','9889786545',14,'ridhi@ymail.com','123','1.jpg'),(19,'Preet karanq','female','28','8427429079',14,'preet22@yahoo.com','123','123.jpg'),(20,'mntrtgrt','female','35','9888976570',18,'manat@yahoo.com','123','ccccc.jpg'),(21,'GeorgeMallory','female','12','2323424242',18,'asd@asd.hu','asd','');
/*!40000 ALTER TABLE `donarregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donation` (
  `donation_id` int(100) NOT NULL AUTO_INCREMENT,
  `camp_id` int(100) NOT NULL,
  `ddate` datetime NOT NULL,
  `units` int(100) NOT NULL,
  `detail` varchar(800) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`donation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation`
--

LOCK TABLES `donation` WRITE;
/*!40000 ALTER TABLE `donation` DISABLE KEYS */;
INSERT INTO `donation` VALUES (28,1,'2014-09-14 00:00:00',20,'A Blood Donation Camp at Ramgarhia Engg Collage organized by Ramgarhia consial , Phagwara.','parasbhatia08@gmail.com'),(29,7,'2015-05-11 00:00:00',30,'A Blood Donation Camp at Lovely Professional University organized by Lovely Professional University , Jalandhar.','parasbhatia08@gmail.com'),(30,8,'2014-11-04 00:00:00',25,'A Blood Donation Camp at G.N.C College, Phagwara organized by Lions Club, Phagwara.','parasbhatia08@gmail.com'),(31,9,'2014-12-18 00:00:00',22,'A Blood Donation Camp at Apee-Jay College, Jalandhar organized by Human Welfare Society, Jalandhar.\r\n ','parasbhatia08@gmail.com'),(32,7,'2010-06-19 00:00:00',27,'A Blood Donation Camp at Lovely Professional Unive...','preet22@yahoo.com'),(33,8,'2010-08-20 00:00:00',17,'save life','manpreetkaler@yahoo.com'),(34,9,'2009-06-05 00:00:00',10,'give blood','manpreetkaler@yahoo.com'),(35,1,'2012-09-13 00:00:00',22,'save life','sahildubey@gmail.com'),(36,9,'0000-00-00 00:00:00',444,'kjj','neeru.bawa@yahoo.com'),(37,1,'4234-01-01 00:00:00',45,'gfg','asd@asd.hu'),(38,9,'3424-01-01 00:00:00',12,'dsfsdf','asd@asd.hu');
/*!40000 ALTER TABLE `donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallary`
--

DROP TABLE IF EXISTS `gallary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallary` (
  `camp_id` int(100) NOT NULL,
  `pic_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(400) NOT NULL,
  `pic` varchar(800) NOT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallary`
--

LOCK TABLES `gallary` WRITE;
/*!40000 ALTER TABLE `gallary` DISABLE KEYS */;
INSERT INTO `gallary` VALUES (9,15,'pic 1','p48_2.jpg'),(9,16,'pic 2','p11 (1).jpg'),(9,17,'pic 3','p141.jpg'),(9,18,'pic 5','p177_2.jpg'),(9,19,'pic 6','p279.jpg'),(8,20,'pic 8','p246.jpg'),(9,21,'pic 9','p82.jpg'),(7,22,'pic 2','p82.jpg'),(7,23,'pic 3','p93.jpg'),(7,24,'pic 6','p148.jpg'),(7,25,'pic 7','pamrik@ymail.com1 (2).jpg'),(7,26,'pic 8','slider4.jpg'),(7,27,'pic 9','slider7.jpg'),(1,28,'pic 2','slider8.jpg'),(1,29,'pic 3','slider3.jpg'),(1,30,'pic 4','donation.jpg'),(1,31,'pic 3','Blood-Donation2.jpg'),(1,32,'pic 4','blood-donation-.jpg'),(1,33,'pic 6','blood-donation.jpg'),(8,34,'pic 1','resizedBlood donation (1).jpg'),(8,35,'pic 2','Blood-donation-camp.jpg'),(8,36,'pic 4','3.jpg'),(8,37,'pic 5','4.jpg'),(8,38,'pic 7','5.jpg');
/*!40000 ALTER TABLE `gallary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `news_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `detail` varchar(900) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'blood donate','give blood give bloodgive blood'),(2,'blood bank','blooooddddd\n\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requestes`
--

DROP TABLE IF EXISTS `requestes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requestes` (
  `req_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bgroup` int(100) NOT NULL,
  `reqdate` datetime NOT NULL,
  `detail` varchar(500) NOT NULL,
  PRIMARY KEY (`req_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requestes`
--

LOCK TABLES `requestes` WRITE;
/*!40000 ALTER TABLE `requestes` DISABLE KEYS */;
INSERT INTO `requestes` VALUES (7,'balwant singh','male','22','8427420298','balwant11@gmail.com',19,'2015-01-15 00:00:00','save life'),(8,'japleen','female','22','9216291294','jsimran08@gmail.com',13,'2014-01-12 00:00:00','save life'),(9,'Naresh','female','21','8427420291','nareshheer719@gmail.com',17,'2015-01-18 00:00:00','save life'),(10,'Taran','male','55','7589325050','taran@ymail.com',14,'2012-01-29 00:00:00',''),(11,'zuluz','female','23','23423','asd@asd.hu',20,'1910-01-01 00:00:00','sdsd'),(15,'Juan Pedro','male','342','234245','asd@asd.hu',19,'2342-01-01 00:00:00','vcbdyg');
/*!40000 ALTER TABLE `requestes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `state_id` int(100) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(100) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'punjab'),(2,'delhi'),(3,'Andhra Pradesh'),(4,'Bihar'),(5,'Assam');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `typeofuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('manu','manu','Admin'),('neeru','neeru','General');
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

-- Dump completed on 2020-04-21 11:24:32
