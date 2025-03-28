-- --------------------------------------------------------------------------------------------------------------------------------------
-- Text function
-- Mathematical function
-- Date and Time function
-- --------------------------------------------------------------------------------------------------------------------------------------
# How to Create a data base
# How to create a Table
-- ----------------------------------------------------------------------------------------
-- Create :- It is used to Create a Table or Database
create database Sql_db;
-- ------------------------------------------------------------------------------------------
# Drop :- Its delete database or table
Drop Database Sql_db;
-- -------------------------------------------------------------------------------------------
# Create a database Name of Brillica
create database brillica3;
use brillica3;
-- -----------------------------------------------------------------------------------------------------------------------------------
# How to create a Table
Create table Students(
				Roll_No int,
                Student_Name varchar(255),
                Marks float,
                City varchar(100)
                );
-- ---------------------------------------------------------------------------------------------------------------------------------
# How to Show the table
select * from students;
-- --------------------------------------------------------------------------------------------------------------------------------
# Insert :- It is used to add the value in rows
-- -------------------------------------------------------
Insert into students( roll_no  ,student_name,marks,city)
value(1,"Ankit",456,"Noida"),
(2,"Manish",789,"Delhi"),
(3,"Ankita",258,"Noida");
select * from students;
drop table students;
-- ----------------------------------------------------------------------------------------------------------------------------------
# Create a table name of employee and column should be 
-- Emp_id,Emp_name,Age,salary
create table emp(
			Emp_id int auto_increment primary key,
            Emp_name varchar(255),
            Age int,
            Salary int);
Insert into emp(Emp_name,Age,salary)
values("Ravi",20,30000),
("Mukesh",24,25000),
("Ankit",32,20000),
("Manish",35,26000),
("Ankita",45,20000),
("Neha",20,35000),
("Prince",26,50000),
("Aaryan",45,55000),
("Arjun",33,23000),
("Bharat",45,62000);
select * from emp;
-- --------------------------------------------------------------------------------------------------------------------------
select * from employees;
select * from marksheet;
select * from mobiles;
-- --------------------------------------------------------------------------------------------------------------------------
# Write a query to show student_name and age from marksheet table
select Students_name,age from marksheet;
alter table marksheet rename column students_name to st_name;
select * from marksheet;
-- ------------------------------------------------------------------------------------
# Convert all Student Name in Capital letter
Select upper(st_name) as Capital_letter from Marksheet;
-- --------------------------------------------------------------
# Aliyas :- Its a short Name of nick name of any Headers
-- --------------------------------------------------------------
Select upper(st_name) as Name,Age
		from marksheet;
select * from marksheet;
-- ---------------------------------------------------------------------------------------------------------------------
Select *,Round(Marks/500*100) as Percentage
from Marksheet;
-- ---------------------------------------------------------------------------------------------------------------------
# Write a query to add 5 Bonus marks in each student_marks
select Roll_number,st_name,gender,age,Address,marks+5 as Marks from marksheet;
-- ----------------------------------------------------------------------------------------------------------------------
