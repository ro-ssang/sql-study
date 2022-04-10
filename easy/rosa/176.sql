SELECT
    MAX(e1.salary) AS SecondHighestSalary
FROM Employee e1
WHERE e1.salary != (
    SELECT
        MAX(e2.salary)
    FROM Employee e2
)
;