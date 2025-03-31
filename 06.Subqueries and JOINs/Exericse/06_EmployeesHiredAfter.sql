#Write a query that selects:
#• first_name
#• last_name
#• hire_date
#• dept_name
#Filter only employees hired after 1/1/1999 and from either the "Sales" or the "Finance" departments.
#Sort the result by hire_date (ascending).

SELECT first_name, last_name, hire_date, departments.`name`
FROM employees
JOIN departments USING(department_id)
WHERE hire_date > '1999/01/01' AND departments.`name` IN('Sales', 'Finance')
ORDER BY hire_date;