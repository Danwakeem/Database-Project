--
-- Dan's categories
--

INSERT INTO `ecom`.`category`
(`cat_name`,
`parent_id`)
VALUES
('Books',
'none');

INSERT INTO `ecom`.`category`
(`cat_name`,
`parent_id`)
VALUES
('Non-Fiction',
'Books');

INSERT INTO `ecom`.`category`
(`cat_name`,
`parent_id`)
VALUES
('Fiction',
'Books');

--
-- Matt's categories
--

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Movies', 'none');

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('DVD', 'Movies');

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Bluray', 'Movies');

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('VHS', 'Movies');

--
-- Donald's categories
--

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Cards', 'none');

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Magic: The Gathering', 'Cards');

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Pokemon', 'Cards');

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Yu-Gi-Oh', 'Cards');


--
--Kai's categories
--

INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Music', 'none');
INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Pop', 'Music');
INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Rock', 'Music');
INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Hip-Hop', 'Music');
INSERT INTO `ecom`.`category`
(`cat_name`, `parent_id`)
VALUES
('Country', 'Music');
