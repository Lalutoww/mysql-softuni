#Find the count of all countries which don't have a mountain.

SELECT COUNT(countries.country_code) AS country_count
FROM countries
WHERE countries.country_code NOT IN (SELECT mc.country_code FROM mountains_countries AS mc);