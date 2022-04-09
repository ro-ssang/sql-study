Create table If Not Exists Followers(user_id int, follower_id int);
Truncate table Followers;
insert into Followers (user_id, follower_id) values (0, 1);
insert into Followers (user_id, follower_id) values (1, 0);
insert into Followers (user_id, follower_id) values (2, 0);
insert into Followers (user_id, follower_id) values (2, 1);

SELECT 
	f.user_id AS user_id
	,COUNT(f.follower_id) AS followers_count
FROM Followers f 
GROUP BY f.user_id
ORDER BY user_id
;