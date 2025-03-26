#11. Movies Database
/*Using SQL queries create Movies database with the following entities:
•	directors (id, director_name, notes)
o	director_name cannot be null
•	genres (id, genre_name, notes)
o	genre_name cannot be null
•	categories (id, category_name, notes)
o	category_name cannot be null
•	movies (id, title, director_id, copyright_year, length, genre_id, category_id, rating, notes)
o	title cannot be null
Set most appropriate data types for each column. Set primary key to each table.
Populate each table with 5 records. Make sure the columns that are present in 2 tables
would be of the same data type. Consider which fields are always required and which are optional. */

CREATE TABLE `directors`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`director_name` VARCHAR(50) NOT NULL,
`notes` TEXT
);

CREATE TABLE `genres`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`genre_name` VARCHAR(50) NOT NULL,
`notes` TEXT
);

CREATE TABLE `categories`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`category_name` VARCHAR(50) NOT NULL,
`notes` TEXT
);

CREATE TABLE `movies`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`title` VARCHAR(50) NOT NULL,
`director_id` INT,
`copyright_year` YEAR,
`length` TIME,
`genre_id` INT,
`category_id` INT,
`rating` DOUBLE,
`notes` TEXT
);


INSERT INTO `directors`(`id`,`director_name`, `notes`)
VALUES
('1','Pesho',NULL), 
('2','Ivan',NULL), 
('3','Gosho',NULL), 
('4','Tapata',NULL), 
('5','Ali',NULL) 
;

INSERT INTO `genres` (`id`, `genre_name`, `notes`)
VALUES
('1','Parody',NULL),
('2','Comedy',NULL),
('3','Drama',NULL),
('4','Action',NULL),
('5','Animation',NULL)
;
        
INSERT INTO `categories` (`id`, `category_name`, `notes`)
VALUES
('1', '+0', NULL),
('2', '+6', NULL),
('3', '+12', NULL),
('4', '+16', NULL),
('5', '+18', NULL)
;

INSERT INTO `movies`(`id`, `title`, `director_id`, `copyright_year`,`LENGTH`, `genre_id`,`category_id`, `rating`, `notes`)
VALUES
('1', 'No comment', '1', '1991', '00:05:00', '1','1', NULL, NULL),
('2', 'No comment', '2', '1992', '00:04:00', '2','5', NULL, NULL),
('3', 'No comment', '3', '1993', '00:03:00', '5','4', NULL, NULL),
('4', 'No comment', '4', '1994', '00:02:00', '4', '3', NULL, NULL),
('5', 'No comment', '4', '1995', '00:01:00', '3','2', NULL, NULL)
;