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

-- LIMIT 활용
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    DECLARE X INT;
    
    SELECT N - 1
        INTO X;
        
    RETURN (
        SELECT
            DISTINCT e.salary
        FROM Employee e
        ORDER BY e.salary DESC
        LIMIT X, 1
    );
END