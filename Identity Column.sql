use `DemoDB`;
 
create table `Course` (
  `id`   int  unique auto_increment,
  `name` varchar(100)
);
 
-- In the below insert commands we are providing value only for 
-- the name field. Because id filed is selected for auto_increment
-- its value is auto incremented, normally it starts with 1
-- and incremented by 1 for each new insert.
 
insert into `Course`(`name`) values('A');
insert into `Course`(`name`) values('B');
 
select * from `Course`;
 
-- Adjusting the auto_increment to the desired value.
alter table `Course` auto_increment = 100;