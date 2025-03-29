#Select all deposit groups and its total deposit sum but only for the wizards who has their magic wand crafted by Ollivander family.
#After this, filter total deposit sums lower than 150000. Order by total deposit sum in descending order.

SELECT `deposit_group`, ROUND(SUM(`deposit_amount`),2) AS `total_deposit_sum`
FROM `wizzard_deposits`
WHERE `magic_wand_creator` = 'Ollivander family'
GROUP BY `deposit_group`
HAVING `total_deposit_sum` < 150000
ORDER BY `total_deposit_sum` DESC;