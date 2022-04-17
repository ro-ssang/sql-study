Create table If Not Exists Tree (id int, p_id int);
Truncate table Tree;
insert into Tree (id, p_id) values (1, NULL);
insert into Tree (id, p_id) values (2, 1);
insert into Tree (id, p_id) values (3, 1);
insert into Tree (id, p_id) values (4, 2);
insert into Tree (id, p_id) values (5, 2);

SELECT DISTINCT 
	t1.id AS 'id'
	,CASE 
		WHEN t3.id IS NULL
			THEN 'Root'
		WHEN t2.id IS NULL
			THEN 'Leaf'
		ELSE 'Inner'
	END AS 'type'
FROM Tree t1 
LEFT JOIN Tree t2 ON t1.id = t2.p_id 
LEFT JOIN Tree t3 ON t1.p_id = t3.id 
ORDER BY id
;