-- MySQL dump 10.13  Distrib 5.6.21, for osx10.8 (x86_64)
--
-- Host: localhost    Database: ecom
-- ------------------------------------------------------
-- Server version	5.6.21

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(128) NOT NULL,
  `parent_id` int(11) DEFAULT '-1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `cat_name_UNIQUE` (`cat_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Books',-1),(3,'Fiction',1),(6,'Non-Fiction',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
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
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `shopping_cart_UNIQUE` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1),(2,1,0);
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Harry Potter and the socers stone','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.5,1,0),(2,'Harry Potter and chamber of secrets','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9.6,1,0),(3,'Harry Potter and prisoner of azkaban','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.5,1,0),(4,'Harry Potter and goblet of fire','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',7.3,1,0),(5,'Harry Potter and the order of the phenix','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.1,1,0),(6,'Harry Potter and half blood prince','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',11.56,1,0),(7,'Harry Potter and deathly hallows','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9.45,1,0),(8,'Gone girl','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.67,1,0),(9,'Girl with the dragon tattoo','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9,1,0),(10,'Sherlock holmes','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9,1,0),(11,'Harry Potter and the socers stone (Like new)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.55,2,0),(12,'Harry Potter and chamber of secrets (Slight rip on a few pages)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',6.5,2,0),(13,'Harry Potter and prisoner of azkaban (Coffee spill in the middle of book)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',4.3,2,0),(14,'Harry Potter and goblet of fire (Like new)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.5,2,0),(15,'Harry Potter and the order of the phenix (Missing soft cover)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',7.1,2,0),(16,'Harry Potter and half blood prince (Signed by J.K Rowling)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',50.5,2,0),(17,'Harry Potter and deathly hallows (With picture book from the movie)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',20.3,2,0),(18,'Gone girl (Movie edition)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,2,0),(19,'Girl with the dragon tattoo (Movie Edition)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,2,0),(20,'Sherlock holmes (Movie Edition)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,2,0),(21,'Harry Potter and the socers stone never been read','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',20.1,3,0),(22,'Harry Potter and chamber of secrets **Previously owned by Daniel Radclif','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',60.67,3,0),(23,'Harry Potter and prisoner of azkaban **Like new','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.56,3,0),(24,'Harry Potter and goblet of fire ** Exelect condition','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.4,3,0),(25,'Harry Potter and the order of the phenix **With picture book','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',15.69,3,0),(26,'Harry Potter and half blood prince **Signed by Emma Watson','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',80.59,3,0),(27,'Harry Potter and deathly hallows **Signed by Rupart Grant','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',60.49,3,0),(28,'Gone girl **Movie edition**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,3,0),(29,'Girl with the dragon tattoo **Movie edition**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,3,0),(30,'Sherlock holmes **Movie edition**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,3,0),(31,'Steve Jobs Biography','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.45,1,0),(32,'Steve Woz Biography','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',12.45,1,0),(33,'Man in the wire','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.75,1,0),(34,'Elon Musk Autobiography','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',5.45,1,0),(35,'Space X','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',3.45,1,0),(36,'Chris Hatafeild Biography','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9.45,1,0),(37,'Photo book by Chris Hatafeild','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.45,1,0),(38,'The social network','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',15.45,1,0),(39,'MySQL for dummies','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',50.45,1,0),(40,'PHP for dummies','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',50.45,1,0),(41,'Steve Jobs Biography (Like new!!)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',12.45,2,0),(42,'Steve Woz Biography (Signed by Steve Woz!)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',100.45,2,0),(43,'Man in the wire (Never been read)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9.75,2,0),(44,'Elon Musk Autobiography (Signed Copy!!!)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',30.45,2,0),(45,'Space X (With actual blue prints)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',3.45,2,0),(46,'Chris Hatafeild Biography (Signed Copy!!)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9.45,2,0),(47,'Photo book by Chris Hatafeild (Like new!)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.45,2,0),(48,'The social network (Movie Edition)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',15.45,2,0),(49,'MySQL for dummies (With annotations)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',50.45,2,0),(50,'PHP for dummies (With annotations)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',50.45,2,0),(51,'Steve Jobs Biography **Like new!!','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',12.45,3,0),(52,'Steve Woz Biography **Like new**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',100.45,3,0),(53,'Man in the wire **Signed copy**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9.75,3,0),(54,'Elon Musk Autobiography **Signed Copy**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',30.45,3,0),(55,'Space X **Actual blue prints inside**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',3.45,3,0),(56,'Chris Hatafeild Biography **Signed with picture of chris in space','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9.45,3,0),(57,'Photo book by Chris Hatafeild **With 35mm negative','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.45,3,0),(58,'The social network **Movie picture book included**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',15.45,3,0),(59,'MySQL for dummies **No annotations clean copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',50.45,3,0),(60,'PHP for dummies **Some annotations in Ch 1-4','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',50.45,3,0),(61,'Random non-fiction book','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',2.5,2,0),(62,'Random fiction book','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',2.5,2,0),(63,'Another Random fiction book','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',3.5,3,0),(64,'Another Random non-fiction book','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',2.5,3,0),(65,'Another Random fiction book','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',3.5,1,0),(66,'Another Random non-fiction book','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',2.5,1,0);
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
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),(21,3),(22,3),(23,3),(24,3),(25,3),(26,3),(27,3),(28,3),(29,3),(30,3),(31,6),(32,6),(33,6),(34,6),(35,6),(36,6),(37,6),(38,6),(39,6),(40,6),(41,6),(42,6),(43,6),(44,6),(45,6),(46,6),(47,6),(48,6),(49,6),(50,6),(51,6),(52,6),(53,6),(54,6),(55,6),(56,6),(57,6),(58,6),(59,6),(60,6),(61,6),(62,3),(63,3),(64,6),(65,3),(66,6);
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
INSERT INTO `product_orders` VALUES (1,61),(1,63),(2,11),(2,12),(2,24);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
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
INSERT INTO `user` VALUES (1,'Danwakeem','password','12344','Dan','Jarvis','2700 Beez Wax ln.','McKinney','Texas','75070'),(2,'CoolCrab21','password','1234567891234567','Kyle','Brofloski','2700 Mountain View Dr','Boobladesh','California','75534'),(3,'DinoMaster34','password','1234567891235555','Stan','Marsh','2905 Turtle Creek Dr.','Vancover','Oregon','79336');
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

-- Dump completed on 2014-11-04 11:39:45
