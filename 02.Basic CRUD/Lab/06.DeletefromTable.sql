#Write a query to delete all employees from the "employees" table who are in department 2 or 1.
#Then select all from table `employees` and order the information by id.

DELETE FROM `employees`
WHERE `department_id` = 2 OR `department_id` = 1;

SELECT * FROM `employees`;