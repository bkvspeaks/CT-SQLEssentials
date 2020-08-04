/*
	instead of using a bunch of or's, use these
*/	
/*
	IN(3)
*/
SELECT * 

FROM Suppliers

WHERE City IN ('London','Ann Arbor','Frankfurt')
	
/*
	IN(5)
*/
SELECT *

FROM Customers

WHERE City IN ('Cork','Graz','Portland','Walla Walla')
	
/*
	IN(86)
*/
SELECT *

FROM Customers

WHERE City NOT IN ('Cork','Graz','Portland','Walla Walla')
	
--Mini Lab Now These 1 (9)
/*  
We want the Customers that are in London, Paris and Seattle.
*/


