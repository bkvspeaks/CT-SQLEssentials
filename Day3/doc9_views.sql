/* views */

-- SALES REP EMPLOYEES
-- create view 
CREATE VIEW [Employee Sales Reps] AS
SELECT FirstName, LastName, Title
FROM Employees
WHERE Title = 'Sales Representative'

-- query/show view 
SELECT * FROM [Employee Sales Reps]; 

-- update view 
ALTER VIEW [Employee Sales Reps] AS
SELECT FirstName, LastName --, Title
FROM Employees
WHERE Title = 'Sales Representative'

-- drop view 
DROP VIEW [Employee Sales Reps]; 

-- CURRENT PRODUCTS
-- create view 
CREATE VIEW [Current Products] AS
SELECT ProductName, UnitPrice, UnitsInStock
FROM Products
WHERE Discontinued = 0;

-- query/show view 
SELECT * 
FROM [Current Products]; 

-- query, show only product name for units in stock > 100
SELECT ProductName 
FROM [Current Products]
WHERE UnitsInStock > 100;

-- COMPREHENSIVE LAB
-- CUSTOMER ORDER INFO
CREATE VIEW [Customer Orders] AS 
Select O.OrderID, C.CompanyName, C.ContactName, O.OrderDate
FROM Customers C INNER JOIN Orders O
On O.CustomerID=C.CustomerID

-- query view - want list of cust names and how many orders they had
Select contactname, COUNT(OrderID) TotalOrders
FROM [Customer Orders]
GROUP BY ContactName
ORDER BY TotalOrders

-- turn into permanent table
Select contactname, COUNT(OrderID) TotalOrders
INTO CustSalesTotals
FROM [Customer Orders]
GROUP BY ContactName
ORDER BY TotalOrders

/* minilab 

1. create view of products w/names that start with a-m

2. change view to include unit price field

3. query that view to only see those w/unit price < 50

4. remove the view
*/
-- create view 


-- update view 



-- query/show view 


-- drop view 
