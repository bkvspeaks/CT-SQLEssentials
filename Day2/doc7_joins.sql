/*
	SYNTAX
	SELECT Table1.Column, Table2.Column
	FROM Table1 JOIN Table2
		ON Table1.Column=Table2.Column
	WHERE Conditions
*/

--Inner Join will combine rows from two or more tables if the join condition is true
-- What table name is left of the word JOIN? THAT'S THE LEFT TABLE!
-- What table is right of the word JOIN? THAT'S THE RIGHT TABLE!
Select Orders.OrderID, Customers.CompanyName, Orders.OrderDate
FROM Orders INNER JOIN Customers -- aka JOIN
	ON Orders.CustomerID=Customers.CustomerID

/*	
--Inner Join OLD Syntax
Select Orders.OrderID, Customers.CompanyName, Orders.OrderDate
FROM Orders, Customers --INNER JOIN Customers
--On 
WHERE Orders.CustomerID=Customers.CustomerID
*/		
--LEFT OUTER JOIN
Select Suppliers.SupplierID, Suppliers.CompanyName, Orders.OrderDate
FROM Suppliers
LEFT JOIN orders
	ON Suppliers.SupplierID=Orders.OrderID

--find the EmployeeID and the OrderID for all orders
--SELECT EmployeeID, OrderID
--FROM Orders
--create a report showing employee orders
SELECT Employees.EmployeeID, Employees.FirstName,
Employees.LastName, Orders.OrderID, Orders.OrderDate
FROM Employees RIGHT JOIN Orders 
	ON Employees.EmployeeID = Orders.EmployeeID
ORDER BY Orders.OrderDate

-- find customer id, contact name, orderid, orderdate
-- from orders 
-- create a report showing customer orders 
SELECT Customers.CustomerID, Customers.ContactName,
      Orders.OrderID, Orders.OrderDate
FROM Customers INNER JOIN Orders 
	ON Customers.CustomerID= Orders.CustomerID
ORDER BY Orders.OrderDate
 
/*
	Table aliases
*/
-- create report that shows employee info
-- associated with order info 
SELECT e.EmployeeID,e.FirstName,e.LastName,
o.OrderID,o.OrderDate
FROM Employees e JOIN Orders o 
	ON e.EmployeeID=o.EmployeeID
ORDER bY o.OrderDate

-- Create a report that shows order ids and 
-- the associated employee name for orders 
-- that shipped after the required date
SELECT e.FirstName,e.LastName,o.OrderId
FROM Employees e JOIN Orders o 
	ON e.EmployeeID=o.EmployeeID
WHERE o.RequiredDate < o.ShippedDate
ORDER BY e.LastName,e.FirstName
 
/*
	Create a report showing the Order ID, the name of the company that placed the order,and the first and last name of the associated employee.
	Only show orders placed after January 1, 1998 that shipped after they were required.
	Sort by Company Name.
*/
SELECT o.OrderID, c.CompanyName, e.FirstName, e.LastName
FROM Orders o
JOIN Employees e
	ON e.EmployeeID = o.EmployeeID
JOIN Customers c
	ON c.CustomerID = o.CustomerID
WHERE o.ShippedDate > o.RequiredDate AND o.OrderDate > '1998-01-01'
ORDER BY c.CompanyName;

