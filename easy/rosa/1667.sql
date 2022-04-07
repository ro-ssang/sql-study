SELECT
    u.user_id AS user_id,
    CONCAT(
        UPPER(LEFT(u.name, 1)),
        LOWER(SUBSTRING(u.name, 2))
    ) AS name
FROM Users u
ORDER BY user_id
;

-- LENGTH 활용
SELECT
    u.user_id AS user_id,
    CONCAT(
        UPPER(LEFT(u.name, 1)),
        LOWER(SUBSTRING(u.name, 2, LENGTH(u.name) - 1))
    ) AS name
FROM Users u
ORDER BY user_id
;