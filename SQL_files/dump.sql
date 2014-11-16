-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 16, 2014 at 05:21 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_name` varchar(128) NOT NULL,
  `parent_name` varchar(128) NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_name`, `parent_name`) VALUES
('Books', 'none'),
('Fiction', 'Books'),
('Non-Fiction', 'Books');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
`order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `processed` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `processed`) VALUES
(1, 1, 1),
(2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
`id` int(11) NOT NULL,
  `prod_name` varchar(128) NOT NULL,
  `prod_desc` varchar(256) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `sold` tinyint(4) NOT NULL DEFAULT '0',
  `featured_image` varchar(45) NOT NULL DEFAULT 'img_default/default-prod.jpg'
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `prod_name`, `prod_desc`, `price`, `user_id`, `sold`, `featured_image`) VALUES
(1, 'Harry Potter and the socers stone', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 10.5, 1, 0, 'img_default/1/featured-products/1.jpg'),
(2, 'Harry Potter and chamber of secrets', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 9.6, 1, 0, 'img_default/1/featured-products/2.jpg'),
(3, 'Harry Potter and prisoner of azkaban', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 8.5, 1, 0, 'img_default/1/featured-products/3.jpg'),
(4, 'Harry Potter and goblet of fire', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 7.3, 1, 0, 'img_default/1/featured-products/4.jpg'),
(5, 'Harry Potter and the order of the phenix', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 8.1, 1, 0, 'img_default/1/featured-products/5.jpg'),
(6, 'Harry Potter and half blood prince', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 11.56, 1, 0, 'img_default/1/featured-products/6.jpg'),
(7, 'Harry Potter and deathly hallows', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 9.45, 1, 0, 'img_default/1/featured-products/7.jpg'),
(8, 'Gone girl', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 8.67, 1, 0, 'img_default/1/featured-products/8.jpg'),
(9, 'Girl with the dragon tattoo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 9, 1, 0, 'img_default/1/featured-products/9.jpg'),
(10, 'Sherlock holmes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 9, 1, 0, 'img_default/1/featured-products/10.jpg'),
(11, 'Harry Potter and the socers stone (Like new)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 10.55, 2, 0, 'img_default/2/featured-products/11.jpg'),
(12, 'Harry Potter and chamber of secrets (Slight rip on a few pages)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 6.5, 2, 0, 'img_default/2/featured-products/12.jpg'),
(13, 'Harry Potter and prisoner of azkaban (Coffee spill in the middle of book)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 4.3, 2, 0, 'img_default/2/featured-products/13.jpg'),
(14, 'Harry Potter and goblet of fire (Like new)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 10.5, 2, 0, 'img_default/2/featured-products/14.jpg'),
(15, 'Harry Potter and the order of the phenix (Missing soft cover)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 7.1, 2, 0, 'img_default/2/featured-products/15.jpg'),
(16, 'Harry Potter and half blood prince (Signed by J.K Rowling)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 50.5, 2, 0, 'img_default/2/featured-products/16.jpg'),
(17, 'Harry Potter and deathly hallows (With picture book from the movie)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 20.3, 2, 0, 'img_default/2/featured-products/17.jpg'),
(18, 'Gone girl (Movie edition)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 10, 2, 0, 'img_default/2/featured-products/18.jpg'),
(19, 'Girl with the dragon tattoo (Movie Edition)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 10, 2, 0, 'img_default/2/featured-products/19.jpg'),
(20, 'Sherlock holmes (Movie Edition)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 10, 2, 0, 'img_default/2/featured-products/20.jpg'),
(21, 'Harry Potter and the socers stone never been read', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 20.1, 3, 0, 'img_default/3/featured-products/21.jpg'),
(22, 'Harry Potter and chamber of secrets **Previously owned by Daniel Radclif', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 60.67, 3, 0, 'img_default/3/featured-products/22.jpg'),
(23, 'Harry Potter and prisoner of azkaban **Like new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 10.56, 3, 0, 'img_default/3/featured-products/23.jpg'),
(24, 'Harry Potter and goblet of fire ** Exelect condition', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 10.4, 3, 0, 'img_default/3/featured-products/24.jpg'),
(25, 'Harry Potter and the order of the phenix **With picture book', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 15.69, 3, 0, 'img_default/3/featured-products/25.jpg'),
(26, 'Harry Potter and half blood prince **Signed by Emma Watson', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 80.59, 3, 0, 'img_default/3/featured-products/26.jpg'),
(27, 'Harry Potter and deathly hallows **Signed by Rupart Grant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 60.49, 3, 0, 'img_default/3/featured-products/27.jpg'),
(28, 'Gone girl **Movie edition**', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 10, 3, 0, 'img_default/3/featured-products/28.jpg'),
(29, 'Girl with the dragon tattoo **Movie edition**', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 10, 3, 0, 'img_default/3/featured-products/29.jpg'),
(30, 'Sherlock holmes **Movie edition**', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 10, 3, 0, 'img_default/3/featured-products/30.jpg'),
(31, 'Steve Jobs Biography', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 10.45, 1, 0, 'img_default/1/featured-products/31.jpg'),
(32, 'Steve Woz Biography', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 12.45, 1, 0, 'img_default/1/featured-products/32.jpg'),
(33, 'Ghost in the wire', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 8.75, 1, 0, 'img_default/1/featured-products/33.jpg'),
(34, 'Elon Musk Autobiography', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 5.45, 1, 0, 'img_default/1/featured-products/34.jpg'),
(35, 'Space X', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 3.45, 1, 0, 'img_default/1/featured-products/35.jpg'),
(36, 'Chris Hatafeild Biography', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 9.45, 1, 0, 'img_default/1/featured-products/36.jpg'),
(37, 'Photo book by Chris Hatafeild', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 8.45, 1, 0, 'img_default/1/featured-products/37.jpg'),
(38, 'The social network', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 15.45, 1, 0, 'img_default/1/featured-products/38.jpg'),
(39, 'MySQL for dummies', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 50.45, 1, 0, 'img_default/1/featured-products/39.jpg'),
(40, 'PHP for dummies', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 50.45, 1, 0, 'img_default/1/featured-products/40.jpg'),
(41, 'Steve Jobs Biography (Like new!!)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 12.45, 2, 0, 'img_default/2/featured-products/41.jpg'),
(42, 'Steve Woz Biography (Signed by Steve Woz!)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 100.45, 2, 0, 'img_default/2/featured-products/42.jpg'),
(43, 'Ghost in the wire (Never been read)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 9.75, 2, 0, 'img_default/2/featured-products/43.jpg'),
(44, 'Elon Musk Autobiography (Signed Copy!!!)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 30.45, 2, 0, 'img_default/2/featured-products/44.jpg'),
(45, 'Space X (With actual blue prints)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 3.45, 2, 0, 'img_default/2/featured-products/45.jpg'),
(46, 'Chris Hatafeild Biography (Signed Copy!!)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 9.45, 2, 0, 'img_default/2/featured-products/46.jpg'),
(47, 'Photo book by Chris Hatafeild (Like new!)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 8.45, 2, 0, 'img_default/2/featured-products/47.jpg'),
(48, 'The social network (Movie Edition)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 15.45, 2, 0, 'img_default/2/featured-products/48.jpg'),
(49, 'MySQL for dummies (With annotations)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 50.45, 2, 0, 'img_default/2/featured-products/49.jpg'),
(50, 'PHP for dummies (With annotations)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 50.45, 2, 0, 'img_default/2/featured-products/50.jpg'),
(51, 'Steve Jobs Biography **Like new!!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 12.45, 3, 0, 'img_default/3/featured-products/51.jpg'),
(52, 'Steve Woz Biography **Like new**', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 100.45, 3, 0, 'img_default/3/featured-products/52.jpg'),
(53, 'Ghost in the wire **Signed copy**', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 9.75, 3, 0, 'img_default/3/featured-products/53.jpg'),
(54, 'Elon Musk Autobiography **Signed Copy**', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 30.45, 3, 0, 'img_default/3/featured-products/54.jpg'),
(55, 'Space X **Actual blue prints inside**', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 3.45, 3, 0, 'img_default/3/featured-products/55.jpg'),
(56, 'Chris Hatafeild Biography **Signed with picture of chris in space', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 9.45, 3, 0, 'img_default/3/featured-products/56.jpg'),
(57, 'Photo book by Chris Hatafeild **With 35mm negative', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 8.45, 3, 0, 'img_default/3/featured-products/57.jpg'),
(58, 'The social network **Movie picture book included**', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 15.45, 3, 0, 'img_default/3/featured-products/58.jpg'),
(59, 'MySQL for dummies **No annotations clean copy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 50.45, 3, 0, 'img_default/3/featured-products/59.jpg'),
(60, 'PHP for dummies **Some annotations in Ch 1-4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 50.45, 3, 0, 'img_default/3/featured-products/60.jpg'),
(61, 'Random non-fiction book', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 2.5, 2, 1, 'img_default/default-prod.jpg'),
(62, 'Random fiction book', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 2.5, 2, 1, 'img_default/default-prod.jpg'),
(63, 'Another Random fiction book', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 3.5, 3, 1, 'img_default/default-prod.jpg'),
(64, 'Another Random non-fiction book', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 2.5, 3, 1, 'img_default/default-prod.jpg'),
(65, 'Another Random fiction book', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 3.5, 1, 1, 'img_default/default-prod.jpg'),
(66, 'Another Random non-fiction book', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean scelerisque ipsum mi, id laoreet diam cursus et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus mauris augue, blandit nec scelerisque a, euismod non sem. Nulla vul.', 2.5, 1, 1, 'img_default/default-prod.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_id` int(11) NOT NULL,
  `category_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_id`, `category_name`) VALUES
(1, 'Ficton'),
(2, 'Ficton'),
(3, 'Ficton'),
(4, 'Ficton'),
(5, 'Ficton'),
(6, 'Ficton'),
(7, 'Ficton'),
(8, 'Fiction'),
(9, 'Fiction'),
(10, 'Fiction'),
(11, 'Fiction'),
(12, 'Fiction'),
(13, 'Fiction'),
(14, 'Fiction'),
(15, 'Fiction'),
(16, 'Fiction'),
(17, 'Fiction'),
(18, 'Fiction'),
(19, 'Fiction'),
(20, 'Fiction'),
(21, 'Fiction'),
(22, 'Fiction'),
(23, 'Fiction'),
(24, 'Fiction'),
(25, 'Fiction'),
(26, 'Fiction'),
(27, 'Fiction'),
(28, 'Fiction'),
(29, 'Fiction'),
(30, 'Fiction'),
(31, 'Non-Fiction'),
(32, 'Non-Fiction'),
(33, 'Non-Fiction'),
(34, 'Non-Fiction'),
(35, 'Non-Fiction'),
(36, 'Non-Fiction'),
(37, 'Non-Fiction'),
(38, 'Non-Fiction'),
(39, 'Non-Fiction'),
(40, 'Non-Fiction'),
(41, 'Non-Fiction'),
(42, 'Non-Fiction'),
(43, 'Non-Fiction'),
(44, 'Non-Fiction'),
(45, 'Non-Fiction'),
(46, 'Non-Fiction'),
(47, 'Non-Fiction'),
(48, 'Non-Fiction'),
(49, 'Non-Fiction'),
(50, 'Non-Fiction'),
(51, 'Non-Fiction'),
(52, 'Non-Fiction'),
(53, 'Non-Fiction'),
(54, 'Non-Fiction'),
(55, 'Non-Fiction'),
(56, 'Non-Fiction'),
(57, 'Non-Fiction'),
(58, 'Non-Fiction'),
(59, 'Non-Fiction'),
(60, 'Non-Fiction'),
(61, 'Non-Fiction'),
(62, 'Non-Fiction'),
(63, 'Non-Fiction'),
(64, 'Non-Fiction'),
(65, 'Fiction'),
(66, 'Non-Fiction');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`order_id`, `product_id`) VALUES
(1, 61),
(1, 63),
(2, 11),
(2, 12),
(2, 24),
(2, 57),
(2, 59),
(2, 60);

-- --------------------------------------------------------

--
-- Table structure for table `product_pictures`
--

CREATE TABLE `product_pictures` (
  `path` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
`review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'this is the Id of the person being reviewed.',
  `reviewer_id` int(11) NOT NULL COMMENT 'This is the user_id of the person being reviewed.',
  `review_text` varchar(256) NOT NULL,
  `rating` int(11) NOT NULL COMMENT 'Number from 1 - 5',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `user_id`, `reviewer_id`, `review_text`, `rating`, `date`) VALUES
(1, 2, 1, 'He shipped his orders in a timely maner and the product was as described. I would definitly recomend ordering from this guy.', 4, '2014-11-04 19:41:17'),
(2, 2, 3, 'This guy took 3 weeks to ship his book. The book was in pretty fair conditon. Other than the time it took for him to ship the book everything was good.', 3, '2014-11-04 19:41:17'),
(3, 1, 2, 'Awful this guy is a total scamer. DO NOT BUY FROM HIM!', 1, '2014-11-04 19:41:17'),
(4, 1, 3, 'This guys sent me a box full of stuffing from a stuffed animal rather than the book I had tried to buy from him. Buyer beware.', 1, '2014-11-04 19:41:17'),
(5, 3, 1, 'Exelent. The book I ordered came in really cool wrapping paper. It was a nice suprise and it made me feel like it was christmas. I would definitly recomend ording from this seller.', 5, '2014-11-04 19:41:17'),
(6, 3, 2, 'He drew me a really funny picture and put it in the box with the book. I got a kick out of it and I would definitly buy from this seller again.', 5, '2014-11-04 19:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
`user_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `credit_card` varchar(16) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `profile_picture` varchar(45) DEFAULT 'img_default/default-user.jpg'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `credit_card`, `first_name`, `last_name`, `street`, `city`, `state`, `zip`, `profile_picture`) VALUES
(1, 'Danwakeem', 'password', '12344', 'Dan', 'Jarvis', '2700 Beez Wax ln.', 'McKinney', 'Texas', '75070', 'img_default/1/default-user.jpg'),
(2, 'CoolCrab21', 'password', '1234567891234567', 'Kyle', 'Brofloski', '2700 Mountain View Dr', 'Boobladesh', 'California', '75534', 'img_default/2/user-2.jpg'),
(3, 'DinoMaster34', 'password', '1234567891235555', 'Stan', 'Marsh', '2905 Turtle Creek Dr.', 'Vancover', 'Oregon', '79336', 'img_default/3/user-3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`cat_name`), ADD UNIQUE KEY `cat_name_UNIQUE` (`cat_name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`order_id`), ADD UNIQUE KEY `shopping_cart_UNIQUE` (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
 ADD PRIMARY KEY (`product_id`,`category_name`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
 ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `product_pictures`
--
ALTER TABLE `product_pictures`
 ADD PRIMARY KEY (`path`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
 ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `username_UNIQUE` (`username`), ADD UNIQUE KEY `credit_card_UNIQUE` (`credit_card`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
