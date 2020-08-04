/*
BETWEEN w/numbers or letters USUALLY INCLUSIVE
TSQL & Oracle, same as
>= and <=
some engines might parse differently (2 conditions vs 1), not much performance difference unless subquery
*/
/*
	START W/SYMBOLS, THEN CHANGE TO BETWEEN 
	BETWEEN(11)
*/
SELECT * 

FROM Suppliers

WHERE SupplierId Between 10 and 20
	
/*
	Units in stock between 0 and 50 on products table
	BETWEEN(11)
*/
SELECT * 

FROM Products

WHERE UnitsInStock Between 0 and 50

--BETWEEN with numbers (29)

SELECT *

FROM Products

WHERE UnitPrice BETWEEN 10 AND 20 

--inclusive low and high, each program different
	
--BETWEEN with Letters (33)

SELECT *

FROM Products

WHERE ProductName BETWEEN 'C' AND 'M'
	
--NOT BETWEEN with Letters (44)

SELECT *

FROM Products

WHERE ProductName NOT BETWEEN 'C' AND 'M'
	
--BETWEEN with Letters (74)

SELECT *

FROM Products
--inclusive w/z, because in DICTIONARY M, then Ma, etc.
WHERE ProductName >= 'C' AND ProductName <='Mz'


/*
	MiniLabs
*/
--BETWEEN with numbers (42)

/*
We want the units in stock bewteen 10 and 50
*/



	
--BETWEEN with Letters (21)
/*
We want company names  between E and L 
(We are having a Sales rep call them and we're splitting up the account by alphabet.)
*/


