Create table If Not Exists orders (order_number int, customer_number int);
Truncate table orders;
insert into orders values (1, 1);
insert into orders values (2, 2);
insert into orders values (3, 3);
insert into orders values (4, 3);

-- 1위 한 명만
SELECT o.customer_number
FROM orders o 
GROUP BY o.customer_number 
ORDER BY COUNT(*) DESC 
LIMIT 1
;

-- 1위 여러 명
select customer_number 
from orders 
group by customer_number
having count(customer_number) >= all 
(select count(customer_number) from orders group by customer_number)
;