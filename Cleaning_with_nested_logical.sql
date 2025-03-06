use naveen;
select * from marksheet;
-- ------------------------------------------------------------------------------------------------------------------------------
# Show top two name of student whose name of length is highest
select students_name from marksheet order by length(students_name)  desc limit 2;
-- ------------------------------------------------------------------------------------------------------------------------------
# Show the name of city whose marks is maximum compare to other 
select address from marksheet order by marks desc limit 1;
-- ------------------------------------------------------------------------------------------------------------------------------
select * from emp;
-- ------------------------------------------------------------------------------------------------------------------------------
# Write a query to show the table of hr
--  department salary is less whose average salary of it 
select * from emp where trim(department) ="HR"  and salary 
 < (select avg(salary) from emp where trim(department) ="HR");
 -- ------------------------------------------------------------------------------------------------------------------------------
# Calculate the year of expreience of each employee
select name,hire_date,
concat(round((datediff(curdate(),hire_date)/365))," year") as exp from emp;
-- ------------------------------------------------------------------------------------------------------------------------------
# Write a query to show table base of maximum
-- salary of in hr and maximum salary in sales
select * from emp;
select * from emp where  
salary =(select max(salary) from emp where trim(department) ="hr")
or 
salary =(select max(salary) from emp where trim(department) ="sales")
or 
salary =(select max(salary) from emp where trim(department) ="it");
-- ------------------------------------------------------------------------------------------------------------------------------