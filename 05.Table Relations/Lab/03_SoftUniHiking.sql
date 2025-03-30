#Get information about the hiking routes – starting point and ending point, and their leaders – name and id.
#Submit your queries using the "MySQL prepare DB and Run Queries" strategy.

SELECT r.starting_point, r.end_point, c.id, CONCAT_WS(" ", c.first_name, c.last_name) AS `full_name`
FROM routes AS r
JOIN campers AS c ON 
r.leader_id = c.id;