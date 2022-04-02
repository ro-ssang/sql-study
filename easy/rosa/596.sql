SELECT
    c.class AS class
FROM Courses c
GROUP BY c.class
HAVING COUNT(c.student) >= 5

-- distinct를 사용해야 하나?
-- Coures 테이블의 pk가 student와 class인데,
-- class를 기준으로 GROUP BY로 묶게 된다면 duplicated key error가 안날 것 같음.