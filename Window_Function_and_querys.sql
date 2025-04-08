use brillica3;
-- ***********************************************************************************************************************************************************************************
SHOW TABLES;
-- -----------------------------------------------------------------------------------------------------------------------------
SELECT * FROM MARKSHEET;
-- -----------------------------------------------------------------------------------------------------------------------------
# Show the Maximum marks of students by each address
select address,max(marks) as m_x from marksheet group by address;
-- -----------------------------------------------------------------------------------------------------------------------------
# Show the Table with details of students whose marks is maximum in each address
with t as(
select *,
	rank() over(partition by address order by marks desc) as RNK from marksheet) 
    select * from t where RNK =1 order by marks desc;
-- -----------------------------------------------------------------------------------------------------------------------------
# Write a query to show the 2nd maximum marks of student by each gender
with t as(
select * ,
		rank() over(partition by gender order by marks desc) as RNK from marksheet)
        select St_name,Gender,Marks from t where RNK =2 order by marks desc;
-- -----------------------------------------------------------------------------------------------------------------------------
# Write a query to show the details whose marks is minimum in each address
with t1 as(
select *,
		row_number() over(partition by address order by marks desc ) as Rnk from marksheet)
select * from t1 ;
-- -----------------------------------------------------------------------------------------------------------------------------
# Write a query to show the Details with marks is minimum rank of students by address 
with t1 as(
select *,
rank() over(partition by address order by marks desc) as RNK,
rank() over(partition by address order by marks) as R from marksheet)
select * from t1 where rnk=1;
-- -----------------------------------------------------------------------------------------------------------------------------
set sql_safe_updates=0;
update marksheet set marks = 224 where st_name ="rakesh das";
update marksheet set marks = 235 where st_name ="";
select * from marksheet where st_name ="prince kumar";
select * from marksheet where st_name ="Pappu sharma";
select distinct(marks) from marksheet;
-- -----------------------------------------------------------------------------------------------------------------------------
# Show the details of students whose marks is same
with cte as(
select *,
lead(marks) over(order by marks desc) as RNk,
lag(marks) over(order by marks desc) as R from marksheet)
select * from cte where marks= RNK or Marks=R;
-- -----------------------------------------------------------------------------------------------------------------------------


