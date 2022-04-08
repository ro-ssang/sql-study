SELECT
    f.user_id AS user_id,
    COUNT(f.user_id) AS followers_count
FROM Followers f
GROUP BY f.user_id
ORDER BY f.user_id
;