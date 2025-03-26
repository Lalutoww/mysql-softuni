#10. Set Unique Field
/*Using SQL queries modify table users.
Remove username field from the primary key so only the field id would be primary key.
Now add unique constraint to the username field.
The initial primary key name on (id, username) is pk_users.*/

ALTER TABLE `users`
DROP PRIMARY KEY,
ADD CONSTRAINT pk_users
PRIMARY KEY(`id`),
MODIFY COLUMN `username` VARCHAR(30) UNIQUE;
