#13. Basic Insert
/*Now create bigger database called soft_uni. You will use database in the future tasks.
It should hold information about
    • towns (id, name)
    • addresses (id, address_text, town_id)
    • departments (id, name)
    • employees (id, first_name, middle_name, last_name, job_title, department_id, hire_date, salary, address_id)
Id columns are auto incremented starting from 1 and increased by 1 (1, 2, 3, 4…).
Make sure you use appropriate data types for each column.
Add primary and foreign keys as constraints for each table. Use only SQL queries.
Consider which fields are always required and which are optional.

Use the SoftUni database and insert some data using SQL queries.
•	towns: Sofia, Plovdiv, Varna, Burgas
•	departments: Engineering, Sales, Marketing, Software Development, Quality Assurance
•	employees:
name					job_title				department				hire_date				salary
Ivan Ivanov Ivanov		.NET Developer			Software Development	01/02/2013				3500.00
Petar Petrov Petrov		Senior Engineer			Engineering				02/03/2004				4000.00
Maria Petrova Ivanova	Intern					Quality Assurance		28/08/2016				525.25
Georgi Terziev Ivanov	CEO						Sales					09/12/2007				3000.00
Peter Pan Pan			Intern					Marketing				28/08/2016				599.88

Submit your INSERT queries in Judge as Run skeleton, run queries
*/

CREATE TABLE `towns` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL
);

INSERT INTO `towns` (`name`)
VALUES 
('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas');

CREATE TABLE `addresses` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `address_text` VARCHAR(100),
    `town_id` INT
);

CREATE TABLE `departments` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100)
    
);

insert into departments (name)
values ('Engineering'),
       ('Sales'),
       ('Marketing'),
       ('Software Development'),
       ('Quality Assurance');

CREATE TABLE `employees` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(30) NOT NULL,
    `middle_name` VARCHAR(30),
    `last_name` VARCHAR(30) NOT NULL,
    `job_title` VARCHAR(100),
    `department_id` INT,
   `hire_date` DATE,
    `salary` DOUBLE,
    `address_id` INT
);

ALTER TABLE `addresses`
ADD CONSTRAINT fk_adresses_towns
FOREIGN KEY `adresses`(`town_id`) REFERENCES `towns`(`id`);

ALTER TABLE `employees`
ADD CONSTRAINT fk_employees_departments
FOREIGN KEY `employees`(`department_id`) REFERENCES `departments`(`id`);

ALTER TABLE `employees`
ADD CONSTRAINT fk_employees_adresses
FOREIGN KEY `employees`(`address_id`) REFERENCES `addresses`(`id`);

INSERT INTO `employees` (`first_name`, `middle_name`, `last_name`, `job_title`, `department_id`, `hire_date`, `salary`)
VALUES
('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '2013-02-01', 3500.00),
('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '2004-03-02', 4000.00),
('Maria', 'Petrova', 'Ivanova', 'Intern', 5, '2016-08-28', 525.25),
('Georgi', 'Terziev', 'Ivanov', 'CEO', 2, '2007-12-09', 3000.00),
('Peter', 'Pan', 'Pan', 'Intern', 3, '2016-08-28', 599.88);