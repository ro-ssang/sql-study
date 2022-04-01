SELECT c.name 
FROM Customer c 
WHERE c.referee_id IS NULL OR c.referee_id <> 2
;

SELECT c.name 
FROM Customer c 
WHERE c.id NOT IN (
	SELECT c2.id 
	FROM Customer c2
	WHERE c2.referee_id = 2
)
;