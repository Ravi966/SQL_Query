use brillica3;
-- ****************************************************************************************************************************************************************************
-- CTE: - Common Table Expression
-- CTE :- It is used to slove the complex query in easy manner.
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 															Common Table Expression	
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- A Common table expression (CTE) is a temporary named result set that you can refer to within a sql Qery.
-- This helps you break down complex queries into smaller, more manageble parts.
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from marksheet;
-- ------------------------------------------------------------------------------------------------------------------------
# Show the maximum marks of students by each city;
select address,max(marks) as Max_marks from marksheet group by address having max_marks<450;
-- (OR) 
With CTE_x as (
		select address,max(marks) as Max_marks from marksheet group by address)
select * from CTE_x where Max_marks<450;
-- ---------------------------------------------------------------------------------------------------------------------------
# Write a query to show the details with division of students
-- if marks is greater than 350 then show 'First Div'
-- if marks is greater than 280 then show 'Second div'
-- else show 'Third Div'
-- And count total number of studnets by each department
with Divi as (
select *, case
when marks>350 then "First Div"
when marks>280 then "Second Div"
else "Third Div" end as "Divison"
from marksheet)
select divison,count(*) as Total_Students from divi group by divison;
-- -----------------------------------------------------------------------------------------------------------------------------
select * from covid;
-- -----------------------------------------------------------------------------------------------------------------------------
# Write a query to show the sum of confirmed case by each country
-- and if country of confirmed case is greater than average
-- confirmed case then show dangour zone else show safe zone
-- select country,sum(confirmed) as Total_confirmed from s group by country;
with Zone as(
select country,sum(confirmed) as cnf from covid group by country)
select *,case
when zone.cnf>(select avg(zone.cnf) from zone) then "Dangour Zone"
else "Safe Zone" end as status from zone;
-- -----------------------------------------------------------------------------------------------------------------------------
select * from marksheet;
-- -----------------------------------------------------------------------------------------------------------------------------
# Write a query to show the data whose marks is greater than 300 
-- and address is bihar 
with CTE as(
select * from marksheet where address ="Bihar")
select * from CTE where Marks>400;
-- -----------------------------------------------------------------------------------------------------------------------------
select * from employees;
-- -----------------------------------------------------------------------------------------------------------------------------
# Write a query to show the year by average salary
select year(doj) as Year_,avg(salary) as Avg_salary from employees group by Year_;
-- -----------------------------------------------------------------------------------------------------------------------------
# Write a query to show the maximum confirmed case by quarter
select concat("Quarter :- ",quarter(date)) as q ,max(confirmed) as CNF from covid group by q;
-- -----------------------------------------------------------------------------------------------------------------------------

