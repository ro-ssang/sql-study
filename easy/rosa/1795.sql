-- UNION의 존재를 몰라서 어려웠던 문제 😭
(
    SELECT
        p.product_id,
        'store1' AS store,
        p.store1 AS price
    FROM Products p
    WHERE p.store1 IS NOT NULL
) UNION (
    SELECT
        p.product_id,
        'store2' AS store,
        p.store2 AS price
    FROM Products p
    WHERE p.store2 IS NOT NULL
) UNION (
    SELECT
        p.product_id,
        'store3' AS store,
        p.store3 AS price
    FROM Products p
    WHERE p.store3 IS NOT NULL
)
;