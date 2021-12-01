USE `DemoDB`;
 
drop table Person;
 
create table Person (
   name      char(50),
   address   char(200),
   dob       date,
   ownAHouse bit default 0
);
 
insert into Person values('A','Addr1','2001-01-21', 1);
insert into Person values('B','Addr2','2001-02-21', 0);
insert into Person values('AB','Addr1','2001-03-21', 1);
insert into Person values('AC','Addr3','2001-04-21', 0);
insert into Person(name, address) values('D','Addr2');
 
select * from Person;
 
-- Required for MySQL when the ID column is not used 
-- in the where clause during update. 
 
set SQL_SAFE_UPDATES = 0;
 
-- Updates all the records and sets the ownAHouse field value to 1.
 
update Person set ownAHouse = 1;
 
-- Updates only those records whose name is 'A' and sets the address field 
-- value to Addr99.
 
update Person set address = 'Addr99'
where name = 'A';
 
-- Doesn't update any record because NULL values should be compared using 
-- IS operator, = operator does not work here.
 
update Person set dob = '2001-05-21'
where dob = null;
 
-- Updates the dob field value to the given value where the field value
-- is null.
 
update Person set dob = '2001-05-21'
where dob is null;
 
 
-- deletes those records whose name is AB
delete from Person
where name = 'AB';
 
-- truncate the entire table Person.
 
truncate table Person;