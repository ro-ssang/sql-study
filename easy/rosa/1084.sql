-- 서브쿼리를 활용한 풀이 방법
SELECT
    DISTINCT(p.product_id) AS product_id,
    p.product_name AS product_name
FROM Sales s1
LEFT JOIN Product p ON s1.product_id = p.product_id
WHERE s1.product_id NOT IN (
    SELECT
        s2.product_id
    FROM Sales s2
    WHERE s2.sale_date NOT BETWEEN '2019-01-01' AND '2019-03-31'
)
;

-- GROUP BY와 HAVING을 활용한 풀이 방법
SELECT
    p.product_id AS product_id,
    p.product_name AS product_name
FROM Sales s
LEFT JOIN Product p ON s.product_id = p.product_id
GROUP BY s.product_id
HAVING MIN(s.sale_date) >= '2019-01-01'
AND MAX(s.sale_date) <= '2019-03-31'
;