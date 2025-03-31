use brillica3;
-- ******************************************************************************************************************************************************************************
-- Where
-- Limit
-- Order by
-- Group by :- The group by statment are used group the same category of rows with the help of aggregate function 
select * from emp;
-- -------------------------------------------------------------------------------------
# Show the maximum salary in hr department 
select max(salary) as Max_salary from emp where department = "Hr";
-- -------------------------------------------------------------------------------------
# Write a query to show the maximum salary in each department
select department,max(salary)as Max_salary from emp group by department;
-- -------------------------------------------------------------------------------------
# Count total number of emp in each department 
select department,count(*) as Total_emp from emp group by department;
-- -------------------------------------------------------------------------------------
# Show the average salary of emp of each department
select department,avg(salary) as Average_salary from emp group by department;
-- -------------------------------------------------------------------------------------
# show the sum of salary and maximum age of emp by each department 
select department,sum(salary) as Total_Salary,max(age) as Max_age from emp group by department;
-- -------------------------------------------------------------------------------------
# Show the mimumum age of employee in each city
select city,min(age) as Min_age from emp group by city;
-- -------------------------------------------------------------------------------------
# Marksheet
-- -------------------------------------------------------------------------------------
select * from marksheet;
-- -------------------------------------------------------------------------------------
# Show the maximum marks of students by each address
select address,max(marks) as Max_marks from marksheet group by address;
-- -------------------------------------------------------------------------------------
# Show the average marks of students by his gender
select gender,avg(marks) as Average_marks from marksheet group by gender;
-- -------------------------------------------------------------------------------------
# Count total students in each address
select address,count(*) as Total_students from marksheet group by address;
-- -------------------------------------------------------------------------------------
# Show The average,minimum and maximum marks of students by each city
select address,avg(marks) as Average_Marks,Max(marks) as Max_marks,min(marks) as Min_marks from marksheet group by address;
-- -------------------------------------------------------------------------------------
# Show the Maximum age of emp by his gender and address
select address,gender ,max(age) as Max_age from marksheet group by address,gender;
-- -------------------------------------------------------------------------------------
select * from emp;
-- ****************************************************************************************
# Having: - Having caluse are used to filter the data from grouped table and it will 
-- perfrom after group by
-- ****************************************************************************************
# Show the maximum age of employee by hhis gender and address
select city,max(age) as Max_age from emp group by city having Max_age <=32;
select * from emp;
-- -------------------------------------------------------------------------------------
select * from covid;
-- -------------------------------------------------------------------------------------
set sql_safe_updates=0;
update covid set confirmed = confirmed+`new cases`;
select * from covid;
-- -------------------------------------------------------------------------------------
alter table covid drop column `new cases`;
select * from covid;
-- -------------------------------------------------------------------------------------
update covid set Recovered = Recovered+`new Recovered`;
select * from covid;
alter table covid drop column `new Recovered`;
update covid set Deaths = Deaths+`new Deaths`;
alter table covid drop column `new Deaths`;
select * from covid;
-- -------------------------------------------------------------------------------------
#  Distinct :- Its show the unique valuein a column
-- -------------------------------------------------------------------------------------
update covid set country = replace(country,"*","") ;
select * from covid;
-- -------------------------------------------------------------------------------------
# Show the total deaths by each country
select country,sum(deaths) as Total_Deaths from covid group by country;
-- -------------------------------------------------------------------------------------
# show the total deaths by country where deaths is less than 500
select country,sum(deaths) as Total_deaths from covid group by country having Total_deaths <=500;
-- -------------------------------------------------------------------------------------

