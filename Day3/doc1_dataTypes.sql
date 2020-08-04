/* data types */

-- look at existing data types:
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS;

-- cast (try a few diff types: int, nvarchar, nvarchar(4), money, etc) 
SELECT CAST(BirthDate AS INT)
FROM Employees

-- nvarchar = Variable-length Unicode string data
SELECT CAST(EmployeeID AS nvarchar)
FROM Employees

-- ntext = Variable-length Unicode data, going away
SELECT CAST(LastName AS ntext)
FROM Employees

/* ***** Common Date Functions **********************
	Interval is the actual date/time information you want to retrieve
*/
-- employyees hired after 1992
SELECT *
FROM Employees
WHERE HireDate > '19921231'
-- can be any format '//', '--'
	
-- Employee birthdate before 1960 (5)
SELECT *
FROM Employees
WHERE BirthDate < '19600101'
	
-- BETWEEN with Dates (360)
SELECT *
FROM Orders
WHERE OrderDate BETWEEN  '19971027' AND '19980506'
	
--keep queries simple by not having time component with dates
SELECT *
FROM Orders
WHERE RequiredDate = '19971124'

/* date format scalar functions */

-- FORMAT
SELECT FORMAT(BirthDate,'MM/dd/yyyy') AS HappyBirthDay, FirstNAme
FROM Employees

-- DATEPART
SELECT DATEPART(YEAR, BirthDate)
FROM Employees

-- Find the birth month for each employee
SELECT FirstName,LastName, DATENAME(month,BirthDate) AS BirthMonth,
DATEPART(month,BirthDate) AS MonthNumber
FROM Employees
Order By DATEPART(month,BirthDate)

-- DATEADD(interval, amount, date)
SELECT DATEADD(month, 3, '20170102')

-- Find the hiring age of each employee: DATEDIFF(interval,Date1,Date2)
SELECT LastName, HireDate, BirthDate,
DATEDIFF(YEAR,BirthDate,HireDate) AS HireAge
FROM Employees

-- GETDATE()
SELECT GETDATE() AS Date

-- get employee age-> NESTING
SELECT LastName, BirthDate, DATEDIFF(YEAR, BirthDate, GETDATE())
AS Age
FROM Employees

/* MiniLabs */
-- showing shipped date, required date, and difference
-- how many elapsed days between orders shippeddate & required date?



-- what is the month for each order?
SELECT DATEPART(month, OrderDate)
FROM Orders

/* ******* NULL ********************************************************
NULL = missing data, often default for empty
IF a field is optional, can insert/update record w/this column empty. 
Null values are treated differently than other values
NULL =/= 0(zero), NULL =/= 'NULL'
CANNOT use comparison operaters such as =,<,>
*/

--Mini Lab 4 (33)
/*  
How many orders DIDN'T get shipped out?
*/

	
-- (60)
SELECT *
FROM Customers
WHERE Region IS NULL
	
-- (31)
SELECT *
FROM Customers
WHERE Region IS NOT NULL
	
SELECT *
FROM Orders
--WHERE Region IS NOT NULL

SELECT *
FROM Suppliers
--WHERE Region IS NOT NULL