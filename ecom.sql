-- Create Database 
CREATE Database ecom;

-- Category Table
CREATE TABLE `ecom`.`category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cat_name` VARCHAR(128) NULL,
  `parent_id` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));

-- Product Table
CREATE TABLE `ecom`.`product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `prod_name` VARCHAR(128) NULL,
  `prod_desc` VARCHAR(256) NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));

  -- Pictures
  CREATE TABLE `ecom`.`product_pictures` (
  `path` INT NOT NULL,
  `prod_id` INT NOT NULL,
  PRIMARY KEY (`path`));

  -- Product Category Table
  CREATE TABLE `ecom`.`product_category` (
  `product_id` INT NOT NULL,
  `category_id` INT NOT NULL,
  PRIMARY KEY (`product_id`));

  -- User Table
  CREATE TABLE `ecom`.`user` (
  `id` INT NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `credit_card` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC),
  UNIQUE INDEX `credit_card_UNIQUE` (`credit_card` ASC));

  -- Bidding Table
  CREATE TABLE `ecom`.`bids` (
  `id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `bidder_id` INT NOT NULL,
  `amount` DECIMAL(6,2) NOT NULL,
  `accepted` TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`));

  -- Transaction Table
  CREATE TABLE `ecom`.`transaction` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tacking_number` INT NOT NULL,
  `bid_id` INT NOT NULL,
  `paid` TINYINT NOT NULL DEFAULT 0 COMMENT 'This says whether or not the person bidding on the product has paid. 0 = not paid and 1 = paid :)',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `tacking_number_UNIQUE` (`tacking_number` ASC),
  UNIQUE INDEX `bid_id_UNIQUE` (`bid_id` ASC));

  -- Alter for the bid Table
  ALTER TABLE `ecom`.`bids` 
DROP COLUMN `id`,
DROP PRIMARY KEY;

-- ISA for different product categories. Also a review table (should link user_id and product_id). Shopping cart table. 