Create table If Not Exists Department (id int, revenue int, month varchar(5));
Truncate table Department;
insert into Department (id, revenue, month) values (1, 8000, 'Jan');
insert into Department (id, revenue, month) values (2, 9000, 'Jan');
insert into Department (id, revenue, month) values (3, 10000, 'Feb');
insert into Department (id, revenue, month) values (1, 7000, 'Feb');
insert into Department (id, revenue, month) values (1, 6000, 'Mar');

-- sum을 안쓰니 같은 결과지만 오류가 났음(타입 문제로 보임)
SELECT id, 
	SUM(IF(month = 'Jan', revenue, NULL)) AS Jan_Revenue,
	SUM(IF(month = 'Feb', revenue, NULL)) AS Feb_Revenue,
	SUM(IF(month = 'Mar', revenue, NULL)) AS Mar_Revenue,
	SUM(IF(month = 'Apr', revenue, NULL)) AS Apr_Revenue,
	SUM(IF(month = 'May', revenue, NULL)) AS May_Revenue,
	SUM(IF(month = 'Jun', revenue, NULL)) AS Jun_Revenue,
	SUM(IF(month = 'Jul', revenue, NULL)) AS Jul_Revenue,
	SUM(IF(month = 'Aug', revenue, NULL)) AS Aug_Revenue,
	SUM(IF(month = 'Sep', revenue, NULL)) AS Sep_Revenue,
	SUM(IF(month = 'Oct', revenue, NULL)) AS Oct_Revenue,
	SUM(IF(month = 'Nov', revenue, NULL)) AS Nov_Revenue,
	SUM(IF(month = 'Dec', revenue, NULL)) AS Dec_Revenue
FROM Department
GROUP BY id
ORDER BY id
;