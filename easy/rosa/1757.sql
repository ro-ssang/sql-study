SELECT
    p.product_id AS product_id
FROM Products p
WHERE low_fats = 'Y'
AND recyclable = 'Y'
;