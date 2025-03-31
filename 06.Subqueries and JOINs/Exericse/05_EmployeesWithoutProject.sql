#Write a query that selects:
#• employee_id
#• first_name
#Filter only employees without a project. Return the first 3 rows sorted by employee_id in descending order.

SELECT employee_id, first_name
FROM employees
LEFT JOIN employees_projects USING(employee_id)
WHERE project_id IS NULL
ORDER BY employee_id DESC
LIMIT 3;