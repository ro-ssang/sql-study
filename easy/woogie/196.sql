-- 내가 푼 방법
-- DELETE 하려는 테이블과 같은 테이블을 SELECT에 사용한다면 한 번 더 감싸야 한다
DELETE 
FROM Person p1
WHERE p1.id NOT IN (
	SELECT *
	FROM 
	(
		SELECT MIN(p2.id) AS id
		FROM Person p2
		GROUP BY p2.email 
	) t1
)
;

-- 추천
DELETE p1 
FROM Person p1, Person p2
WHERE p1.Email = p2.Email AND p1.Id > p2.Id
;