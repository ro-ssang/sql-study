Create table If Not Exists Activities (sell_date date, product varchar(20));
Truncate table Activities;
insert into Activities (sell_date, product) values ('2020-05-30', 'Headphone');
insert into Activities (sell_date, product) values ('2020-06-01', 'Pencil');
insert into Activities (sell_date, product) values ('2020-06-02', 'Mask');
insert into Activities (sell_date, product) values ('2020-05-30', 'Basketball');
insert into Activities (sell_date, product) values ('2020-06-01', 'Bible');
insert into Activities (sell_date, product) values ('2020-06-02', 'Mask');
insert into Activities (sell_date, product) values ('2020-05-30', 'T-Shirt');

SELECT
	a.sell_date AS sell_date
	,COUNT(DISTINCT a.product) AS num_sold
	,GROUP_CONCAT(DISTINCT a.product ORDER BY product ASC SEPARATOR ',') AS products
FROM Activities a
GROUP BY sell_date
ORDER BY sell_date
;