Create table If Not Exists Products (product_id int, low_fats ENUM('Y', 'N'), recyclable ENUM('Y','N'));
Truncate table Products;
insert into Products (product_id, low_fats, recyclable) values (0, 'Y', 'N');
insert into Products (product_id, low_fats, recyclable) values (1, 'Y', 'Y');
insert into Products (product_id, low_fats, recyclable) values (2, 'N', 'Y');
insert into Products (product_id, low_fats, recyclable) values (3, 'Y', 'Y');
insert into Products (product_id, low_fats, recyclable) values (4, 'N', 'N');

SELECT p.product_id 
FROM Products p 
WHERE p.low_fats = 'Y'
AND p.recyclable = 'Y'
;