#Write a query that returns the value of the lowest average salary of all departments.

SELECT AVG(salary) AS `min_avg_salary`
FROM employees
GROUP BY department_id
ORDER BY `min_avg_salary`
LIMIT 1;