-- Inner join - Retrieves only matching Employee and Dept records
 
SELECT * FROM `Employee` as e
INNER JOIN `Dept` as d ON (e.DeptID = d.DeptID);
 
-- Outer Join
 
-- 1. Left outer Join
-- Retrieves all employees irrespective of whether they have a matching 
-- department record or not.
 
SELECT * FROM `Employee` as e
LEFT JOIN `Dept` as d ON (e.DeptID = d.DeptID);
 
 
-- 2. Right outer Join
-- Retrieves all department records irrespective of whether they have a matching 
-- department record or not.
 
SELECT * FROM `Employee` as e
RIGHT JOIN `Dept` as d ON (e.DeptID = d.DeptID);
 
-- 3. Full outer Join
	
-- Below query is valid in MS Sql Server; but not in MySql
-- SELECT * FROM Employee as e
-- FULL JOIN Dept as d ON (e.DeptID = d.DeptID);
        
-- Full Join Simulation in MySQL
    
SELECT * FROM `Employee` as e
LEFT JOIN `Dept` as d ON (e.DeptID = d.DeptID)
	
UNION
 
SELECT * FROM `Employee` as e
RIGHT JOIN `Dept` as d ON (e.DeptID = d.DeptID);