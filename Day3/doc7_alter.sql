/* alter */

-- add columns
ALTER TABLE Animals
ADD Date_Adopted varchar(255);

ALTER TABLE Animals
ADD Fav_Food varchar(255),
	LicenseNumber int;

-- various ways to add columns w/constraints,
-- this is simplest for learning
ALTER TABLE FamousPeople
ADD Pets int FOREIGN KEY REFERENCES Animals(AnimalID) 

-- drop column
ALTER TABLE Animals
DROP COLUMN Fav_Food; 

-- drop fk, need to drop constraint first
ALTER TABLE FamousPeople 
DROP CONSTRAINT FK_FamousPeop_Pets_code -- from oe
-- r click constraint, rename, copy name

ALTER TABLE FamousPeople 
DROP COLUMN Pets

-- alter column (modify column in other flavors)
ALTER TABLE Animals
ALTER COLUMN Date_Adopted date;


/* minilab FamousPeople 
add a couple of columns 
change one, remove another

ideas: age, awards
*/