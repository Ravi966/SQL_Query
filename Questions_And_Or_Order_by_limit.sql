use naveen;
select * from em;
select * from mobiles;
select * from hr;
select distinct(department) from hr;
select distinct(`job_role`) from hr;
select distinct(`Marital_status`) from hr;
select distinct(`Education`) from hr;
select distinct(`Education_field`) from hr;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
# 1. Write a query to show the table whose education field is life science or mdeical and gender is male
select * from hr where `education_field` = "life science" or  `education_field` = "Medical";
-- ------------------------------------------------------------------------------------------------------------------------
# 2. Write a query to show table whose department is sales and marital status is single and age between 30 to 40 
select * from hr where department = "Sales" and marital_Status ="Single" and age between 30 and 40; 
-- -----------------------------------------------------------------------------------------------------------------------
-- 3. filter table whose attrition is yes job role is Research scientist monthly income is greater than 5000
select * from hr where attrition ="Yes" and job_role ="Research scientist" and monthly_income>5000;
-- ----------------------------------------------------------------------------------------------------------------------
-- 4. Filter the table which education is high school and age is less than 25 and gender is Male 
select * from hr where Education ="High School" and age <25 and gender ="Male";
-- ----------------------------------------------------------------------------------------------------------------------
-- 5. Show the table whose age is maximum
select * from hr order by age desc;
-- -----------------------------------------------------------------------------------------------------------------------
-- 6. Show the top 5 data base of monthly rate whose department is R&D
select * from hr where department ="R&D" order by monthly_rate desc limit 5;
-- ----------------------------------------------------------------------------------------------------------------------
-- 7. Show the table Whose age between 20 to 30 and who have done master's degree 
select * from hr where age between 20 and 30 and Education ="Master's Degree";
-- ----------------------------------------------------------------------------------------------------------------------
-- 8. Arrange the data base of age and monthly rate whsoe attrition is yes 
select * from hr where attrition ="yes" order by age,monthly_rate;
-- ----------------------------------------------------------------------------------------------------------------------
/*
count total number of emp whose age between 45 to 50 and department is sales
count total number of emp whose age between 45 to 50 and department is sales
*/
select count(*) as Total_emp from hr where age between 45 and 50 and department = "Sales";
-- ----------------------------------------------------------------------------------------------------------------------
# show the maximum and minimumn age whose monthly income is between 4k to 5k
select max(age) as maximum,min(age)as minimum  from hr where monthly_income between 4000 and 5000;
-- ----------------------------------------------------------------------------------------------------------------------
select * from hr;
# Show the total number of unique department 
select count(distinct(department)) as Total_Unique_dept from hr;
-- ----------------------------------------------------------------------------------------------------------------------
