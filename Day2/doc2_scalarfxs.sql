/* ESC key for autocomplete in fx!! But you lose fx helper 

AFTER EVERY EXAMPLE/LAB: ask how many rows returned? THIS WILL BE IMPORTANT LATER

*/
-- ABS - if time & class is moving fast
SELECT ABS(UnitsInStock-200) AS ExampleField 
-- use 50 instead - get positive values for some - compare between this and NOT using ABS

FROM Products

-- ROUND - changes value, NOT formatting!
SELECT Freight, ROUND(Freight,1) AS RoundFreight

FROM Orders

SELECT Freight, ROUND(Freight*1.25,2) AS RoundFreight

FROM Orders

/* string scalar functions */

-- UPPER(91)
SELECT UPPER(ContactName) AS Customer, City

FROM Customers
	
-- LOWER(91)
SELECT LOWER(ContactName) AS Customer, City

FROM Customers

-- SUSBTRING(field, start, how many)
SELECT SUBSTRING(City,1,4) AS ShortCity 

FROM Customers
	
-- SUBSTRING (Tech) - skip if low on time 
SELECT SUBSTRING('TechOnTheNet.COM',1,4) 

-- MINI LAB: get first 3 letters of employee last name
SELECT SUBSTRING(LastName,1,3) AS ShortLastName
FROM Employees

	
-- LEN is Length (# of characters) (91)
-- skip if low on time 
SELECT ContactName, LEN(Address) As LengthOfAddress

FROM Customers
	
/*Concatenation fancy word for stringing together 
different words or characters*/
-- do w/o space at first, does + put in space for you?
SELECT FirstName + ' ' + Lastname As FullName

FROM Employees

--MINI LAB: Lastname, Firstname
/* 
We want the output to be Lastname, Firstname.
*/



--MINI LAB: Name with extension
/* 
We want the output to be Lastname, Firstname, with the extension added as well (for an employee emergency contact list).
*/



/* NAME WITH REGION ALWAYS DO THIS TOGETHER OR AS LAB (ask what's happening, compare w/CONCAT later */
SELECT LastName +', '+ FirstName + ', ' + Region

FROM Employees

-- concat full name
SELECT CONCAT(Firstname,' ',LastName) As FullName

FROM Employees

-- MINI LAB: using concat want LastName, FirstName, Region compare results to Region w/+
SELECT CONCAT(LastName, ', ', FirstName, ', ', Region) AS MoreStuff

FROM Employees

/* if they don't like the dangling comma on empty regions, can concat name, + region & its comma, then concat all of that */
SELECT CONCAT(LastName, ', ', FirstName, (', '+Region)) AS PrettierWay

FROM Employees

-- DO TOGETHER: show a new field that is only the employee first & last name initials
-- what do we want at the end? start w/that step/fx 
SELECT CONCAT(SUBSTRING(FirstName,1,1),SUBSTRING(LastName,1,1)) AS NameInitials

FROM Employees
-- introduces the idea of nesting, will come back up periodically throughout class 
-- counting parenthesis trick: start at 0, each opening +1, each closing -1, should always end at 0