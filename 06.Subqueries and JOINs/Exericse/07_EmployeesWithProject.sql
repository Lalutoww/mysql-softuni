#Write a query that selects:
#• employee_id
#• first_name
#• project_name
#Filter only employees with a project, which has started after 13.08.2002 and it is still ongoing (no end date).
#Return the first 5 rows sorted by first_name then by project_name both in ascending order.

SELECT employees.employee_id, employees.first_name, projects.`name`
FROM employees
JOIN employees_projects USING(employee_id)
JOIN projects USING(project_id)
WHERE projects.start_date > '2002-08-13' AND projects.end_date IS NULL
ORDER BY employees.first_name, projects.`name`
LIMIT 5;

