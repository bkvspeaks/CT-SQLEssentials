/* 

Start w/important note from word doc notes

Subqueries are queries emmbedded in queries, 
used to retreive data from one table based on data from another table
subquery MUST contain a COMPLETE & VALID select statement. 

test subquery first by higlighting & running just that part! if the subquery doesn't work the outer query won't be any better!
 */

/*
If more than one record is returned the main query must use
In or (NOT IN) */

-- Find the name of the company that placed the order 10290
SELECT CompanyName
FROM Customers
WHERE CustomerID =(SELECT CustomerID
					FROM Orders
					WHERE OrderID=10290)

/* show product name and supplier id for all products supplied by
Exotic Liquids, Grandma Kelly's Homestead and Tokyo Traders.*/
-- 3 gotchas: IN, Kelly's, parens
-- Kelly''s is NOT data sanitation, just a shortcut for making queries
SELECT ProductName, SupplierId
FROM Products
WHERE SupplierID IN (SELECT SupplierID
					FROM Suppliers
					WHERE CompanyName 
					IN('Exotic Liquids','Grandma Kelly''s Homestead','Tokyo Traders'))
					
--If lots of time: which companies placed orders in 1997.
SELECT CompanyName
FROM Customers
WHERE CustomerID IN(SELECT CustomerID
					FROM Orders
					WHERE OrderDate BETWEEN '1-JAN-1997' AND '31-Dec-1997')

--MINI LAB: Show all products by name that are in the seafood category


--Show all companies by name that sell products in CategoryID 8
SELECT CompanyName
FROM Suppliers
WHERE SupplierID = (SELECT SupplierID
					FROM Products
					WHERE CategoryID=8)

--All companies by name that sell products in the beverages category
SELECT CompanyName
FROM Suppliers
WHERE SupplierID IN(SELECT SupplierID
					FROM Products
					WHERE CategoryID=(SELECT CategoryID
										FROM Categories
										WHERE CategoryID = 1))
										
-- customer names for freights greater than the average freight in orders
SELECT CompanyName
FROM Customers
WHERE CustomerID IN (SELECT CustomerID
					FROM Orders
					WHERE Freight > (SELECT AVG(Freight)
									FROM Orders))