use DemoDB;
 
create table UserProfile(
   userProfileID     int         primary key auto_increment,
   firstName         varchar(50) not null,
   lastName          varchar(50) not null,
   middleName        varchar(50), 
   userName          varchar(20) unique not null,
   password          varchar(20),
   email             varchar(50) unique not null,
   isActive          bit         not null default 1,
   isLocked          bit         not null default 0,
   createdDTTM       datetime    not null default now(), 
   lastModifiedDTTM  datetime
);
 
-- Keys
--   1. userProfileID 
--   2. userName
--   3. email
-- Usually identity column is selected for primary key i.e. userProfileID
-- in this case. Identity column is the one which is not impacted by the
-- change in the business rules because it is not a business column.
-- Others such as userName and email are business columns and today 
-- they may be unique, but may not be at later point of time,
-- for example business rule might change to only email is unique. 
-- So, in order to avoid the impact, the surrogate key
-- i.e. the identity column is normally 
-- selected for primary key.
 
-- Full form is describe table, retrieves table description.
 
desc UserProfile;