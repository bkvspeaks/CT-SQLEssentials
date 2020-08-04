/*
	Alias
	"but teacher, I got it to work WITHOUT TYPING AS" -at least 1 student every class
	
	**make them use it at first to get used to the concept, will remove during joins, NEED it again with views so they might as well get used to knowing this word exists**
*/

SELECT ContactName AS [Contact Person], CompanyName AS Company

FROM Customers

/* Mathematical operators
+ Addition
- Subtraction
* Multiplication
/ Division
% Modulus
*/

/*
	basic price
*/
SELECT UnitPrice, Quantity, UnitPrice * Quantity

AS TotalPrice

FROM [Order Details]

/*
	adjusted price: unitprice-discount
*/
SELECT UnitPrice, Discount, UnitPrice - Discount

AS AdjustedPrice

FROM [Order Details]

/*
	total price, can we use AdjustedPrice field? NOOOOOO! Field doesn't exist yet. 
	MAKE THEM SEE THIS ERROR.
	What can we do instead? The math that makes AdjustedPrice:
*/
SELECT UnitPrice, Quantity,Discount,UnitPrice * Quantity * (1-Discount) 

AS TotalPrice

FROM [Order Details]

ORDER BY TotalPrice -- can we use new field here? YES B/C IT ONLY EXISTS AT THE END, WHERE ORDY BY SITS

/*
	inventory on hand: price x in stock - on order
*/
SELECT UnitPrice, UnitsInStock, UnitsOnOrder, UnitPrice * UnitsInStock - UnitsOnOrder

AS TotalInventory

FROM Products


/* If the cost of freight is greater than or equal to $500,
It will now be taxed by 10%. Create a report that shows OrderId, 
Frieght cost, with this tax for all orders of $500 or more*/
SELECT OrderID, Freight, Freight * 1.1 AS FreightTotal

FROM orders

WHERE Freight>=500
/* 10% of 500 10% is same .1
500 * .1 =50 500 + 50 for a total of 550
500 * 1.1=550 */