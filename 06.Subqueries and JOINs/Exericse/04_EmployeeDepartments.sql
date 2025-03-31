#Write a query that selects:
#• employee_id
#• first_name
#• salary
#• department_name
#Filter only employees with salary higher than 15000.
#Return the first 5 rows sorted by department_id in descending order.

SELECT employee_id, first_name, salary, departments.`name`
FROM employees
JOIN departments USING(department_id)
WHERE salary > 15000
ORDER BY department_id DESC
LIMIT 5;