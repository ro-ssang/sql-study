SELECT
    ad.actor_id AS actor_id
    ,ad.director_id AS director_id
FROM ActorDirector ad
GROUP BY ad.actor_id, ad.director_id
HAVING COUNT(*) >= 3
;

-- pk를 COUNT로 잡으면 속도가 더 빨라진다! -> 이 문제에서는 ad.timestamp 칼럼