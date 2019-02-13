-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: openemis
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `institution_site_programmes`
--

DROP TABLE IF EXISTS `institution_site_programmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_site_programmes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `education_programme_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `start_year` int(4) NOT NULL,
  `end_date` date DEFAULT NULL,
  `end_year` int(4) DEFAULT NULL,
  `institution_site_id` int(11) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `institution_site_id` (`institution_site_id`),
  KEY `education_programme_id` (`education_programme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_site_programmes`
--

LOCK TABLES `institution_site_programmes` WRITE;
/*!40000 ALTER TABLE `institution_site_programmes` DISABLE KEYS */;
INSERT INTO `institution_site_programmes` VALUES (1,1,'2005-06-15',2005,NULL,NULL,1,NULL,NULL,1,'0000-00-00 00:00:00'),(2,3,'2005-06-15',2005,NULL,NULL,2,NULL,NULL,1,'0000-00-00 00:00:00'),(3,4,'2005-06-15',2005,NULL,NULL,2,NULL,NULL,1,'0000-00-00 00:00:00'),(4,5,'2005-06-15',2005,NULL,NULL,2,NULL,NULL,1,'0000-00-00 00:00:00'),(5,6,'2005-06-15',2005,NULL,NULL,2,NULL,NULL,1,'0000-00-00 00:00:00'),(6,2,'2005-06-15',2005,NULL,NULL,3,NULL,NULL,1,'0000-00-00 00:00:00'),(7,1,'2005-06-15',2005,NULL,NULL,4,NULL,NULL,1,'0000-00-00 00:00:00'),(8,2,'2005-06-15',2005,NULL,NULL,4,NULL,NULL,1,'0000-00-00 00:00:00'),(9,3,'2005-06-15',2005,NULL,NULL,4,NULL,NULL,1,'0000-00-00 00:00:00'),(10,4,'2005-06-15',2005,NULL,NULL,4,NULL,NULL,1,'0000-00-00 00:00:00'),(11,5,'2005-06-15',2005,NULL,NULL,4,NULL,NULL,1,'0000-00-00 00:00:00'),(12,6,'2005-06-15',2005,NULL,NULL,4,NULL,NULL,1,'0000-00-00 00:00:00'),(13,3,'2005-06-15',2005,NULL,NULL,5,NULL,NULL,1,'0000-00-00 00:00:00'),(14,4,'2005-06-15',2005,NULL,NULL,5,NULL,NULL,1,'0000-00-00 00:00:00'),(15,5,'2005-06-15',2005,NULL,NULL,5,NULL,NULL,1,'0000-00-00 00:00:00'),(16,3,'2005-06-15',2005,NULL,NULL,6,NULL,NULL,1,'0000-00-00 00:00:00'),(17,4,'2005-06-15',2005,NULL,NULL,6,NULL,NULL,1,'0000-00-00 00:00:00'),(18,5,'2005-06-15',2005,NULL,NULL,6,NULL,NULL,1,'0000-00-00 00:00:00'),(19,1,'2005-06-15',2005,NULL,NULL,9,NULL,NULL,1,'0000-00-00 00:00:00'),(20,1,'2005-06-15',2005,NULL,NULL,11,NULL,NULL,1,'0000-00-00 00:00:00'),(21,2,'2005-06-15',2005,NULL,NULL,23,NULL,NULL,1,'0000-00-00 00:00:00'),(22,2,'2005-06-15',2005,NULL,NULL,27,NULL,NULL,1,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `institution_site_programmes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:16