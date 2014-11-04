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
  `processed` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `shopping_cart_UNIQUE` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Harry Potter and the socers stone','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.5,1),(2,'Harry Potter and chamber of secrets','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9.6,1),(3,'Harry Potter and prisoner of azkaban','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.5,1),(4,'Harry Potter and goblet of fire','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',7.3,1),(5,'Harry Potter and the order of the phenix','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.1,1),(6,'Harry Potter and half blood prince','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',11.56,1),(7,'Harry Potter and deathly hallows','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9.45,1),(8,'Gone girl','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',8.67,1),(9,'Girl with the dragon tattoo','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9,1),(10,'Sherlock holmes','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',9,1),(11,'Harry Potter and the socers stone (Like new)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.55,2),(12,'Harry Potter and chamber of secrets (Slight rip on a few pages)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',6.5,2),(13,'Harry Potter and prisoner of azkaban (Coffee spill in the middle of book)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',4.3,2),(14,'Harry Potter and goblet of fire (Like new)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.5,2),(15,'Harry Potter and the order of the phenix (Missing soft cover)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',7.1,2),(16,'Harry Potter and half blood prince (Signed by J.K Rowling)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',50.5,2),(17,'Harry Potter and deathly hallows (With picture book from the movie)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',20.3,2),(18,'Gone girl (Movie edition)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,2),(19,'Girl with the dragon tattoo (Movie Edition)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,2),(20,'Sherlock holmes (Movie Edition)','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,2),(21,'Harry Potter and the socers stone never been read','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',20.1,3),(22,'Harry Potter and chamber of secrets **Previously owned by Daniel Radclif','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',60.67,3),(23,'Harry Potter and prisoner of azkaban **Like new','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.56,3),(24,'Harry Potter and goblet of fire ** Exelect condition','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10.4,3),(25,'Harry Potter and the order of the phenix **With picture book','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',15.69,3),(26,'Harry Potter and half blood prince **Signed by Emma Watson','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',80.59,3),(27,'Harry Potter and deathly hallows **Signed by Rupart Grant','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',60.49,3),(28,'Gone girl **Movie edition**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,3),(29,'Girl with the dragon tattoo **Movie edition**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,3),(30,'Sherlock holmes **Movie edition**','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.',10,3);
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
INSERT INTO `product_category` VALUES (1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),(21,3),(22,3),(23,3),(24,3),(25,3),(26,3),(27,3),(28,3),(29,3),(30,3);
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

-- Dump completed on 2014-11-04 10:23:08
