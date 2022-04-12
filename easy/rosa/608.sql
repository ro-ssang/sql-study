SELECT
    t1.id AS id,
    CASE
        WHEN t1.p_id IS NULL
            THEN 'Root'
        WHEN t1.id IN (SELECT DISTINCT t2.p_id FROM Tree t2)
            THEN 'Inner'
        ELSE 'Leaf'
    END AS type
FROM Tree t1
;