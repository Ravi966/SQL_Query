use brillica3;
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- if age is greater than 40 then show "exp" 
-- if age is less than 30 then show "Fresher"
-- else show "mid"
select * from employees;
Alter table employees add column status varchar(255);
set sql_safe_updates=0;
update employees set status = "Exp" where age >=40;
select * from employees where age >=40;
update employees set status = "Fresher" where age <40;
select * from employees where age <40;
select * from employees;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from emp;
-- Order by : - It is used to arrange the table in ascending or Descending 
-- Limit	:-  It is used to keep the or extract the rows from table by user
-- Group by :- The group by statment are used group the same category of rows with the help of aggregate function 
-- -----------------------------------------------------------------------------
# Arrange the table in ascending order base of age
select * from emp order by age ;
-- ------------------------------------------------------------------------------
# Arrange the table base of department  of first alphabet 
-- if first will tie then arrange base of age 
select * from emp order by left(department,1) ,age;
-- ------------------------------------------------------------------------------
# Arrange the table base of length of employee in descending order 
select * from emp order by length(emp_name) desc;
-- ------------------------------------------------------------------------------
Select * from emp order by age desc, salary desc;
-- ------------------------------------------------------------------------------
-- #####################################################################################################################################################################
-- Limit	:- It is used to keep the or extract the rows from table by user
-- **********************************************************************************
-- Show the first five rows from table
select * from emp limit 5;
-- ---------------------------------------------------------------------------------------------------
# Show the last five rows from table
select * from emp order by emp_id desc limit 5 ;
-- ---------------------------------------------------------------------------------------------------
# Show the top 2 emp in sales department whose salary is maximum
select * from emp where department = "Sales" order by salary desc limit 2;
# ---------------------------------------------------------------------------------------------------
# Show the top 3 emp table whose salary is maximum
select * from emp order by salary desc limit 3;
# ---------------------------------------------------------------------------------------------------
# show the bottom 4 emp table whsoe salary is maximum
select * from emp order by salary desc limit 4;
# ---------------------------------------------------------------------------------------------------
# Show the top 1 emp table whose name of length is highest 
select * from emp order by length(trim(emp_name)) desc limit 1 ;
# ---------------------------------------------------------------------------------------------------
# Show the top 2 table who joined in last of year
select * from emp order by year(doj) desc limit 2;
# ---------------------------------------------------------------------------------------------------
# Write a query to show top 3 details from table 
-- base of salary whsoe department is sales or it
-- and age is less than 30 
select * from emp where department in ("sales","it") and age <30 order by salary desc limit 3;
# ---------------------------------------------------------------------------------------------------
# Write a query to show the table whsoe salary is minimum in it department
select * from emp order by salary limit 1;
# ---------------------------------------------------------------------------------------------------
# Show the table whose age is maximum and emp_id should be even
select * from emp where mod(emp_id,2)=0 order by age desc limit 1;
# ---------------------------------------------------------------------------------------------------
select * from emp limit 4,6;
# ---------------------------------------------------------------------------------------------------
use brillica3;
select * from t1;
show tables;