#Write a SQL query to find first name, last name and salary of those employees who has salary more than 50000.
#Order them in decreasing order by salary. Submit your query statements as Prepare DB & run queries.

SELECT `first_name`, `last_name`, `salary` FROM `employees`
WHERE `salary` > 50000
ORDER BY `salary` DESC;