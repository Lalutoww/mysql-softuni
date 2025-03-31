#Write a query that selects:
#• employee_id
#• first_name
#• last_name
#• department_name
#Sort the result by employee_id in descending order.
#Select only employees from the "Sales" department.

SELECT employee_id, first_name, last_name, departments.`name`
FROM employees
JOIN departments USING(department_id)
WHERE departments.`name` = 'Sales'
ORDER BY employee_id DESC;