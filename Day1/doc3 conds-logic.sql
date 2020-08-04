/*
	Conditional selections used in the WHERE clause:
	=,>,<,>=,<=,<>,BETWEEN,LIKE,IN
	
	can use symbols w/strings & dates too
*/

/*
	Examples from other tables:
	All fields from the products table:
*/
SELECT *

FROM Products
	
/*
	List products whose unit price is less than or equal to $20 (40)
*/
SELECT *

FROM Products

WHERE UnitPrice <= 20
	
/*
	List products whose reorder level is =25
*/
SELECT *

FROM Products

WHERE ReorderLevel = 25

/*
	Logic operators
	AND-All conditions are true
	OR –Any condition is true
	NOT-condition to negate (opposite must be true for the record to be included in the result
*/

/*
	Product is discontinued and have some in stock (4)
*/
SELECT *

FROM Products

WHERE Discontinued=1 AND UnitsInStock >=1
	
/*
	Have units in stock,  but none on order (56)
*/
SELECT *

FROM Products

WHERE UnitsOnOrder=0 AND UnitsInStock >=1
	
/*
	OR (3)
*/
SELECT *

FROM Suppliers

WHERE Country='Germany' OR City='Berlin'
	
/*
	OR (6)
*/
SELECT *

FROM Suppliers

WHERE Country='USA' OR Country='Uk'

/*
	AND/OR Combined(2)
*/
SELECT *

FROM Suppliers

WHERE Country='Germany' AND (City='Berlin' OR City='Frankfurt')
	
/* 
	(15)
*/
SELECT DISTINCT ContactTitle

FROM Suppliers
	
/*
	(28)
*/
SELECT * 

FROM Suppliers

WHERE ContactTitle <> 'Owner'

--Mini Lab 3 (470)
/* 
Which orders have a freight charge os less than $50? Include the freight charge in the results.
*/


	
--Mini Lab 3 (33)Don't need field selected to run
/* 
Which orders have a freight charge os less than $50? Can we omit the freight charge from the results?
*/

	
--Mini Lab 6 (15)

/* 
We are now looking for orders shipping to France and either Paris or Strasbourg.
 */


	
--Mini Lab 5 (7)
/* 
We are now looking for orders shipping to France, Freight greater than $50,  and either Paris or Strasbourg.
 */



--Mini Lab 6 (37)
/* 
We are now looking for orders that are shipped after the required date.
 */


