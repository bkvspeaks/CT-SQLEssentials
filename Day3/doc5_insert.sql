/* insert */
-- insert & specify columns
INSERT INTO Animals (AnimalName, Species, DOB, City, TreatsPerDay)
VALUES ('Chubs', 'Boston Terrier', '6/5/2013', 'Tallahassee', 10)
	
 -- insert a row of data
INSERT INTO Animals
VALUES ('Bandit', 'Boston Terrier', '9/9/2007', 'Tallahassee', 8),
	('Liono', DEFAULT, NULL, 'New Thundera', 2)

/* 
insert w/select query
don't need a table made, will make a table

SELECT Column1, Column2, Column3,
INTO Table2
FROM Table1 */

SELECT *
INTO Animals_copy
FROM Animals

/* minilab

insert a couple rows of info into famousPeople table */