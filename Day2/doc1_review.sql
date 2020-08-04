/* Day 2 AM Review */

/* 
	select everything in the order details table
*/
SELECT *
FROM [Order Details]

/*
	select the employee first & last names, but
	only for employees who live in Seattle
	2 rows
*/
SELECT FirstName, LastName
FROM Employees
WHERE City = 'Seattle'

/*
	select the employee first & last names, but
	only for employees who live in Seattle and
	SORT BY LAST NAME
	2 rows
*/
SELECT FirstName, LastName
FROM Employees
WHERE City = 'Seattle'
ORDER BY LastName

/*
	Create supplier call list with Company Name, Contact Name,
	phone # and city. Include all suppliers in both USA and Canada.
	6 rows
*/
SELECT CompanyName, ContactName, Phone, City
FROM Suppliers
WHERE Country='USA' OR Country='Canada'

/*
	Show list of product names & their prices for
	all products with a space anywhere in the product name
	61 rows
*/
SELECT ProductName, UnitPrice
FROM Products
WHERE ProductName LIKE '% %'

/*
	Show list of product names & their prices for
	all products with a unit price between 50 and 175
	6 rows
*/
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice BETWEEN 50 AND 175

/*
	List of product names, unit prices, in stock,
	and price * stock to create inventory field
	but only for products that aren't discontinued
	and don't have spaces in the product name
	sort by new inventory field
	16 rows
*/
SELECT ProductName, UnitPrice, UnitsInStock, 
	UnitPrice * UnitsInStock AS Inventory
FROM Products
WHERE Discontinued=0 AND ProductName NOT LIKE '% %'
ORDER BY Inventory