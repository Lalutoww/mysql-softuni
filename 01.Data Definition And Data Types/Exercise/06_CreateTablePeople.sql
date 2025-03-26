#6.	Create Table People
/*
Using SQL query create table "people" with columns:
•	id – unique number for every person there will be no more than 231-1people. (Auto incremented)
•	name – full name of the person will be no more than 200 Unicode characters. (Not null)
•	picture – image with size up to 2 MB. (Allow nulls)
•	height –  In meters. Real number precise up to 2 digits after floating point. (Allow nulls)
•	weight –  In kilograms. Real number precise up to 2 digits after floating point. (Allow nulls)
•	gender – Possible states are m or f. (Not null)
•	birthdate – (Not null)
•	biography – detailed biography of the person it can contain max allowed Unicode characters. (Allow nulls)
Make id primary key. Populate the table with 5 records.*/


CREATE TABLE `people`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(200) NOT NULL,
`picture` BLOB,
`height` DOUBLE,
`weight` DOUBLE,
`gender` ENUM('m','f') NOT NULL, 
`birthdate` DATE NOT NULL,
`biography` TEXT
);

INSERT INTO people (`id`, `name`, `picture`, `height`, `weight`, `gender`, `birthdate`, `biography`)
VALUE (1, 'Test 1', null, 1.50, 50.53, 'f', '19701004', null),
       (2, 'Test 2', null, 1.60, 55.5, 'f', '19801004', null),
       (3, 'Test 3', null, 1.70, 67.58, 'f', '19901004', null),
       (4, 'Test 4', null, 1.80, 82.5, 'm', '20001004', null),
       (5, 'Test 5', null, 1.90, 96.73, 'm', '20101004', null);
	
