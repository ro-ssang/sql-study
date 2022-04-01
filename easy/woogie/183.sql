-- 내가 만든 쿼리
SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders  o ON c.id = o.customerId 
WHERE o.id IS NULL
;

-- 내가 만들고 싶었던 쿼리
SELECT c.name AS Customers 
FROM Customers c 
WHERE c.id NOT IN (
	SELECT o.customerId 
	FROM Orders o 
);