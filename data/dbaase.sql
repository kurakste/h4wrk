-- MySQL dump 10.16  Distrib 10.2.13-MariaDB, for osx10.13 (x86_64)
--
-- Host: localhost    Database: homework
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `Goods`
--

DROP TABLE IF EXISTS `Goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Goods`
--

LOCK TABLES `Goods` WRITE;
/*!40000 ALTER TABLE `Goods` DISABLE KEYS */;
INSERT INTO `Goods` VALUES (1,'Item1','decription of i1','pic1.jpg'),(2,'Item2','decription of i2','pic2.jpg'),(3,'Item3','decription of i3','pic3.jpg'),(4,'Item4','decription of i4','pic4.jpg'),(5,'Item5','decription of i5','pic5.jpg'),(6,'Item6','decription of i6','pic6.jpg'),(7,'Item7','decription of i7','pic7.jpg'),(8,'Item11','decription of i11','pic11.jpg'),(9,'Item12','decription of i12','pic12.jpg'),(10,'Item13','decription of i13','pic13.jpg'),(11,'Item14','decription of i14','pic14.jpg'),(12,'Item15','decription of i15','pic15.jpg'),(13,'Item16','decription of i16','pic16.jpg'),(14,'Item17','decription of i17','pic17.jpg'),(15,'Item21','decription of i21','pic21.jpg'),(16,'Item22','decription of i22','pic22.jpg'),(17,'Item23','decription of i23','pic23.jpg'),(18,'Item24','decription of i24','pic24.jpg'),(19,'Item25','decription of i25','pic25.jpg'),(20,'Item26','decription of i26','pic26.jpg'),(21,'Item27','decription of i27','pic27.jpg');
/*!40000 ALTER TABLE `Goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Images`
--

DROP TABLE IF EXISTS `Images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Images`
--

LOCK TABLES `Images` WRITE;
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
INSERT INTO `Images` VALUES (1,'Item1','decription of i1','pic1.jpg'),(2,'Item2','decription of i2','pic2.jpg'),(3,'Item3','decription of i3','pic3.jpg'),(4,'Item4','decription of i4','pic4.jpg'),(5,'Item5','decription of i5','pic5.jpg'),(6,'Item6','decription of i6','pic6.jpg'),(7,'Item7','decription of i7','pic7.jpg');
/*!40000 ALTER TABLE `Images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Items`
--

DROP TABLE IF EXISTS `Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `discountId` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Items`
--

LOCK TABLES `Items` WRITE;
/*!40000 ALTER TABLE `Items` DISABLE KEYS */;
INSERT INTO `Items` VALUES (1,'Item1','decription of i1',1,1,12,25.5),(3,'Item3','decription of i3',1,1,32,625.5),(4,'Item4','decription of i4',1,1,42,525.5),(5,'Item5','decription of i5',2,1,52,425.5),(6,'Item6','decription of i6',2,1,22,225.5),(7,'Item7','decription of i7',2,2,32,325.5),(8,'Item8','decription of i8',3,1,42,525.5),(9,'Item9','decription of i9',3,1,52,425.5),(10,'Item10','decription of i10',4,1,12,325.5),(11,'Item11','decription of i11',4,2,22,225.5),(12,'Item12','decription of i12',4,1,42,925.5),(13,'Item13','decription of i13',4,1,32,825.5),(14,'Item14','decription of i14',5,1,22,725.5),(15,'Item15','decription of i15',5,3,22,525.5),(16,'Item16','decription of i16',6,1,22,425.5),(17,'Item17','decription of i17',6,1,32,325.5),(18,'Updated','decription of i18',6,1,42,225.5),(19,'Item1','decription of i1',NULL,NULL,NULL,NULL),(20,'Item1','decription of i1',NULL,NULL,NULL,NULL),(21,'Item1','decription of i1',NULL,NULL,NULL,NULL),(25,'NEW NAME','NEW descriptions',3,4,33,33.33),(26,'NEW NAME','NEW descriptions',3,4,33,33.33);
/*!40000 ALTER TABLE `Items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-08 22:10:54
