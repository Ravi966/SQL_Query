use brillica3;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--																	 Constraint 
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 												Constraint are used to apply the rule and restriction on table
-- 													 	There are different types of Constraints
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1. Unique		: - Its Restrict the duplicate value from table.
-- 2. Not null		: - Its Restrict the Null values in Column.
-- 3. Default		: - Its Set Default value when not passing any Argument.
-- 4. Check			: - Its Apply the Condition on column and Resetrict value which is against the condition.
-- 5. Enum			: - Its Set Limited value in column and restrict other values.
-- 6. Index			: - Its Improve the speed of data to Retrival from table.
-- 7. Primery key	: - It is a combination of Unique and not null its create link between the two tables.
-- 8. Foregin Ky	: - Its Destroy the link Between the two table. and Its Opposite of primey key.
-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 																Createing table
create table passager(
			Id int unique not null,
            P_Name varchar(100) not null,
            From_city varchar(100) default("New Delhi"),
            To_city varchar(100) default("Mumbai"),
            Ticket_Price float check(Ticket_price>5000)
            );
select * from passager;
insert into passager
values(100,"Aman","Noida","Jaipur",5100);
select * from passager;
-- -----------------------------------------------------------------------------------------------------------------------------------
insert into passager(id,p_name,From_city,ticket_price)
values(102,"Ravi","Chennai",9999);
select * from passager;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 5. Enum			: - Its Set Limited value in column and restrict other values.
alter table passager add column Gender enum("Male","Female");
set sql_safe_updates=0;
update passager set Gender = "Male" where id = 100;
update passager set Gender = "Male" where id = 102;
select * from passager;
-- -----------------------------------------------------------------------------------------------------------------------------------
-- 										Create table
Create table sales(
			Id int primary key auto_increment,
            Person varchar(100) not null,
            area enum("East","West","North","South"),
            Amount float);
Select * from sales;
insert into sales(id,person,area,amount)
values(1000,"Kunal","North",85000);
select * from sales;
-- -----------------------------------------------------------------------------------------------------------------------------------
insert into sales(Person,Area,Amount)
values("Ritesh","West",5000),
	("Sonu","North",65000);
select * from sales;
-- -----------------------------------------------------------------------------------------------------------------------------------
# Variable :- Variable is Container where we store the data
-- -----------------------------------------------------------------------------------------------------------------------------------
set @x = "Bihar";
select * from Marksheet where Address = @x ;
select * from marksheet;
-- -----------------------------------------------------------------------------------------------------------------------------------
set @m = (select min(marks) from marksheet);
select * from marksheet where marks = @m;
-- -----------------------------------------------------------------------------------------------------------------------------------
# Show the maximum marks of students details
set @Max_marks = (select max(marks) from marksheet);
set @2nd =(select max(marks) from marksheet where marks<@Max_marks);
select * from marksheet where marks = @2nd;
-- -----------------------------------------------------------------------------------------------------------------------------------
