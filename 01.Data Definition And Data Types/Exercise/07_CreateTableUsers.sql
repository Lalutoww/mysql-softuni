#7.	Create Table Users
/*Using SQL query create table users with columns:
•	id – unique number for every user. There will be no more than 263-1 users. (Auto incremented)
•	username – unique identifier of the user will be no more than 30 characters (non Unicode). (Required)
•	password – password will be no longer than 26 characters (non Unicode). (Required)
•	profile_picture – image with size up to 900 KB.
•	last_login_time
•	is_deleted – shows if the user deleted his/her profile. Possible states are true or false.
Make id primary key. Populate the table with 5 records. Submit your CREATE and INSERT statements. */

CREATE TABLE `users`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`username` VARCHAR(30) NOT NULL UNIQUE,
`password` VARCHAR(26) NOT NULL,
`profile_picture` BLOB,
`last_login_time` DATETIME,
`is_deleted` BOOL
);

INSERT INTO users (`username`, `password`, `profile_picture`, `last_login_time`, `is_deleted`)
VALUES ('Test 1', '00000', null, null, false),
       ('Test 2', '11111', null, null, false),
       ('Test 3', '22222', null, null, true),
       ('Test 4', '33333', null, null, true),
       ('Test 5', '44444', null, null, false);