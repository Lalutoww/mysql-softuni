#Write a query that selects:
#• country_name
#• river_name
#Find the first 5 countries with or without rivers in Africa.
#Sort them by country_name in ascending order.

SELECT country_name, river_name
FROM countries
LEFT JOIN countries_rivers USING(country_code)
LEFT JOIN rivers ON rivers.id = countries_rivers.river_id
WHERE continent_code = 'AF'
ORDER BY country_name
LIMIT 5;