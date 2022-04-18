Create Table If Not Exists Stocks (stock_name varchar(15), operation ENUM('Sell', 'Buy'), operation_day int, price int);
Truncate table Stocks;
insert into Stocks (stock_name, operation, operation_day, price) values ('Leetcode', 'Buy', 1, 1000);
insert into Stocks (stock_name, operation, operation_day, price) values ('Corona Masks', 'Buy', 2, 10);
insert into Stocks (stock_name, operation, operation_day, price) values ('Leetcode', 'Sell', 5, 9000);
insert into Stocks (stock_name, operation, operation_day, price) values ('Handbags', 'Buy', 17, 30000);
insert into Stocks (stock_name, operation, operation_day, price) values ('Corona Masks', 'Sell', 3, 1010);
insert into Stocks (stock_name, operation, operation_day, price) values ('Corona Masks', 'Buy', 4, 1000);
insert into Stocks (stock_name, operation, operation_day, price) values ('Corona Masks', 'Sell', 5, 500);
insert into Stocks (stock_name, operation, operation_day, price) values ('Corona Masks', 'Buy', 6, 1000);
insert into Stocks (stock_name, operation, operation_day, price) values ('Handbags', 'Sell', 29, 7000);
insert into Stocks (stock_name, operation, operation_day, price) values ('Corona Masks', 'Sell', 10, 10000);

SELECT 
	s.stock_name AS 'stock_name' 
	,SUM(
		CASE 
			WHEN s.operation = 'Buy'
				THEN -s.price
			WHEN s.operation = 'Sell'
				THEN s.price
		END
	) AS 'capital_gain_loss'
FROM Stocks s
GROUP BY s.stock_name 
;