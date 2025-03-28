#Write a SQL query to find all towns that do not start with letters R, B or D (case insensitively).
#Order them alphabetically by name. Submit your query statements as Prepare DB & run queries.

SELECT *
FROM `towns`
WHERE SUBSTRING(`name`, 1, 1) NOT IN ("r", "b", "d")
ORDER BY `name`;