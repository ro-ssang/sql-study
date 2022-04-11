SELECT
    DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1, Logs l2, Logs l3
WHERE l1.id + 1 = l2.id
AND l2.id + 1 = l3.id
AND (l1.num = l2.num AND l1.num = l3.num)
;

-- 서브쿼리 활용
SELECT
    DISTINCT l.num AS ConsecutiveNums
FROM Logs l
WHERE (l.id + 1, l.num) IN (SELECT * FROM Logs)
AND (l.id + 2, l.num) IN (SELECT * FROM Logs)
;