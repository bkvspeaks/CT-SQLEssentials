/*
	Wildcards
	% Substitute zero or more characters
	_ Substitute for a single character
	[charlist] Sets and ranges of characters to match
	[^charlist] Matches only a character NOT specified in the brackets 
	[!charlist] not in MSSQL - don't type on screen but let class know
*/
/*
	LIKE(4)
*/
SELECT * 

FROM Suppliers

WHERE Country LIKE 'USA'
	
/*
	LIKE(1)
*/
SELECT * 

FROM Suppliers

WHERE City LIKE 'London'

SELECT *

FROM Customers

WHERE City LIKE 'ber%'
	
/*
	(9)
*/
SELECT *

FROM Customers

WHERE City LIKE '%es%'
	
/*
	(1)
*/
SELECT *

FROM Customers

WHERE City LIKE '_erlin'
	
/*
	Starts with b,s,p and has any end(29)
*/
SELECT *

FROM Customers

WHERE City LIKE '[bsp]%'
-- can also use [b,s,p]

/*
	Starts with a,b,c and has any end(23)
*/
SELECT *

FROM Customers

WHERE City LIKE '[a-c]%'
	
/*
	does NOT Start with b,s,p and has any end(62)
*/
SELECT *

FROM Customers

WHERE City LIKE '[^bsp]%'

/*
	Do this another way (NOT LIKE)
*/
SELECT *

FROM Customers

WHERE City NOT LIKE '[bsp]%'

--Mini Lab Now These 2 (40)
/*  
We want all customers with a title related to Sales.
*/

	
--Mini Lab Now These 3 (17)

/*  
We want all customers with a company name that starts with t, r, or w.
*/


	
--Mini Lab Now These 4  (41)
/*  
We want all customers with a city that start with F through P.
*/


	
--Mini Lab Now These 4  (58)
/*  
We want all customers with a country that doesn't have the letters SUI in them.
*/


