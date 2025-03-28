#Write a SQL query to find all towns that start with letters M, K, B or E (case insensitively).
#Order them alphabetically by town name. Submit your query statements as Prepare DB & run queries.

SELECT *
FROM `towns`
WHERE SUBSTRING(`name`, 1, 1) IN ("m", "k", "b", "e")
ORDER BY `name`;