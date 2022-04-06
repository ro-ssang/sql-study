-- LEFT JOIN을 활용한 풀이
SELECT
    v.customer_id,
    COUNT(v.customer_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id
;

-- 서브쿼리를 활용한 풀이
SELECT
    v.customer_id AS customer_id,
    COUNT(visit_id) AS count_no_trans
FROM Visits v
WHERE v.visit_id NOT IN (
    SELECT
        t.visit_id
    FROM Transactions t
)
GROUP BY v.customer_id
;