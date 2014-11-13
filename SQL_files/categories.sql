--
-- Dan's categories
--

INSERT INTO `ecom`.`category`
(`cat_name`,
`parent_id`)
VALUES
('Books',
-1);

INSERT INTO `ecom`.`category`
(`cat_name`,
`parent_id`)
VALUES
('Non-Fiction',
1);

INSERT INTO `ecom`.`category`
(`cat_name`,
`parent_id`)
VALUES
('Fiction',
1);

--
-- Matt's categories
--

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Movies', -1);

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('DVD', 2);

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Bluray', 2);

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('VHS', 2);

--
-- Donald's categories
--

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Cards', -1);

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Magic: The Gathering', 3);

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Pokemon', 3);

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Yu-Gi-Oh', 3);


--
--Kai's categories
--

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Music', -1);
INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Pop', 4);
INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Rock', 4);
INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Hip-Hop', 4);
INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Country', 4);
