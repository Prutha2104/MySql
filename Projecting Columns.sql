-- Select the Database.
 
USE `DemoDB`;
 
-- Create  
    	 
CREATE TABLE `Employee`(
    `EmpID`     INT,
    `FirstName`	VARCHAR(50),
    `LastName`  VARCHAR(50),
    `Salary`    NUMERIC(20,2)
);
 
-- Insert three sample records.
 
INSERT INTO `Employee`
VALUES (1, 'A', 'A', 1000);
 
INSERT INTO `Employee` 
VALUES (2, 'B', 'B', 2000);
 
INSERT INTO `Employee` 
VALUES (3, 'C', 'C', 2000);
   
-- Display the Employee information here * means all columns.
 
SELECT * FROM `Employee`;
 
-- Replace the * with column names in order to project specific columns.
 
-- Display FirstName and LastName all Employees 
 
SELECT `FirstName`, `LastName` FROM `Employee`;
 
-- Display the Name (FirstName concatenated with LastName) and Salary of all Employees 
 
SELECT Concat(`FirstName`, Concat(' ', `LastName`)) AS `Name`,  `Salary` FROM `Employee`;
 
-- Display Distinct Salary i.e. avoiding duplicates.
	
SELECT DISTINCT `Salary` FROM `Employee`;	
 
-- Drop the table Employee.
 
DROP TABLE `Employee`;