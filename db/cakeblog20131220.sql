-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: cake_blog
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.13.10.1

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
-- Table structure for table `acos`
--

DROP TABLE IF EXISTS `acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acos`
--

LOCK TABLES `acos` WRITE;
/*!40000 ALTER TABLE `acos` DISABLE KEYS */;
INSERT INTO `acos` VALUES (1,NULL,NULL,NULL,'controllers',1,74),(2,1,NULL,NULL,'Groups',2,15),(3,2,NULL,NULL,'index',3,4),(4,2,NULL,NULL,'view',5,6),(5,2,NULL,NULL,'add',7,8),(6,2,NULL,NULL,'edit',9,10),(7,2,NULL,NULL,'delete',11,12),(8,2,NULL,NULL,'isAuthorized',13,14),(9,1,NULL,NULL,'Pages',16,21),(10,9,NULL,NULL,'display',17,18),(11,9,NULL,NULL,'isAuthorized',19,20),(12,1,NULL,NULL,'Posts',22,37),(13,12,NULL,NULL,'index',23,24),(14,12,NULL,NULL,'view',25,26),(15,12,NULL,NULL,'add',27,28),(16,12,NULL,NULL,'generate',29,30),(17,12,NULL,NULL,'edit',31,32),(18,12,NULL,NULL,'delete',33,34),(19,12,NULL,NULL,'isAuthorized',35,36),(20,1,NULL,NULL,'Users',38,57),(21,20,NULL,NULL,'initDb',39,40),(22,20,NULL,NULL,'index',41,42),(23,20,NULL,NULL,'view',43,44),(24,20,NULL,NULL,'add',45,46),(25,20,NULL,NULL,'edit',47,48),(26,20,NULL,NULL,'delete',49,50),(27,20,NULL,NULL,'login',51,52),(28,20,NULL,NULL,'logout',53,54),(29,20,NULL,NULL,'isAuthorized',55,56),(30,1,NULL,NULL,'Widgets',58,71),(31,30,NULL,NULL,'index',59,60),(32,30,NULL,NULL,'view',61,62),(33,30,NULL,NULL,'add',63,64),(34,30,NULL,NULL,'edit',65,66),(35,30,NULL,NULL,'delete',67,68),(36,30,NULL,NULL,'isAuthorized',69,70),(37,1,NULL,NULL,'AclExtras',72,73);
/*!40000 ALTER TABLE `acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aros`
--

DROP TABLE IF EXISTS `aros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros`
--

LOCK TABLES `aros` WRITE;
/*!40000 ALTER TABLE `aros` DISABLE KEYS */;
INSERT INTO `aros` VALUES (1,NULL,'Group',1,NULL,1,4),(2,NULL,'Group',2,NULL,5,8),(3,NULL,'Group',3,NULL,9,12),(4,1,'User',1,NULL,2,3),(5,2,'User',2,NULL,6,7),(6,3,'User',3,NULL,10,11);
/*!40000 ALTER TABLE `aros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aros_acos`
--

DROP TABLE IF EXISTS `aros_acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros_acos`
--

LOCK TABLES `aros_acos` WRITE;
/*!40000 ALTER TABLE `aros_acos` DISABLE KEYS */;
INSERT INTO `aros_acos` VALUES (1,1,1,'1','1','1','1'),(2,2,1,'-1','-1','-1','-1'),(3,2,12,'1','1','1','1'),(4,2,30,'1','1','1','1'),(5,3,1,'-1','-1','-1','-1'),(6,3,15,'1','1','1','1'),(7,3,17,'1','1','1','1'),(8,3,33,'1','1','1','1'),(9,3,34,'1','1','1','1');
/*!40000 ALTER TABLE `aros_acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'administrators','2013-12-20 10:23:00','2013-12-20 10:23:00'),(2,'managers','2013-12-20 13:35:46','2013-12-20 13:35:46'),(3,'users','2013-12-20 13:35:52','2013-12-20 13:35:52');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (2,1,'Test the first post again','test-the-first-post-again','OK you can do it ','2013-12-20 13:54:07','2013-12-20 13:54:07'),(3,2,'OK , I will try this framework','ok-i-will-try-this-framework','ã“ã‚Œã¯ã„ã„ã­ï¼','2013-12-20 13:57:04','2013-12-20 13:57:04'),(4,2,'æ—¥æœ¬èªžã¯é¢ç™½ã„ï¼ï¼ï¼','æ—¥æœ¬èªžã¯é¢ç™½ã„','ã‚¯ãƒ¬ãƒ¼ãƒ é›»è©±ã«ã‚¢ãƒãªã—è¨ªå•ã€æžœã¦ã¯ç¤¾é•·å®¤å‘¼ã³å‡ºã—ã¾ã§!?ã€€æ€ã‚ãšãŸã˜ã‚ãå ´é¢ã«ã€å‡ºã¦ãã‚‹è¨€è‘‰ãŒã€Œã©ã†ã‚‚â€¦ã€ã ã‘ã§ã¯å¿ƒã‚‚ã¨ãªã„ã§ã™ã‚ˆã­ã€‚\r\nã€€ãã‚“ãªã¨ãã«ã¯iPhoneã‚¢ãƒ—ãƒªã€ŒHearingãƒ“ã‚¸ãƒã‚¹æ•¬èªžã€!! ã€€','2013-12-20 13:57:48','2013-12-20 13:57:48'),(5,1,'Tiáº¿ng Viá»‡t thÃ¬ sao nÃ o ? MÃ y cÃ³ hiá»ƒn thá»‹ Ä‘Æ°á»£c khÃ´ng? ','tiáº¿ng-viá»‡t-thi-sao-nao-may-co-hiá»ƒn-thá»‹-duá»£c-khong','Hiá»ƒn thá»‹ Ä‘Æ°á»£c chá»© sao khÃ´ng ? ','2013-12-20 13:59:11','2013-12-20 13:59:11'),(6,2,'This is a post  ','this-is-a-post','this is a post content ','2013-12-20 14:20:44','2013-12-20 14:20:44');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'testAd','bb439a94d1a51f34fd396fc517ae7fcdb7cc7ec2',1,'2013-12-20 13:36:02','2013-12-20 13:36:02'),(2,'testMa','bb439a94d1a51f34fd396fc517ae7fcdb7cc7ec2',2,'2013-12-20 13:36:18','2013-12-20 13:36:18'),(3,'testU','bb439a94d1a51f34fd396fc517ae7fcdb7cc7ec2',3,'2013-12-20 13:36:50','2013-12-20 13:36:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `part_no` varchar(12) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-19 22:04:12
