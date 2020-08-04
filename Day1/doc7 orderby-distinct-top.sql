/* 
	ORDER BY is **ALWAYS LAST, AT THE END**
/*
	ORDER BY (91)sort results set by one or more fields
*/
SELECT *

FROM Customers

ORDER BY Country

/*
	ORDER BY (91)
	default is ascending
*/
SELECT *

FROM Customers

ORDER BY Country DESC
	
/*
	ORDER BY (91)
*/
SELECT *

FROM Customers

ORDER BY Country, ContactName
	
/*	
	ORDER BY (91)
*/
SELECT *

FROM Customers

ORDER BY Country ASC, ContactName DESC
	
/* *********************************************
	used to return only different values
*/
SELECT DISTINCT Title

FROM Employees
	
/*
	Space in name
*/
SELECT *

FROM [Order Details]
	
/*
	List titles of courtesy(4)
*/
SELECT DISTINCT TitleOfCourtesy

FROM Employees

/* ***********************************************
	Top
	Specify the number of records to return
	Not supported by all databases
	TOP (3)
*/
SELECT TOP 3 *

FROM Customers
	
/*
	TOP (46)
*/
SELECT TOP 50 PERCENT *

FROM Customers

/*
	Bottom (3)
	if not want top, use
	OFFSET & FETCH in order by subquery (ansi compiant)
*/
SELECT TOP 3 *

FROM Customers

ORDER BY ID DESC
