
SELECT * FROM Products;

SELECT * FROM Products where UnitsInStock >= 40;

SELECT * FROM Employees;

SELECT * FROM Employees where city = 'London';

SELECT * FROM Orders;

SELECT * FROM Orders order by Freight desc;

SELECT * FROM Orders where Freight>90 AND Freight < 200 order by Freight desc;

SELECT * FROM Products where CategoryID = 1;

SELECT * FROM [Order Details] where discount > 0;

SELECT * FROM orders where CustomerID = 'BOTTM' AND Freight > 50 ;

SELECT * FROM orders where CustomerID = 'BOTTM' AND Freight > 50 order by Freight;