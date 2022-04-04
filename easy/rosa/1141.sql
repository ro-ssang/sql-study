-- DATE_SUB 함수를 활용한 풀이 방법
SELECT
    a.activity_date AS day,
    COUNT(DISTINCT(a.user_id)) AS active_users
FROM Activity a
WHERE DATE(a.activity_date) BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND DATE('2019-07-27')
GROUP BY a.activity_date
;

-- DATEDIFF 함수를 활용한 풀이 방법
SELECT
    a.activity_date AS day,
    COUNT(DISTINCT(a.user_id)) AS active_users
FROM Activity a
WHERE DATEDIFF('2019-07-27', a.activity_date) < 30
GROUP BY a.activity_date
;