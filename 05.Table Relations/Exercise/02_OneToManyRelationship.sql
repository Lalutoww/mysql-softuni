#Create two tables as follows. Use appropriate data types.
#                manufacturers
#manufacturer_id     name    established_on
#1                   BMW     01/03/1916
#2                   Tesla   01/01/2003
#3                   Lada    01/05/1966

#            models
#model_id    name       manufacturer_id
#101         X1         1
#102         i6         1
#103         Model S    2
#104         Model X    2
#105         Model 3    2
#106         Nova       3

#Insert the data from the example above.
#• Add primary and foreign keys.
#Submit your queries by using "MySQL run queries & check DB" strategy.

CREATE TABLE `manufacturers`
(
    manufacturer_id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(30),
    established_on DATE
);

INSERT INTO `manufacturers`(`manufacturer_id`, `name`, `established_on`)
VALUES (1, 'BMW', '1916/03/01'),
       (2, 'Tesla', '2003/01/01'),
       (3, 'Lada', '1966/05/01');

CREATE TABLE `models`
(
    model_id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(30),
    manufacturer_id INT,
    CONSTRAINT fk_models_manufacturers
    FOREIGN KEY (manufacturer_id)
    REFERENCES manufacturers(manufacturer_id)
);

INSERT INTO `models`(`model_id`, `name`, `manufacturer_id`)
VALUES (101, 'X1', 1),
       (102, 'i6', 1),
       (103, 'Model S', 2),
       (104, 'Model X', 2),
       (105, 'Model 3', 2),
       (106, 'Nova', 3);
