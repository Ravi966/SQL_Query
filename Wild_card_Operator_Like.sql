use brillica3;
# *********************************************************************************************************************************************************************
-- Where
-- Operators
-- Data Type
-- Functions
-- Order by
-- Limit
-- Aggergate function
-- group by 
-- Subquery
-- Having
-- case or if
-- DML and DDL
-- View
-- All Done
-- -----------------------------------------------------------------------------------------------------------------------------------
-- Remaning 
-- -----------------------------------------------------------------------------------------------------------------------------------
-- Wild card,CTE ,Union ,Union all,Joins,Contrant,Index,Windows Fucntion
-- Extra -- Store Procedures
-- ------------------------------------------------------------------------------------------------------------------------------------
-- *****************************************************************************************************************************************************************
# Wild Card Operators
-- Like :- It is a wild card operators which is used to filter the data by pattern and Return operators
-- Not like :- Same as Like operators 
-- Condition 				Pattern
-- ----------			--------------------
-- Startswith 		-		"A%"
-- Endswith			-		"%A"
-- Contain			-		"%A%"
-- Length			-		"___"
-- Start&Endwith	-		"A%A"
-- -----------------------------------------------------------------------------------------------------------------------------------
Select * from marksheet;
-- -----------------------------------------------------------------------------------------------------------------------------------
# Write a query to show the name of students whose name startswith 'a'
select * from marksheet where st_name like  "a%";
-- -----------------------------------------------------------------------------------------------------------------------------------
# Show the name of studnets whose name contain 'v'
select * from marksheet where st_name like "%v%";
-- -----------------------------------------------------------------------------------------------------------------------------------
# Show the name of studnets whsoe name endswith 'r' and startswith 'p'
select * from marksheet where st_name like "p%r";
-- -----------------------------------------------------------------------------------------------------------------------------------
# Show the name of students whose address length is 5 
select * from marksheet where address like "_____";
select * from marksheet where  length(address)=5;
-- -----------------------------------------------------------------------------------------------------------------------------------
# Show the name of students whsoe name of second alphabet is 'r
select * from marksheet where st_name like "_r%";
-- -----------------------------------------------------------------------------------------------------------------------------------\
# Show the name of studnets whose last of second alphabet is 'm'
select * from marksheet where st_name like "%r_";
-- -----------------------------------------------------------------------------------------------------------------------------------
select * from covid;
-- -----------------------------------------------------------------------------------------------------------------------------------
# Show the name of country whose country name of length is 5 and startswith 'i'
select country from covid where country like "_____" and country like "i%";
-- -----------------------------------------------------------------------------------------------------------------------------------
# Show the name of country hwose name startswith i or r
select country from covid where country like "r%" or country like "i%";
-- -----------------------------------------------------------------------------------------------------------------------------------
# Show the name of country whose name of contain 'z'
select country from covid where country like "%z%";
-- -----------------------------------------------------------------------------------------------------------------------------------
# Show the name of country whsoe name contain two times 'a'
select distinct(country) as Country from covid where country like "A%A%" and country not like "A%A%A%";
-- (Or)
select distinct(country) as Country from covid where length(country) - length(replace(lower(country),"a",""))=2;
-- -----------------------------------------------------------------------------------------------------------------------------------









