#Write a query to get information about the addresses in the database, which are in San Francisco, Sofia or Carnation.
#Retrieve town_id, town_name, address_text. Order the result by town_id, then by address_id.
#Submit your queries using the "MySQL prepare DB and Run Queries" strategy.

SELECT addresses.town_id, towns.`name`, addresses.address_text 
FROM addresses
JOIN towns ON addresses.town_id = towns.town_id
WHERE towns.`name` IN('San Francisco', 'Sofia', 'Carnation')
ORDER BY addresses.town_id, addresses.address_id;

