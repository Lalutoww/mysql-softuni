#Write a query that selects:
#• employee_id
#• job_title
#• address_id
#• address_text
#Return the first 5 rows sorted by address_id in ascending order.


SELECT employee_id, job_title, address_id, address_text
FROM employees
JOIN addresses USING(address_id)
ORDER BY address_id
LIMIT 5;