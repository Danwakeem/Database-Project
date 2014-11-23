--
-- This file creates the database and tables. It then calls each of the sql
-- files contained in the folders. If things aren't being inserted, check the
-- SOURCE commands at the bottom to make sure yours isn't commented out.
--

--
-- Create database
--
DROP DATABASE IF EXISTS ecom;
CREATE DATABASE ecom;
USE DATABASE ecom;

--
-- Create tables
--
CREATE TABLE `category` (
  `cat_name` varchar(128) NOT NULL,
  `parent_name` varchar(128) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`cat_name`),
  UNIQUE KEY `cat_name_UNIQUE` (`cat_name`)
);

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `shopping_cart_UNIQUE` (`order_id`)
);

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(128) NOT NULL,
  `prod_desc` varchar(256) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `sold` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
);

CREATE TABLE `product_category` (
  `product_id` int(11) NOT NULL,
  `category_name` varchar(128) NOT NULL,
  PRIMARY KEY (`product_id`,`category_name`)
);

CREATE TABLE `product_orders` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`)
);

CREATE TABLE `product_pictures` (
  `path` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  PRIMARY KEY (`path`)
);

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'this is the Id of the person being reviewed.',
  `reviewer_id` int(11) NOT NULL COMMENT 'This is the user_id of the person being reviewed.',
  `review_text` varchar(256) NOT NULL,
  `rating` int(11) NOT NULL COMMENT 'Number from 1 - 5',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`)
);

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
);

--
-- Call other SQL files
--
SOURCE category/dan_categories.sql;
SOURCE category/donald_categories.sql;
SOURCE category/kai_categories.sql;
SOURCE category/matt_categories.sql;

SOURCE orders/dan_orders.sql;
-- SOURCE orders/donald_orders.sql;
-- SOURCE orders/kai_orders.sql;
SOURCE orders/matt_orders.sql;

SOURCE product/1/fiction.sql;
SOURCE product/1/non_fiction.sql;
SOURCE product/2/fiction.sql;
SOURCE product/2/non_fiction.sql;
SOURCE product/3/fiction.sql;
SOURCE product/3/non_fiction.sql;
SOURCE product/4/bluray.sql;
SOURCE product/4/dvd.sql;
SOURCE product/4/vhs.sql;
SOURCE product/5/bluray.sql;
SOURCE product/5/dvd.sql;
SOURCE product/5/vhs.sql;
SOURCE product/6/bluray.sql;
SOURCE product/6/dvd.sql;
SOURCE product/6/vhs.sql;
-- DONALD AND KAI ADD YOUR STUFF HERE

SOURCE product_category/bluray.sql;
SOURCE product_category/dvd.sql;
SOURCE product_category/fiction.sql;
SOURCE product_category/non_fiction.sql;
SOURCE product_category/vhs.sql;
-- DONALD AND KAI ADD YOUR STUFF HERE

SOURCE product_orders/dan_orders.sql;
-- SOURCE product_orders/donald_orders.sql;
-- SOURCE product_orders/kai_orders.sql;
SOURCE product_orders/matt_orders.sql;

SOURCE reviews/dan_reviews.sql;
-- SOURCE reviews/donald_reviews.sql;
-- SOURCE reviews/kai_reviews.sql;
SOURCE reviews/matt_reviews.sql;

SOURCE user/dan_users.sql;
SOURCE user/donald_users.sql;
SOURCE user/kai_users.sql;
SOURCE user/matt_users.sql;
