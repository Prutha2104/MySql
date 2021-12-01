-- Select the Database.
 
USE `DemoDB`;
 
-- Use the below drop table command to drop the existing table(if any).
 
DROP TABLE `Employee`;
 
-- Create the table Employee with new structure.
    	 
CREATE TABLE `Employee`(
    `EmpID`	    INT,
    `FirstName`	    VARCHAR(50),
    `LastName`      VARCHAR(50),
    `Salary`        NUMERIC(20,2),
    `CreatedDTTM`   DATETIME DEFAULT NOW()
);
 
-- INSERT command is used to insert data into the table. 
-- Normally when you did not specify the column list then you need to supply the 
-- values for all the columns, otherwise it leads to an error.
  
INSERT INTO `Employee`
VALUES(1, 'A', 'A', 1000, NOW() );
 
-- You need to mention the column list if you looking to provide 
-- values for specific columns. Columns for which values are not 
-- provided will take the DEFAULT value if any, otherwise NULL.
 
-- IMPORTANT  
-- NULL is not equal to zero (0) and it is not equal to empty string ('')
-- NULL could be considered as undetermined or the value is not known.
 
-- In the below command CreatedDTTM takes the default value i.e. NOW() 
-- which is the current system date time.
 
INSERT INTO `Employee`(`EmpID`, `FirstName`, `LastName`, `Salary`)
VALUES(2, 'B', 'B', 1000);
 
-- With the below insert command CreatedDTTM takes the default value i.e. NOW()
-- but LastName takes NULL as there is no default value given for LastName.
 
INSERT INTO `Employee`(`EmpID`, `FirstName`, `Salary`)
VALUES(3, 'C', 1000);
  
-- NULL could also be given as a value explicitly, here the LastName 
-- is set to NULL intensionally.
 
INSERT INTO `Employee`(`EmpID`, `FirstName`, `LastName`, `Salary`)
VALUES(4, 'D', NULL, 1000);
   
-- Display Employee information
 
SELECT * FROM `Employee`;