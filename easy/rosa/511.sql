-- ALL을 이용한 풀이 방법
SELECT
    a1.player_id AS player_id,
    a1.event_date AS first_login
FROM Activity a1
WHERE a1.event_date <= ALL (
    SELECT
        a2.event_date
    FROM Activity a2
    WHERE a1.player_id = a2.player_id
)
;

-- GROUP BY를 이용한 풀이 방법
SELECT
    a.player_id AS player_id,
    MIN(a.event_date) AS first_login
FROM Activity a
GROUP BY a.player_id
;