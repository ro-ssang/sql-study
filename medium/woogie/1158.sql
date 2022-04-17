Create table If Not Exists Users (user_id int, join_date date, favorite_brand varchar(10));
Create table If Not Exists Orders (order_id int, order_date date, item_id int, buyer_id int, seller_id int);
Create table If Not Exists Items (item_id int, item_brand varchar(10));
Truncate table Users;
insert into Users (user_id, join_date, favorite_brand) values (1, '2018-01-01', 'Lenovo');
insert into Users (user_id, join_date, favorite_brand) values (2, '2018-02-09', 'Samsung');
insert into Users (user_id, join_date, favorite_brand) values (3, '2018-01-19', 'LG');
insert into Users (user_id, join_date, favorite_brand) values (4, '2018-05-21', 'HP');
Truncate table Orders;
insert into Orders (order_id, order_date, item_id, buyer_id, seller_id) values (1, '2019-08-01', 4, 1, 2);
insert into Orders (order_id, order_date, item_id, buyer_id, seller_id) values (2, '2018-08-02', 2, 1, 3);
insert into Orders (order_id, order_date, item_id, buyer_id, seller_id) values (3, '2019-08-03', 3, 2, 3);
insert into Orders (order_id, order_date, item_id, buyer_id, seller_id) values (4, '2018-08-04', 1, 4, 2);
insert into Orders (order_id, order_date, item_id, buyer_id, seller_id) values (5, '2018-08-04', 1, 3, 4);
insert into Orders (order_id, order_date, item_id, buyer_id, seller_id) values (6, '2019-08-05', 2, 2, 4);
Truncate table Items;
insert into Items (item_id, item_brand) values (1, 'Samsung');
insert into Items (item_id, item_brand) values (2, 'Lenovo');
insert into Items (item_id, item_brand) values (3, 'LG');
insert into Items (item_id, item_brand) values (4, 'HP');

SELECT 
	u.user_id AS 'buyer_id'
	,u.join_date AS 'join_date'
	,COUNT(o.order_id) AS 'orders_in_2019'
FROM Users u 
LEFT JOIN Orders o
	ON u.user_id = o.buyer_id 
	AND DATE_FORMAT(o.order_date, '%Y') = '2019'
GROUP BY u.user_id 
;