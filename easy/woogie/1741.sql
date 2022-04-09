Create table If Not Exists Employees(emp_id int, event_day date, in_time int, out_time int);
Truncate table Employees;
insert into Employees (emp_id, event_day, in_time, out_time) values (1, '2020-11-28', 4, 32);
insert into Employees (emp_id, event_day, in_time, out_time) values (1, '2020-11-28', 55, 200);
insert into Employees (emp_id, event_day, in_time, out_time) values (1, '2020-12-3', 1, 42);
insert into Employees (emp_id, event_day, in_time, out_time) values (2, '2020-11-28', 3, 33);
insert into Employees (emp_id, event_day, in_time, out_time) values (2, '2020-12-9', 47, 74);

SELECT 
	e.event_day AS day
	,e.emp_id AS emp_id
	,SUM(e.out_time - e.in_time) AS total_time
FROM Employees e 
GROUP BY e.event_day, e.emp_id 
;