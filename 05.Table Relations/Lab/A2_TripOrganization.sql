#Write a query to retrieve information about SoftUni camp's transportation organization.
#Get information about the drivers (name and id) and their vehicle type.
#Submit your queries using the "MySQL prepare DB and Run Queries" strategy.

SELECT campers.id, vehicles.vehicle_type, CONCAT_WS(" ", campers.first_name, campers.last_name) AS `full_name`
FROM vehicles
JOIN campers ON
vehicles.driver_id = campers.id;