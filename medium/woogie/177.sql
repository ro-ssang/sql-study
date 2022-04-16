Create table If Not Exists Employee (Id int, Salary int);
Truncate table Employee;
insert into Employee (id, salary) values (1, 100);
insert into Employee (id, salary) values (2, 200);
insert into Employee (id, salary) values (3, 300);

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  DECLARE startNum INT;
  SET startNum = N - 1;
 
  RETURN (
	SELECT DISTINCT e.Salary AS distinctSalary 
	FROM Employee e
	ORDER BY distinctSalary DESC
	LIMIT startNum, 1      
  );
END