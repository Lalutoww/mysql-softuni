#Write a query that selects:
#• first_name
#• last_name
#• town
#• address_text
#Sort the result by first_name in ascending order then by last_name. Select first 5 employees.

SELECT first_name, last_name, towns.name, address_text
FROM employees
JOIN addresses USING(address_id)
JOIN towns USING(town_id)
ORDER BY first_name, last_name
LIMIT 5;
