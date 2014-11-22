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