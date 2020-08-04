/*
Grouping RULES!
* Every non-aggregate column in SELECT MUST appear in the GROUP BY
	can't show results by aggregate (single value) AND non-aggregate (lots of values) at the same time
*/
-- How many orders from each employee?	
SELECT SUM(EmployeeID) As TotalNumberOfOrders

FROM Orders

Group By EmployeeID

--# of different titles each listed
SELECT Count(*) AS HowMany, Title

FROM Employees

GROUP BY Title
	
--(8)
SELECT Count(*) AS WhatAreThey, CategoryName

FROM Categories

GROUP BY CategoryName
	
-- # of different items per category listed(8)
-- add in where for items that are NOT discontinued, so you can ask where group by goes & hopefully they say "under where"
SELECT Count(*) AS WhatAreThey, CategoryID

FROM Products

-- WHERE Discontinued = 0

GROUP BY CategoryID

-- total in stock grouped by discontinued/not
SELECT SUM(UnitsInStock) AS something, Discontinued

From Products

GROUP BY Discontinued
-- This info not as helpful with only a single table
