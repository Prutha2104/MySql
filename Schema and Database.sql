-- Create a new database with name DemoDB and with the character set 
-- utf8 which stands for unicode text format 8 which is widely used for
-- supporting international character set.
 
CREATE DATABASE `DemoDB` DEFAULT CHARACTER SET `utf8` ;
 
-- USE command will select the Database.
 
USE `DemoDB`;
 
-- Create table to create the table in the database.
    	 
CREATE TABLE `Employee`(
    `EmpID`  	    INT,
    `FirstName`	    VARCHAR(50),
    `LastName`	    VARCHAR(50),
    `Salary`	    NUMERIC(20,2)
);
 
 
-- Insert command to inserting data into the table.
 
INSERT INTO `Employee`
VALUES (1, 'A', 'A', 1000);
 
INSERT INTO `Employee` 
VALUES (2, 'B', 'B', 2000);
   
-- Select Command or Query 
-- used to retrieve the information from the table or relation.
 
SELECT * FROM `Employee`;
 
-- Drop command to drop the table. 
 
DROP TABLE `Employee`;