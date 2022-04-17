Create table If Not Exists Seat (id int, student varchar(255));
Truncate table Seat;
insert into Seat (id, student) values (1, 'Abbot');
insert into Seat (id, student) values (2, 'Doris');
insert into Seat (id, student) values (3, 'Emerson');
insert into Seat (id, student) values (4, 'Green');
insert into Seat (id, student) values (5, 'Jeames');

SELECT  
	CASE
		WHEN s.id = (SELECT MAX(s2.id) FROM Seat s2) AND MOD(s.id, 2) = 1
			THEN s.id
		WHEN MOD(s.id, 2) = 1
			THEN s.id + 1
		WHEN MOD(s.id, 2) = 0
			THEN s.id - 1
	END AS 'id'
	,s.student AS 'student'
FROM Seat s 
ORDER BY id
;