use naveen;
select * from emp;
select * from em;
-- -----------------------------------------------------------------------------------------------------------------------------
-- UPDATE :- It is used to Insert the value in particular cell.
alter table em drop column Description ;
select * from em;
-- -----------------------------------------------------------------------------------------------------------------------------
# Rename the column doj to hire_date
alter table em rename column doj to Hire_date;
-- -----------------------------------------------------------------------------------------------------------------------------
# Before using the updates and delete command 
set sql_safe_updates=0;
-- -----------------------------------------------------------------------------------------------------------------------------
select * from em;
# Add value hr at the place of blank cell in department
update em set department="Hr" where department ="";
select * from em;
-- -----------------------------------------------------------------------------------------------------------------------------
# Delete all data analyst in department column
update em set department="" where department ="data analyst";
select * from em;

# Delete all extra space from emp_name
update em set emp_name = trim(emp_name) ;
select * from em;
-- ------------------------------------------------------------------------------------------------------------------------------
# Add value Data analyst at the place of blank cell in department
update em set department="Data Analyst" where department ="";
-- ------------------------------------------------------------------------------------------------------------------------------
# Write a query to add a column status
-- if salary is greater than 50k there show "High"
-- if salary is less than 50k there show "low"
select * from em;
alter table em add column Status varchar(255) after Salary;
update em set status = "High" where salary >50000;
update em set status = "Low" where status is null;
select * from em;
-- ------------------------------------------------------------------------------------------------------------------------------
# Change the department of data analyst to da where city is patna 
update em set department ="da" where department = "data analyst" and city ="patna";
-- -----------------------------------------------------------------------------------------------------------------------------
# Add a column of bouns and add random number between 1000 to 5000
alter table em  add column Bouns float after status;
update em set bouns= 1000+rand()*4000;
select * from em;
-- ----------------------------------------------------------------------------------------------------------------------------
select * from em where department= "da" order by salary ; # 63669 to 31885
update em set department = "Data Analyst" where department="da" and salary >31000;
-- ----------------------------------------------------------------------------------------------------------------------------
-- Add month name and day name year name 
select * from em;
alter table em add column Year_name varchar(255) after hire_date,add column Month_name varchar(255) after hire_date,
add column Day_name varchar(255) after hire_date;
-- --------------------------------------------------------------------------------------
alter table em drop column day_name,drop column month_name,drop column year_name;
select * from em;
-- --------------------------------------------------------------------------------------
update em set Day_name = dayname(Hire_date);
update em set Month_name = monthname(Hire_date);
update em set Year_name = year(Hire_date);
select * from em;
-- ---------------------------------------------------------------------------------------------------------------------------------
select * from em;
-- ---------------------------------------------------------------------------------------------------------------------------------
# Wild card operators
# Group by 
# Having
# Order by
# Limit 
delete from em order by `si no` desc limit 5;
select * from em;
describe em;
-- ------------------------------------------------------------------------------------------------------------------------------
