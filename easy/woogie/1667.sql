Create table If Not Exists Users (user_id int, name varchar(40));
Truncate table Users;
insert into Users (user_id, name) values (1, 'aLice');
insert into Users (user_id, name) values (2, 'bOB');

SELECT
	u.user_id AS user_id
	,CONCAT(UPPER(LEFT(u.name, 1)), LOWER(SUBSTRING(u.name, 2))) AS name
FROM Users u
ORDER BY user_id
;