-- DATA DEFINITION LANGUAGE
-- This is the sublanmguage responsible for defining how Data are structured in database in SQL .The commands are used to build ,amend or remove SQL TABLES .
-- examples are CREATE TABLE,ALTER TABLE OR MODIFY TABLE,TRUNCATE TABLE AND DROP TABLE
CREATE DATABASE united_nationz;
USE united_nationz;
CREATE TABLE united_nationz.Access_2_Basic_Services(
	Region varchar(32),
    Sub_region varchar(25),
    Country_name integer NOT NULL,
    Time_period integer NOT NULL,
    Pct_mananged_drinking_water_services numeric(5,2),
    Pct_mananged_sanitation_services numeric(5,2),
    Est_population_in_millions numeric(11,6),
    Est_gdp_in_billions numeric(8,2),
    Land_area numeric(10,2),
    Pct_unemployment numeric(5,2)
    
);

-- when creating a table in SQL ,we can apply various constaints to columns to enforce data intehrity and define rules for the values stored in those columns.ie
-- NOT NULL{CANNOT CONTAIN NULL VALUES}
-- UNIQUE(this constraint ensures that the values in a column (or a combination of columns) are unique across the table .it prevents duplicates values form being inserted in the column(s).
--  PRIMARY KEY (it uniquely identifies each row in a column ,combining the NOT NULL,AND UNIQUE constraints.The primary column values are unique and cannot be null.
-- FOREIGN KEY ===this establishes a relationship between two tables based on a column .it ensures that the values in athe primary key column in the first table corresponds to the value in the foreign key column in the second table.

-- ALTER TABLE:USED to modify the structure od an existing database objkect ,such adding,modifying ,or deleting columns form a table.

-- add column Gini_index with data type float
ALTER TABLE access_2_basic_services
ADD Gini_index FLOAT;

-- to rename a column
ALTER TABLE access_2_basic_services
RENAME COLUMN Region to Continent;

-- AN ALTERNATIVE FOR THAT IS :
ALTER TABLE access_2_basic_services
CHANGE  Continent Region VARCHAR(255);

-- TO CHANGE DATA TYPE OF A COLUMN.
ALTER TABLE access_2_basic_services
MODIFY COLUMN Land_area integer;

-- to delete a column
ALTER TABLE access_2_basic_services
DROP COLUMN Gini_index;

-- TRUNCATE TABLE==Used to remove data from a table ,effictivelt=y resetting it to an empty state.
-- Deletes all rows in a table but keeps the table structure.
-- Resets auto-increment counters.

TRUNCATE TABLE access_2_basic_services;

-- As soon as the TRUNCATE TABLE statement is executed, the data are permanently wiped from the table and cannot be recovered; hence, it is important to use this command with caution. 
-- Appropriate backups of the data are required.

-- DROP TABLE and DROP DATABASE
-- The DROP statements are used to remove entire database objects, such as tables or schemas, from the database.
DROP TABLE access_2_basic_services;
DROP DATABASE united_nationz;
-- it is important to exercise caution when using the DROP TABLE or DROP DATABASE statements, as they permanently 
-- delete the table or database, and they cannot be recovered.
