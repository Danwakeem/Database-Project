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
