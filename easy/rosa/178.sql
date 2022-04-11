SELECT
    s.score AS score,
    DENSE_RANK() OVER(ORDER BY s.score DESC) AS 'rank'
FROM Scores s
;