/* ESC key for autocomplete in fx!! But you lose fx helper 

AFTER EVERY EXAMPLE/LAB: ask how many rows returned? THIS WILL BE IMPORTANT LATER
*/

--COUNT (77)
SELECT COUNT(*) As ProductCount

FROM Products

/* COUNT (ERROR)
	CAN'T have tables w/diff # of rows, 1 row
	vs 77 rows */
SELECT COUNT(*) As ProductCount, ProductName

FROM Products

-- COUNT W/null data, are the totals the same? Why not?
SELECT COUNT(OrderID) AS TotalOrderIds, COUNT(ShippedDate) AS TotalShippedDate

FROM Orders

--MINI LAB: How many customers do we have? (91)
SELECT COUNT(*) As CustomerCount

FROM Customers

/*MINI LAB: Find all the distinct cities in which northwind has customers in alpha order*/


--average (28.8663)
SELECT AVG(UnitPrice) As PriceAvg

FROM Products

--MIN(2.5)
SELECT MIN(UnitPrice) As [Low Price]

FROM Products
	
--MAX(263.5)
SELECT MAX(UnitPrice) As [High Price]

FROM Products
	
--Find the earliest and Latest  Dates of hire from the employees table
--Use alias
SELECT MIN(HireDate) AS FirstHireDate,
MAX(HireDate) AS LastHireDate

FROM Employees

-- total items ordered
SELECT SUM(UnitPrice) As TotalItemsOrdered

FROM Products
	
-- DO EVERY TIME
-- MINI LAB: sum productid, discuss what this number "means"
SELECT SUM(ProductId)
FROM Products 
/*
	THE POINT: does sql let you sum id numbers? yes! is that number meaningful? no!
	Humans need to think about the function they are using AND the field they're using
	
	USEFUL: getting sum of ids can be useful if transferring data. can use as before and after checksum. before & after transfer should match.
*/