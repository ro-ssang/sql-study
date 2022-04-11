SELECT
    d.name AS Department,
    e1.name AS Employee,
    e1.salary AS Salary
FROM Employee e1
JOIN Department d ON e1.departmentId = d.id
WHERE (e1.salary, e1.departmentId) IN (
    SELECT
        MAX(e2.salary),
        e2.departmentId
    FROM Employee e2
    GROUP BY e2.departmentId
);