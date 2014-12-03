-- MySQL dump 10.13  Distrib 5.5.38, for osx10.6 (i386)
--
-- Host: localhost    Database: ecom
-- ------------------------------------------------------
-- Server version	5.5.38

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cat_name` varchar(128) NOT NULL,
  `parent_name` varchar(128) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`cat_name`),
  UNIQUE KEY `cat_name_UNIQUE` (`cat_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('Books','none'),('Fiction','Books'),('Non-Fiction','Books');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition`
--

DROP TABLE IF EXISTS `condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition` (
  `condition` varchar(45) NOT NULL,
  PRIMARY KEY (`condition`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition`
--

LOCK TABLES `condition` WRITE;
/*!40000 ALTER TABLE `condition` DISABLE KEYS */;
INSERT INTO `condition` VALUES ('Damaged'),('Moderate Usage'),('Near Mint'),('New'),('Used');
/*!40000 ALTER TABLE `condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `shopping_cart_UNIQUE` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,'2009-07-26 05:00:00'),(2,1,0,'2009-07-27 05:00:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(128) NOT NULL,
  `prod_desc` varchar(256) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `sold` tinyint(4) NOT NULL DEFAULT '0',
  `featured_image` varchar(45) NOT NULL DEFAULT 'img_default/default-prod.jpg',
  `condition` varchar(45) NOT NULL DEFAULT 'Used',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Harry Potter and the socers stone','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.5,1,0,'img_default/1/featured-products/1.jpg','Used','0000-00-00 00:00:00'),(2,'Harry Potter and chamber of secrets','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9.6,1,0,'img_default/1/featured-products/2.jpg','Used','0000-00-00 00:00:00'),(3,'Harry Potter and prisoner of azkaban','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.5,1,0,'img_default/1/featured-products/3.jpg','Used','0000-00-00 00:00:00'),(4,'Harry Potter and goblet of fire','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',7.3,1,0,'img_default/1/featured-products/4.jpg','Used','0000-00-00 00:00:00'),(5,'Harry Potter and the order of the phenix','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.1,1,0,'img_default/1/featured-products/5.jpg','Used','0000-00-00 00:00:00'),(6,'Harry Potter and half blood prince','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',11.56,1,0,'img_default/1/featured-products/6.jpg','Used','0000-00-00 00:00:00'),(7,'Harry Potter and deathly hallows','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9.45,1,0,'img_default/1/featured-products/7.jpg','Used','0000-00-00 00:00:00'),(8,'Gone girl','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.67,1,0,'img_default/1/featured-products/8.jpg','Used','0000-00-00 00:00:00'),(9,'Girl with the dragon tattoo','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9,1,0,'img_default/1/featured-products/9.jpg','Used','0000-00-00 00:00:00'),(10,'Sherlock holmes','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9,1,0,'img_default/1/featured-products/10.jpg','Used','0000-00-00 00:00:00'),(11,'Harry Potter and the socers stone (Like new)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.55,2,0,'img_default/2/featured-products/11.jpg','Used','0000-00-00 00:00:00'),(12,'Harry Potter and chamber of secrets (Slight rip on a few pages)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',6.5,2,0,'img_default/2/featured-products/12.jpg','Used','0000-00-00 00:00:00'),(13,'Harry Potter and prisoner of azkaban (Coffee spill in the middle of book)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',4.3,2,0,'img_default/2/featured-products/13.jpg','Used','0000-00-00 00:00:00'),(14,'Harry Potter and goblet of fire (Like new)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.5,2,0,'img_default/2/featured-products/14.jpg','Used','0000-00-00 00:00:00'),(15,'Harry Potter and the order of the phenix (Missing soft cover)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',7.1,2,0,'img_default/2/featured-products/15.jpg','Used','0000-00-00 00:00:00'),(16,'Harry Potter and half blood prince (Signed by J.K Rowling)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',50.5,2,0,'img_default/2/featured-products/16.jpg','Used','0000-00-00 00:00:00'),(17,'Harry Potter and deathly hallows (With picture book from the movie)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',20.3,2,0,'img_default/2/featured-products/17.jpg','Used','0000-00-00 00:00:00'),(18,'Gone girl (Movie edition)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,2,0,'img_default/2/featured-products/18.jpg','Used','0000-00-00 00:00:00'),(19,'Girl with the dragon tattoo (Movie Edition)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,2,0,'img_default/2/featured-products/19.jpg','Used','0000-00-00 00:00:00'),(20,'Sherlock holmes (Movie Edition)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,2,0,'img_default/2/featured-products/20.jpg','Used','0000-00-00 00:00:00'),(21,'Harry Potter and the socers stone never been read','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',20.1,3,0,'img_default/3/featured-products/21.jpg','Used','0000-00-00 00:00:00'),(22,'Harry Potter and chamber of secrets **Previously owned by Daniel Radclif','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',60.67,3,0,'img_default/3/featured-products/22.jpg','Used','0000-00-00 00:00:00'),(23,'Harry Potter and prisoner of azkaban **Like new','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.56,3,0,'img_default/3/featured-products/23.jpg','Used','0000-00-00 00:00:00'),(24,'Harry Potter and goblet of fire ** Exelect condition','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.4,3,0,'img_default/3/featured-products/24.jpg','Used','0000-00-00 00:00:00'),(25,'Harry Potter and the order of the phenix **With picture book','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',15.69,3,0,'img_default/3/featured-products/25.jpg','Used','0000-00-00 00:00:00'),(26,'Harry Potter and half blood prince **Signed by Emma Watson','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',80.59,3,0,'img_default/3/featured-products/26.jpg','Used','0000-00-00 00:00:00'),(27,'Harry Potter and deathly hallows **Signed by Rupart Grant','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',60.49,3,0,'img_default/3/featured-products/27.jpg','Used','0000-00-00 00:00:00'),(28,'Gone girl **Movie edition**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,3,0,'img_default/3/featured-products/28.jpg','Used','0000-00-00 00:00:00'),(29,'Girl with the dragon tattoo **Movie edition**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,3,0,'img_default/3/featured-products/29.jpg','Used','0000-00-00 00:00:00'),(30,'Sherlock holmes **Movie edition**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,3,0,'img_default/3/featured-products/30.jpg','Used','0000-00-00 00:00:00'),(31,'Steve Jobs Biography','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.45,1,0,'img_default/1/featured-products/31.jpg','Used','0000-00-00 00:00:00'),(32,'Steve Woz Biography','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',12.45,1,0,'img_default/1/featured-products/32.jpg','Used','0000-00-00 00:00:00'),(33,'Ghost in the wire','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.75,1,0,'img_default/1/featured-products/33.jpg','Used','0000-00-00 00:00:00'),(34,'Elon Musk Autobiography','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',5.45,1,0,'img_default/1/featured-products/34.jpg','Used','0000-00-00 00:00:00'),(35,'Space X','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',3.45,1,0,'img_default/1/featured-products/35.jpg','Used','0000-00-00 00:00:00'),(36,'Chris Hatafeild Biography','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9.45,1,0,'img_default/1/featured-products/36.jpg','Used','0000-00-00 00:00:00'),(37,'Photo book by Chris Hatafeild','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.45,1,0,'img_default/1/featured-products/37.jpg','Used','0000-00-00 00:00:00'),(38,'The social network','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',15.45,1,0,'img_default/1/featured-products/38.jpg','Used','0000-00-00 00:00:00'),(39,'MySQL for dummies','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',50.45,1,0,'img_default/1/featured-products/39.jpg','Used','0000-00-00 00:00:00'),(40,'PHP for dummies','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',50.45,1,0,'img_default/1/featured-products/40.jpg','Used','0000-00-00 00:00:00'),(41,'Steve Jobs Biography (Like new!!)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',12.45,2,0,'img_default/2/featured-products/41.jpg','Used','0000-00-00 00:00:00'),(42,'Steve Woz Biography (Signed by Steve Woz!)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',100.45,2,0,'img_default/2/featured-products/42.jpg','Used','0000-00-00 00:00:00'),(43,'Ghost in the wire (Never been read)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9.75,2,0,'img_default/2/featured-products/43.jpg','Used','0000-00-00 00:00:00'),(44,'Elon Musk Autobiography (Signed Copy!!!)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',30.45,2,0,'img_default/2/featured-products/44.jpg','Used','0000-00-00 00:00:00'),(45,'Space X (With actual blue prints)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',3.45,2,0,'img_default/2/featured-products/45.jpg','Used','0000-00-00 00:00:00'),(46,'Chris Hatafeild Biography (Signed Copy!!)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9.45,2,0,'img_default/2/featured-products/46.jpg','Used','0000-00-00 00:00:00'),(47,'Photo book by Chris Hatafeild (Like new!)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.45,2,0,'img_default/2/featured-products/47.jpg','Used','0000-00-00 00:00:00'),(48,'The social network (Movie Edition)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',15.45,2,0,'img_default/2/featured-products/48.jpg','Used','0000-00-00 00:00:00'),(49,'MySQL for dummies (With annotations)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',50.45,2,0,'img_default/2/featured-products/49.jpg','Used','0000-00-00 00:00:00'),(50,'PHP for dummies (With annotations)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',50.45,2,0,'img_default/2/featured-products/50.jpg','Used','0000-00-00 00:00:00'),(51,'Steve Jobs Biography **Like new!!','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',12.45,3,0,'img_default/3/featured-products/51.jpg','Used','0000-00-00 00:00:00'),(52,'Steve Woz Biography **Like new**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',100.45,3,0,'img_default/3/featured-products/52.jpg','Used','0000-00-00 00:00:00'),(53,'Ghost in the wire **Signed copy**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9.75,3,0,'img_default/3/featured-products/53.jpg','Used','0000-00-00 00:00:00'),(54,'Elon Musk Autobiography **Signed Copy**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',30.45,3,0,'img_default/3/featured-products/54.jpg','Used','0000-00-00 00:00:00'),(55,'Space X **Actual blue prints inside**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',3.45,3,0,'img_default/3/featured-products/55.jpg','Used','0000-00-00 00:00:00'),(56,'Chris Hatafeild Biography **Signed with picture of chris in space','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9.45,3,0,'img_default/3/featured-products/56.jpg','Used','0000-00-00 00:00:00'),(57,'Photo book by Chris Hatafeild **With 35mm negative','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.45,3,0,'img_default/3/featured-products/57.jpg','Used','0000-00-00 00:00:00'),(58,'The social network **Movie picture book included**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',15.45,3,0,'img_default/3/featured-products/58.jpg','Used','0000-00-00 00:00:00'),(59,'MySQL for dummies **No annotations clean copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',50.45,3,0,'img_default/3/featured-products/59.jpg','Used','0000-00-00 00:00:00'),(60,'PHP for dummies **Some annotations in Ch 1-4','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',50.45,3,0,'img_default/3/featured-products/60.jpg','Used','0000-00-00 00:00:00'),(61,'Random non-fiction book','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',2.5,2,1,'img_default/default-prod.jpg','Used','2009-07-26 05:00:00'),(62,'Random fiction book','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',2.5,2,1,'img_default/default-prod.jpg','Used','2009-07-26 05:00:00'),(63,'Another Random fiction book','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',3.5,3,1,'img_default/default-prod.jpg','Used','2009-07-26 05:00:00'),(64,'Another Random non-fiction book','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',2.5,3,1,'img_default/default-prod.jpg','Used','2009-07-26 05:00:00'),(65,'Another Random fiction book','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',3.5,1,1,'img_default/default-prod.jpg','Used','2009-07-26 05:00:00'),(66,'Another Random non-fiction book','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',2.5,1,1,'img_default/default-prod.jpg','Used','2009-07-26 05:00:00');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_category` (
  `product_id` int(11) NOT NULL,
  `category_name` varchar(128) NOT NULL,
  PRIMARY KEY (`product_id`,`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'Ficton'),(2,'Ficton'),(3,'Ficton'),(4,'Ficton'),(5,'Ficton'),(6,'Ficton'),(7,'Ficton'),(8,'Fiction'),(9,'Fiction'),(10,'Fiction'),(11,'Fiction'),(12,'Fiction'),(13,'Fiction'),(14,'Fiction'),(15,'Fiction'),(16,'Fiction'),(17,'Fiction'),(18,'Fiction'),(19,'Fiction'),(20,'Fiction'),(21,'Fiction'),(22,'Fiction'),(23,'Fiction'),(24,'Fiction'),(25,'Fiction'),(26,'Fiction'),(27,'Fiction'),(28,'Fiction'),(29,'Fiction'),(30,'Fiction'),(31,'Non-Fiction'),(32,'Non-Fiction'),(33,'Non-Fiction'),(34,'Non-Fiction'),(35,'Non-Fiction'),(36,'Non-Fiction'),(37,'Non-Fiction'),(38,'Non-Fiction'),(39,'Non-Fiction'),(40,'Non-Fiction'),(41,'Non-Fiction'),(42,'Non-Fiction'),(43,'Non-Fiction'),(44,'Non-Fiction'),(45,'Non-Fiction'),(46,'Non-Fiction'),(47,'Non-Fiction'),(48,'Non-Fiction'),(49,'Non-Fiction'),(50,'Non-Fiction'),(51,'Non-Fiction'),(52,'Non-Fiction'),(53,'Non-Fiction'),(54,'Non-Fiction'),(55,'Non-Fiction'),(56,'Non-Fiction'),(57,'Non-Fiction'),(58,'Non-Fiction'),(59,'Non-Fiction'),(60,'Non-Fiction'),(61,'Non-Fiction'),(62,'Non-Fiction'),(63,'Non-Fiction'),(64,'Non-Fiction'),(65,'Fiction'),(66,'Non-Fiction');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_orders`
--

DROP TABLE IF EXISTS `product_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_orders` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_orders`
--

LOCK TABLES `product_orders` WRITE;
/*!40000 ALTER TABLE `product_orders` DISABLE KEYS */;
INSERT INTO `product_orders` VALUES (1,61),(1,63),(2,54),(2,60);
/*!40000 ALTER TABLE `product_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_pictures`
--

DROP TABLE IF EXISTS `product_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_pictures` (
  `path` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  PRIMARY KEY (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_pictures`
--

LOCK TABLES `product_pictures` WRITE;
/*!40000 ALTER TABLE `product_pictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'this is the Id of the person being reviewed.',
  `reviewer_id` int(11) NOT NULL COMMENT 'This is the user_id of the person being reviewed.',
  `review_text` varchar(256) NOT NULL,
  `rating` int(11) NOT NULL COMMENT 'Number from 1 - 5',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,2,1,'He shipped his orders in a timely maner and the product was as described. I would definitly recomend ordering from this guy.',4,'2014-11-04 19:41:17'),(2,2,3,'This guy took 3 weeks to ship his book. The book was in pretty fair conditon. Other than the time it took for him to ship the book everything was good.',3,'2014-11-04 19:41:17'),(3,1,2,'Awful this guy is a total scamer. DO NOT BUY FROM HIM!',1,'2014-11-04 19:41:17'),(4,1,3,'This guys sent me a box full of stuffing from a stuffed animal rather than the book I had tried to buy from him. Buyer beware.',1,'2014-11-04 19:41:17'),(5,3,1,'Exelent. The book I ordered came in really cool wrapping paper. It was a nice suprise and it made me feel like it was christmas. I would definitly recomend ording from this seller.',5,'2014-11-04 19:41:17'),(6,3,2,'He drew me a really funny picture and put it in the box with the book. I got a kick out of it and I would definitly buy from this seller again.',5,'2014-11-04 19:41:17');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `credit_card` varchar(16) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `profile_picture` varchar(45) DEFAULT 'img_default/default-user.jpg',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `credit_card_UNIQUE` (`credit_card`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Danwakeem','password','12344','Dan','Jarvis','2700 Beez Wax ln.','McKinney','Texas','75070','img_default/1/default-user.jpg'),(2,'CoolCrab21','password','1234567891234567','Kyle','Brofloski','2700 Mountain View Dr','Boobladesh','California','75534','img_default/2/user-2.jpg'),(3,'DinoMaster34','password','1234567891235555','Stan','Marsh','2905 Turtle Creek Dr.','Vancover','Oregon','79336','img_default/3/user-3.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-03 17:03:36
