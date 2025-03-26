#12. Car Rental Database
/*Using SQL queries create car_rental database with the following entities:
•	categories (id, category, daily_rate, weekly_rate, monthly_rate, weekend_rate)
•	cars (id, plate_number, make, model, car_year, category_id, doors, picture, car_condition, available)
•	employees (id, first_name, last_name, title, notes)
•	customers (id, driver_licence_number, full_name, address, city, zip_code, notes)
•	rental_orders (id, employee_id, customer_id, car_id, car_condition, tank_level, kilometrage_start,
kilometrage_end, total_kilometrage, start_date, end_date, total_days, rate_applied, tax_rate, order_status, notes)
Set most appropriate data types for each column. Set primary key to each table.
Populate each table with 3 records. Make sure the columns
that are present in 2 tables would be of the same data type.
Consider which fields are always required and which are optional. */

CREATE TABLE `categories` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `category` VARCHAR(30) NOT NULL,
    `daily_rate` DOUBLE NOT NULL,
    `weekly_rate` DOUBLE,
    `monthly_rate` DOUBLE,
    `weekend_rate` DOUBLE
);

INSERT INTO `categories` (`category`, `daily_rate`)
VALUES 
('Category One', 25.50),
('Category Two', 35.50),
('Category Three', 45.50);

CREATE TABLE `cars` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `plate_number` VARCHAR(10) NOT NULL,
    `make` VARCHAR(20) NOT NULL,
    `model` VARCHAR(20) NOT NULL,
    `car_year` YEAR,
    `category_id` INT,
    `doors` INT,
    `picture` BLOB,
    `car_condition` VARCHAR(20),
    `available` BOOLEAN
);

INSERT INTO `cars` (`plate_number`, `make`, `model`, `available`)
VALUES 
('PB 1000 AE', 'Mercedes', 'GT AMG', true),
('PB 9999 XX', 'BMW', 'M5', true),
('PB 6666 PA', 'Audi', 'RS6', true);

CREATE TABLE `employees` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(20) NOT NULL,
    `last_name` VARCHAR(20),
    `title`VARCHAR(30) NOT NULL,
    `notes` TEXT
);

INSERT INTO `employees` (`first_name`, `title`)
VALUES 
('Bob', 'Dealer'),
('Charlie', 'Accountant'),
('Randy', 'CEO');

CREATE TABLE `customers` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `driver_licence_number` INT NOT NULL,
    `full_name` VARCHAR(50) NOT NULL,
    `address` VARCHAR(100) NOT NULL,
    `city` VARCHAR(20) NOT NULL,
    `zip_code` VARCHAR(20),
    `notes` TEXT
);

INSERT INTO `customers` (`driver_licence_number`, `full_name`, `address`, `city`)
VALUES
(555777999, 'Full Name One', 'Adress One', 'City One'),
(555777999, 'Full Name Two', 'Adress Two', 'City Two'),
(555777999, 'Full Name Three', 'Adress Three', 'City Three');

CREATE TABLE `rental_orders` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `employee_id` INT NOT NULL,
    `customer_id` INT NOT NULL,
    `car_id` INT NOT NULL,
    `car_condition` VARCHAR(20),
    `tank_level` DOUBLE,
    `kilometrage_start` DOUBLE,
    `kilometrage_end` DOUBLE,
    `total_kilometrage` DOUBLE,
    `start_date` DATE,
    `end_date` DATE,
    `total_days` INT,
    `rate_applied` DOUBLE,
    `tax_rate` DOUBLE,
    `order_status` VARCHAR(20),
    `notes` TEXT
);

INSERT INTO `rental_orders` (`employee_id`, `customer_id`, `car_id`)
VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);