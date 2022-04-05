SELECT
    u.name AS name,
    SUM(IFNULL(r.distance, 0)) AS travelled_distance
FROM Rides r
RIGHT JOIN Users u ON r.user_id = u.id
GROUP BY u.id
ORDER BY travelled_distance DESC, name ASC
;