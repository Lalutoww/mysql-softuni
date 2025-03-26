#9.	Set Default Value of a Field
#Using SQL queries modify table users. Make the default value of last_login_time field to be the current time.

ALTER TABLE `users`
MODIFY COLUMN `last_login_time` DATETIME DEFAULT NOW();