-- Retrieve all records
 
select * from Person;
 
-- Retrieve all records whose name field or attribute value exactly matches with 'A'
 
select * from Person
where name = 'A';
 
-- Retrieve all records whose name field or attribute value starts with 'A' 
-- and followed by zero or more characters.
-- Here percentage(%) means 0 or more and underscore (_) means exactly one.
 
select * from Person
where name like 'A%';
 
-- Retrieve all records whose name field or attribute value starts with 'A' 
-- and followed by exactly one character.
 
select * from Person
where name like 'A_';
 
-- Retrieve all records whose name field or attribute value contains 
-- second letter as B.
 
select * from Person
where name like '_B%';
 
-- Retrieve all records whose address is either Addr1 or Addr3.
 
select * from Person
where address = 'Addr1' or address = 'Addr3';
 
-- Retrieve all records whose address is either Addr1 or Addr3.
-- Here IN allows you to give the list of values.
 
select * from Person
where address in ('Addr1', 'Addr3');
 
-- NOT IN opposite to IN.
 
select * from Person
where address not in ('Addr1', 'Addr3');
 
-- BETWEEN start AND end 
-- Here start and end are inclusive i.e. based on the below example
-- the records whose dob is 2001-01-21 or 2001-03-21 are also included.
 
select * from Person
where dob between '2001-01-21' and '2001-03-21';
 
-- Retrieve those records whose ownAHouse field value is 1 and
-- the month part of the dob field matches with 3 i.e. March.
 
select * from Person
where ownAHouse = 1 and Month(dob) = 3;