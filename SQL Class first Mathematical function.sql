# Add the two value 445 and 123
select 445+123;
select (456-123);
select 12*10; 
select 45/9;
Select 18%9;
---------------------------------------------------------------------
# 1 Mod 2 Power 3 Round 4 Floor 5 Ceil 6 ABS 7 SQRT 8 Sign 9 Rand
---------------------------------------------------------------------
select mod (13,5);
select floor(45.9);
select power(4,3);
select round(12.4);
select ceil(12.9);
select abs(-50);
select sqrt(64);
select sign(-4566655);
select round(rand()*100);
select rand()*100;
#500-1000
select round(500+rand()*500);
select round(1000+rand()*2000);
-----------------------------------------------------------------------------------------------------------------------------------# 06-02-2024-------
# Text Function 
select upper("Prince sharma ");
select lower("Prince sharma");
select length("Prince");
select left("Prince",2);
select right("Prince",2);
select instr("Prince","I");
# Question 1 Find The First And Last Name
# "Rohit Sharma"
select left("Rohit Sharma",5);
select instr("Rohit sharma"," ");
select left("Rohit Sharma",instr("Rohit Sharma"," "));
select right("Rohit sharma",instr("Rohit Sharma"," "));
select substr("Prince",2,3);
select substring("Prince",1,2);
select mid("Prince",2,3);
select reverse("Prince");
select repeat("Ravi ",10);
select replace("Data","a","s");
# FIND THE LENGTH OF THE NAME WITHOUT SPACE 
---- 'VIRAT KOH LI'
SELECT length(replace("VIRAT KOH LI"," ",""));
select trim("     Rohit sharma     ");
select concat("a","b","c");
select concat_ws("---","a","B","c");
#---------------------------------------------------------------------------------------------------------------------
# Date And Time Function
#---------------------------------------------------------------------------------------------------------------------
select now();
select curdate();
select current_date();
select curtime();
select current_timestamp();
select day(now());
select dayname(now());
select month(curdate());
select monthname(curdate());
select year(curdate());
select week(now());
select weekday(now());
select weekofyear(Now());
#--------------------------------------------------------------------------------------------------------------------------
# Date and Time Function								07-02-2024 4:44 Pm
#--------------------------------------------------------------------------------------------------------------------------
select adddate(Curdate(),Interval 5 day);
select adddate(current_date(),interval 3 month);
select concat(round(datediff(curdate(),"2010-12-10")/365)," Year") as Exp; # Year of Exp 
#--------------------------------------------------------------------------------------------------------------------------
# How to Create Database
Create database SQL2;
Drop Database SQL2;

# create a database name of Brillica
Create Database Brillica;
Show databases; # It is used to show the name of the database
use brillica;
Create Table student2(Roll_No int,Student_Name varchar(255),age int);

Select Roll_No,Student_Name,age from student2;
insert into Student2(Roll_No,Student_Name,age)
value(1,"Jai","24");
select Roll_No,Student_Name,age from Student2;
Insert into student2(Roll_No,Student_Name,age)
Value(2,"Ravi",15),
(3,"Amiya",25),
(4,"Rahul",45);
select Roll_No,Student_Name,age from Student2;
Select * from student2;

Drop Table student2;
select * from student2;
truncate student2;
select * from	student2;
create database	Company;
use Company;
Create Table Company(Emp_id int,Emp_Name Varchar(255),Age int,Salary float,Department varchar(255));
insert into Company(Emp_id,Emp_Name,Age,Salary,Department)
value (1,"Ravi",25,15000,"SDM"),(3,"Ra",25,19000,"SDM"),(3,"vi",35,30000,"SDM");
select * from company;


















