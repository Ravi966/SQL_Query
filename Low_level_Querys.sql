use brillica3;
select * from marksheet;
select * from employees;
-- ----------------------------------------------------------------------------------------------------------
# Write a query to show the month Name,day name ,year from doj column in employee
select doj,dayname(doj) as Day_name,monthname(doj) as Month_name,year(doj) as Year 
from employees;
-- -----------------------------------------------------------------------------------------
# Show the table of employees with bonus 20% of salary
select *,salary*0.2 as Bonus from employees;
-- -----------------------------------------------------------------------------------------
# Write a query to show the emp_name,
-- length of emp_name from employees table without space 
select trim(emp_name) as Emp_name,length(trim(emp_name)) as Emp_name_Length
		from employees;
-- ------------------------------------------------------------------------------------------
# Write a query to show the emp_name and the position of "A" 
-- from emp_name
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set sql_safe_updates=0;
update employees set emp_name = Trim(emp_name);
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select emp_name,instr(emp_name,"a") as Position_A from employees;
-- ------------------------------------------------------------------------------------------------------
# Write a query to combine the columns Emp_name,Age,Salary from employees table 
select concat_ws(", ",Emp_name,Age,Salary) as Info from employees;
-- ------------------------------------------------------------------------------------------------------
select * from employees;
# Extract the first_Name and Last_Name 
select left(emp_name,instr(emp_name," ")) as First_name from employees;
-- -------------------------------------------------------------------------------------------------------------------------------------
# Clause
-- ------------------------------------------------------------------
# Where :- It is used to filter the data according to condition
-- ------------------------------------------------------------------
# Write a query to show the table of employee who live in patna
select * from employees where city ="patna";
-- ------------------------------------------------------------------
# Write a query to show the employee whose department is data analyst
select * from employees where department ="Data analyst";
-- ------------------------------------------------------------------
# Write a query to show the employee whose age is 22
select * from employees where age =22;
-- ------------------------------------------------------------------
# Write a query to show table whose salary is greater than 60k
select * from employees where salary >60000;
-- ------------------------------------------------------------------
# Write a query to show table whose department is not given
select * from employees where department ="";
-- ------------------------------------------------------------------
# Write a query to show table whose name startswith "P"
select * from employees where left(emp_name,1)="p";
-- ------------------------------------------------------------------
# write a query to show the name of emp whose endswith "A"
select emp_name from employees where right(emp_name,1)="a"; 
-- ------------------------------------------------------------------
-- ***********************************************************************************************
# Comperision Operators
-- > Greater Than ,< Less Than , = Equal to ,>= Greater Than Equal to ,<= Less Than Equal to  
-- ,<> Not Equal to 
-- ***********************************************************************************************
-- ------------------------------------------------------------------
# Filter the table whose salary is less than 25k
select * from employees where salary <25000;
-- ------------------------------------------------------------------
# Filter the table whose age is greater than 60
select * from employees where age >60;
-- ------------------------------------------------------------------
# Filter the table whose department is given 
select * from employees where department <>"";
-- ------------------------------------------------------------------
-- **************************************************************************************************
# Logical Operators :- 
-- And :- It show the data when all condition is true
-- Or :- It show the data when at least one condition is true
-- Between :- Its show the data by condition applied on Numerical column with respect to two number
-- **************************************************************************************************
-- -----------------------------------------------------------------------------------
# Write a query to show the table whose department is data analyst and city is patna
select * from employees where department ="Data Analyst" and city ="Patna";
-- -----------------------------------------------------------------------------------
# Filter the table whose department is Data Analyst or Data Scientist
select * from employees 
where department ="Data Analyst" or Department ="Data Scientist";
-- -----------------------------------------------------------------------------------
# Filter the table whose department is Blank and city is Noida
Select * from employees
where department ="" and city ="Noida";
-- -----------------------------------------------------------------------------------
# Filter the table whose age is less than 20 and salary greater than 40k
select * from employees
where age <20 and salary >40000;
-- -----------------------------------------------------------------------------------
# Filter the table whose city is jaipur and age is less than 23
select * from employees
where city ="Jaipur" and age <23;
-- -----------------------------------------------------------------------------------
# Filter the table whose salary is between 22k to 25k
select * from employees
where salary between 22000 and 25000;
-- -----------------------------------------------------------------------------------
# Filter the table whose age is between 18 to 20
select * from employees
where age between 18 and 20;
-- -----------------------------------------------------------------------------------
# Filter the table who lives in new delhi and his department is data scientist or data analyst
select * from employees 
where city ="New Delhi" and (department ="Data Scientist" or department ="Data Analyst");
-- -----------------------------------------------------------------------------------
# Filter the table who joined in December
select * from employees where month(doj)= 12;
-- -----------------------------------------------------------------------------------
# Filter the Table who joined in 2023
select * from employees where year(doj)=2023;
-- -----------------------------------------------------------------------------------