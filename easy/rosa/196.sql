DELETE FROM Person p1
WHERE p1.id NOT IN (
    SELECT *
    FROM (
        SELECT
            MIN(p2.id)
        FROM Person p2
        GROUP BY p2.email
    ) tmp
)
;