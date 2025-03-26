#8.	Change Primary Key
/*Using SQL queries modify table users from the previous task.
First remove current primary key then create new primary key that would be combination of fields id and username.
The initial primary key name on id is pk_users.*/

ALTER TABLE `users`
MODIFY `id` BIGINT NOT NULL,
DROP primary key,
ADD CONSTRAINT pk_users
PRIMARY KEY(`id`, `username`);