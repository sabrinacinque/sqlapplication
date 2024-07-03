--1
SELECT 
     COUNT(*) as 'totaleOrdini'
FROM orders;


--2
SELECT 
     COUNT(*) as 'TotaleClienti'
FROM Customers;


--3
SELECT 
     COUNT(*) as 'TotaleClienti'
FROM Customers
WHERE city = 'London';


--4
SELECT 
     AVG(Freight) as 'mediaTrasporto'
FROM Orders;


--5
SELECT 
     AVG(Freight) as 'mediaTrasporto'
FROM Orders
WHERE CustomerID = 'BOTTM';


--6
SELECT CustomerID,
    SUM(Freight) as 'totaletrasporto'
    FROM Orders
GROUP BY CustomerID;

--7
SELECT City ,
COUNT(*) AS 'ClientiPErCittà'
FROM Customers
GROUP BY City;


--8
SELECT OrderID,
       SUM(UnitPrice * Quantity) AS "TotalPrice"
FROM [Order Details]
GROUP BY OrderID;

--9
SELECT OrderID,
       SUM(UnitPrice * Quantity) AS "TotalPrice"
FROM [Order Details]
WHERE OrderID = 10248
GROUP BY OrderID;

--10
SELECT
    c.CategoryName,
    COUNT(p.ProductID) AS 'prodotti per categoria'
FROM Products AS p
LEFT JOIN Categories AS c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID, c.CategoryName;


--11
SELECT shipCountry,
COUNT(*) as 'totale ordini per paese'
FROM Orders
GROUP BY ShipCountry
ORDER BY [totale ordini per paese] DESC;


--12
SELECT shipCountry,
     AVG(Freight) as 'mediaTrasportoPerPaese'
FROM Orders
GROUP BY ShipCountry
ORDER BY mediaTrasportoPerPaese;



