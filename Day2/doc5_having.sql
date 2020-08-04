/*
Grouping RULES!
* Every non-aggregate column in SELECT MUST appear in the GROUP BY
* You may NOT use aliases in the HAVING clause
* You may only use calculated fields in the having clause

•	Now might be a good time to go find the handout:
	o	File explorer -> This PC -> C drive -> ClassFiles -> ClausesMap.docx

*/

/*Retrieve the number of employees in each city
in which there are at least 2 employees
HAVING Clause is used to filter grouped data*/
SELECT CITY, COUNT(EmployeeID) AS NumEmployees

FROM Employees

GROUP BY City

HAVING COUNT(EmployeeID)>1 -- can we use NumEmployees?? NOOOOO! Why not? Field doesn't exist yet! What can we use instead? MAKE THEM HIT THIS ERROR, need to learn how to read error messages

--Total Quantity for each product Id from the order details table
--Diplay only those with a total units less than 200
SELECT ProductID, SUM(Quantity) AS TotalUnits

FROM [Order Details]

GROUP BY ProductID

HAVING SUM(Quantity)<200

/* From the Order Table. Creat a column called NumOrders.
NumOrders represents the number of orders placed by a certain customer
Only return the rows where NUMOrders is greater than 15 and 
display in descending order*/
SELECT CustomerID, COUNT(OrderID) AS NumOrders

FROM Orders

GROUP BY CustomerID

HAVING COUNT(OrderId)>15

ORDER BY NumOrders DESC

/*
Find the number sales representatives in each city that contains at least
2 sales representatives. Order by the number of employees.*/
SELECT City, COUNT(EmployeeID) AS NumberEmployees

FROM Employees

WHERE Title='Sales Representative'

GROUP BY City

HAVING COUNT(EmployeeID)>1

ORDER BY NumberEmployees
/* above is one to print out & put on the fridge */