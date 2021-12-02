-- With out HAVING clause the below select command displays all the courses along with 
-- the selected aggregated results. 
 
-- With HAVING only those groups are selected with match the given condition 
-- i.e. AVG(`Score`) > 75  in this case.
 
-- Display the Total Score, Average Score, Minimum, Maximum score for each group 
-- whose Average score is greater than 75.
 
SELECT
    `Course`,
    SUM(`Score`) AS `Total Score`,    
    AVG(`Score`) AS `Average`,
    MIN(`Score`) AS `Minimum`,
    MAX(`Score`) AS `Maximum`
FROM `Student`
GROUP BY `Course`
HAVING AVG(`Score`) > 75;
    
 
-- Display the groups which are having 2 or more students.
 
-- COUNT(*) returns the number of records present in that group 
-- and >= 2 ensures that there are at least there are two or more records.
 
SELECT `Course` FROM `Student`
GROUP BY `Course`
HAVING COUNT(*) >= 2;