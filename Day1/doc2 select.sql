/*
	SELECT ColumnName, ColumnName
	FROM   TableName
*/

--This is a comment
--Most basic SELECT statement
SELECT *

FROM Employees

/*
	Give me all of the table fields, from the employee table
	select multiple fields
*/
SELECT LastName,FirstName,TitleOfCourtesy

FROM Employees

/*
	Give me these fields, from the employee table
	change the order
*/
SELECT TitleOfCourtesy,FirstName,LastName

FROM Employees

/*
	Give me these fields, from the employee table
	add WHERE records matching this field entry
*/
SELECT TitleOfCourtesy,FirstName,LastName

FROM Employees

WHERE Title='Sales Representative'
--single quotes for literal value (in red)
--Went from 9 records to 6 go back to * in select or add title

/*

*/
SELECT TitleOfCourtesy,FirstName,LastName,Title

FROM Employees

WHERE Title='Sales Representative'
	
/*

*/
SELECT TitleOfCourtesy,FirstName,LastName,Title

FROM Employees

WHERE TitleOfCourtesy='Mr.'
	
/*
	Which employees reside in London
*/
SELECT *

FROM Employees

WHERE City='London'

/*
	Mini Lab 1 (33)
*/
SELECT OrderID,OrderDate,ShippedDate,RequiredDate,
ShipCity,ShipCountry,Freight

FROM Orders

WHERE ShipCity ='London'

	
--Mini Lab 2 (33)
/* 
We want the order date, shipped date, required date, the city and country, as well as the freight
from the Orders table, but only for Brazil
*/

