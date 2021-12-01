USE `DemoDB`;
 
-- Tables 
 
CREATE TABLE `Course`(
    `CourseID` INT PRIMARY KEY AUTO_INCREMENT,
    `Name` VARCHAR(50) NOT NULL,
    `Fee` NUMERIC(10, 2) NOT NULL
); 
 
CREATE TABLE `Student1`(
    `StudentID` INT PRIMARY KEY AUTO_INCREMENT,
    `FirstName` VARCHAR(50) NOT NULL,
    `LastName`  VARCHAR(50) NOT NULL
); 
 
-- A junction table to capture many-to-many relation between  
-- Course and Student. 
 
CREATE TABLE `CourseEnrollments`(
    `CourseID` INT NOT NULL ,
    `StudentID` INT NOT NULL,
     CONSTRAINT fk_courseid FOREIGN KEY(`CourseID`) REFERENCES `Course`(`CourseID`),
     CONSTRAINT fk_studentid FOREIGN KEY(`StudentID`) REFERENCES `Student1`(`StudentID`)
);
 
-- Sample insertions
 
INSERT INTO `Course`(`Name`, `Fee`)
VALUES('SQL',30);
 
INSERT INTO `Course`(`Name`,`Fee`)
VALUES('DS', 40);
 
INSERT INTO `Student1`(`FirstName`,`LastName`)
VALUES('a','a');
 
INSERT INTO `Student1`(`FirstName`,`LastName`)
VALUES('b','b');
 
 
INSERT INTO `CourseEnrollments`
VALUES(1,1);
 
INSERT INTO `CourseEnrollments`
VALUES(1,2);
 
INSERT INTO `CourseEnrollments`
VALUES(2,1);
 
-- Query
 
SELECT * FROM `Student1`;
SELECT * FROM `Course`;
SELECT * FROM `CourseEnrollments`;
 
-- Drop CourseEnrollments before dropping Course and Student. 
 
-- DROP TABLE `CourseEnrollments`;
-- DROP TABLE `Course`;
-- DROP TABLE `Student1`;