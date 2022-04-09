-- IF, MOD, LEFT 활용한 풀이
SELECT
    e.employee_id AS employee_id,
    IF(
        MOD(e.employee_id, 2) = 1 AND LEFT(e.name, 1) != 'M',
        e.salary,
        0
    ) AS bonus
FROM Employees e
ORDER BY e.employee_id
;

-- CASE, LIKE 활용한 풀이
SELECT
    e.employee_id,
    CASE
        WHEN e.employee_id % 2 = 1 AND e.name NOT LIKE 'M%'
        THEN e.salary
        ELSE 0
    END AS bonus
FROM Employees e
;