-- LEFT JOIN을 활용한 풀이 방법
SELECT
    u.name AS name,
    SUM(t.amount) AS balance
FROM Transactions t
LEFT JOIN Users u ON t.account = u.account
GROUP BY t.account
HAVING SUM(t.amount) > 10000
;

SELECT
    u.name AS name,
    SUM(t.amount) AS balance
FROM Users u, Transactions t
WHERE u.account = t.account
GROUP BY u.account
HAVING SUM(t.amount) > 10000
;