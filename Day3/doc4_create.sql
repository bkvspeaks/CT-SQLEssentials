/* CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
	columnName datatype FOREIGN KEY REFERENCES Table(PK_Field),
   ....
   
   Constraint = rules for data 
   Ex: NOT NULL, Primary Key, Foriegn Key, Unique, Default(0), Index, Identity 

   Make a list: CHECK constraint
   colName datatype CHECK(colName IN('option1','option2','option3'))
);  */

CREATE TABLE Animals (
    AnimalID int PRIMARY KEY IDENTITY,
    AnimalName varchar(25) NOT NULL,
    Species varchar(25) DEFAULT('Cat'),
    DOB date,
    City varchar(25),
	TreatsPerDay int
);

-- then select all from new table (empty)

CREATE TABLE FamousPeople (
    PersonID int PRIMARY KEY,
    FirstName varchar(25),
    LastName varchar(25),
    Country varchar(25),
	Movies varchar(25),
	Sport varchar(25),
	TVShows varchar(25)
);