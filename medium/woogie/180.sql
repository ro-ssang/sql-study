Create table If Not Exists Logs (id int, num int);
Truncate table Logs;
insert into Logs (id, num) values (1, 1);
insert into Logs (id, num) values (2, 1);
insert into Logs (id, num) values (3, 1);
insert into Logs (id, num) values (4, 2);
insert into Logs (id, num) values (5, 1);
insert into Logs (id, num) values (6, 2);
insert into Logs (id, num) values (7, 2);

-- 내가 푼 방법
SELECT t1.first AS 'ConsecutiveNums'
FROM 
(
	SELECT 
		l.num AS 'first'
		,LEAD(l.num, 1, 0) OVER(ORDER BY l.id) AS 'second'
		,LEAD(l.num, 2, 0) OVER(ORDER BY l.id) AS 'third'
	FROM Logs l
) AS t1
WHERE t1.first = t1.second
AND t1.second = t1.third
;

--정답
SELECT DISTINCT l1.Num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2 ON l1.Id = l2.Id - 1 AND l1.Num = l2.Num
JOIN Logs l3 ON l1.Id = l3.Id - 2 AND l1.Num = l3.Num
;


-- 추천
SELECT DISTINCT l.num as ConsecutiveNums
FROM Logs l
WHERE (l.id + 1, l.num) IN (SELECT id, num FROM Logs) 
AND   (l.id + 2, l.num) IN (SELECT id, num FROM Logs)
;