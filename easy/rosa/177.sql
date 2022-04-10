CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    RETURN IFNULL(
        (
            SELECT
                DISTINCT tmp.salary
            FROM (
                SELECT
                    DENSE_RANK() OVER (ORDER BY e.salary DESC) AS ranking,
                    e.salary
                FROM Employee e
            ) tmp
            WHERE tmp.ranking = N
        ), NULL
    );
END