use naveen;
select * from marksheet;
-- ------------------------------------------------------------------------------------------------------------------------------
# Show the maximum marks of students in bihar
select * from marksheet where marks = (select max(marks) from marksheet);
-- ------------------------------------------------------------------------------------------------------------------------------
# Show the average marks of the girls students in bihar
select * from marksheet where marks =(select avg(marks) from marksheet where gender ="Girl" and address = "Bihar");
-- ------------------------------------------------------------------------------------------------------------------------------
# show the minimum marks of girls studetns in bihar
select * from marksheet where marks =(select min(marks) from marksheet where gender ="Girl" and address = "Bihar");
-- ------------------------------------------------------------------------------------------------------------------------------
# COUNT TOTAL NUMBER OF STUDENTS IN DELHI WHOSE MARKS IS GREATER THAN 400
select count(*) as Total_Student from marksheet where marks>400 and address ="Delhi";
-- ------------------------------------------------------------------------------------------------------------------------------
# COUNT TOTAL NUMBER OF STUDENTS WHOSE MARKS IS LESS THAN 300 AND LIVES IN BIHAR OR ASSAM
select count(*) as Total_Student from marksheet where marks<300 and address in ("Bihar","Assam") ;
-- ------------------------------------------------------------------------------------------------------------------------------
# SHOW THE MAXIMUM,MINIMUM AND AVERAGE MARKS OF STUDENTS IN HARYANA.
select max(marks) as Max_marks,min(marks) as Min_marks,avg(marks) Avgerage_marks from marksheet where address ="Haryana";
select * from marksheet;
-- ------------------------------------------------------------------------------------------------------------------------------
# show the tbale whose marks is maximum
select * from marksheet where marks = (select max(marks) from marksheet);
-- ------------------------------------------------------------------------------------------------------------------------------
# show the tbale hwose age is minimum
select * from marksheet where marks = (select min(marks) from marksheet);
-- ------------------------------------------------------------------------------------------------------------------------------
# show the atbale whose maximum marks is bihar
select * from marksheet where marks = (select max(marks) from marksheet where address = "Bihar");
-- ------------------------------------------------------------------------------------------------------------------------------
# show the tbale whsoe marks is greater than average marks in haryana
select * from marksheet where address= "Haryana" and 
marks > (select avg(marks) from marksheet where address ="Haryana");
-- ------------------------------------------------------------------------------------------------------------------------------
# show the table whose of students whsoe marks is less than average marks
select * from marksheet where marks <(select avg(marks) from marksheet);
-- ------------------------------------------------------------------------------------------------------------------------------
# show the details of student whose marks is greater tahn 
select * from marksheet where marks > (select avg(marks) from marksheet); 
-- ------------------------------------------------------------------------------------------------------------------------------
select * from marksheet;
-- Order by :- It is used to arrange the data in ascending or descending order
-- Limit    :- Limit clase are used to keep the number of rows from starting 
-- ------------------------------------------------------------------------------------------------------------------------------
# Arrange in Ascending Order 
select * from marksheet order by marks;
-- ------------------------------------------------------------------------------------------------------------------------------
# Descending Order
select * from marksheet order by marks desc;
-- ------------------------------------------------------------------------------------------------------------------------------
-- LIMIT
select * from marksheet order by marks desc limit 1;
-- ------------------------------------------------------------------------------------------------------------------------------
# Show the table of student marks is maximum in bihar
select * from marksheet where address ="Bihar" order by marks desc;
-- ------------------------------------------------------------------------------------------------------------------------------
# show the table of student whose marks is minimum in delhi
select * from marksheet where address ="Delhi" order by marks;
-- ------------------------------------------------------------------------------------------------------------------------------
# show the top 5 student whsoe marks is highest
select * from marksheet order by marks desc limit 5 ;
-- ------------------------------------------------------------------------------------------------------------------------------
# show the bottom 5 student marks is minimum
select * from marksheet order by marks limit 5;
-- ------------------------------------------------------------------------------------------------------------------------------


-- ---------------------------------------------------------------------------------

select * from marksheet;
select * from marksheet order by students_Name;
select * from marksheet order by age,address;
select * from marksheet order by gender,age desc,roll_number;

# arrange the table of students if name of first alphabet will be then arrange 
-- base of marks in descending order
select * from marksheet order by left(students_name,1),marks desc; 