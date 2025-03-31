#Write a query to retrieve information about the managers – id, full_name, deparment_id and department_name.
#Select the first 5 departments ordered by employee_id.
#Submit your queries using the "MySQL prepare DB and Run Queries" strategy.

SELECT employee_id, CONCAT_WS(" ", first_name, last_name) AS `full_name`, departments.department_id, departments.`name`
FROM employees
INNER JOIN departments ON
departments.manager_id = employees.employee_id
ORDER BY employees.employee_id
LIMIT 5;

SELECT * FROM departments;