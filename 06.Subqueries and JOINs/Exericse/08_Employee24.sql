#Write a query that selects:
#• employee_id
#• first_name
#• project_name
#Filter all the projects of employees with id 24.
#If the project has started after 2005 inclusively the return value should be NULL.
#Sort the result by project_name alphabetically.

SELECT employee_id, first_name, IF(YEAR(projects.start_date) >= 2005, NULL, projects.`name`) AS `project_name`
FROM employees
JOIN employees_projects USING(employee_id)
JOIN `projects` USING(project_id)
WHERE employees.employee_id = 24
ORDER BY projects.`name`;