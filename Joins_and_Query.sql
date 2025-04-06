use brillica3;
-- ************************************************************************************************************************************************************************************
-- View
-- CTE
-- Variable
-- -----------------------------------------------------------------------------------------------------------------------------
select * from products;
select * from customers;
select * from orders;
-- ------------------------------------------------------------------------------------------------------------------------------
-- 														Join
-- -----------------------------------------------------------------------------------------------------------------------------
-- A join cclause is used to combine rows from two or more tables, based on a related column between them.
-- (OR)
-- My SQL joins are used with select statement.
-- It is used to retrieve data from multiple tables.
-- -----------------------------------------------------------------------------------------------------------------------------
-- 												Types of joins
-- 1. Inner join
-- 2. Left join
-- 3. Rigth join
-- 4. Full join
-- -----------------------------------------------------------------------------------------------------------------------------
-- 5. self join
-- 6. Natural join :- It is used for sql server
-- 7. Outer join
-- -----------------------------------------------------------------------------------------------------------------------------
-- 												Inner Join (OR) Inner Outer join
-- -----------------------------------------------------------------------------------------------------------------------------
-- The Inner Join Keyword selects records that have matching vlaues in both tables.
-- -----------------------------------------------------------------------------------------------------------------------------
-- 												Left Join (OR) Left Outer join
-- -----------------------------------------------------------------------------------------------------------------------------
-- The left join keyword returns all records from the left table (table1), 
-- and the matching records from the right table (table2).
-- -----------------------------------------------------------------------------------------------------------------------------
-- 												Right Join (OR) Right Outer join
-- -----------------------------------------------------------------------------------------------------------------------------
-- The Right join keyword return all records from the right table (table2),
-- and the matching records from the left table (table2).
-- -----------------------------------------------------------------------------------------------------------------------------
-- 											  	Full join (OR) Full Outer join
-- -----------------------------------------------------------------------------------------------------------------------------
-- The Full outer join keyword returns all records when  there is a match in left(table1) or right(table2) table records.
-- (OR)
-- Full join in sql combines rows from both tbales left and right table when there is a match in either of the table.
-- (OR)
-- Full  join cna be considered as the combination of left table and right table
-- -----------------------------------------------------------------------------------------------------------------------------
Create table Table_1(
			Name text,
            Dept text,
            Salary Int);
Insert into table_1
values("A","IT",500),
		("B","Sales",300),
        ("C","DA",800),
        ("D","BA",200);
        
select * from table_1;
-- -----------------------------------------------------------------------------------------------------------------------------
Create table Table_2(
			Name Text,
            Age Int,
            City Text);
Insert into table_2
values ("A",45,"Noida"),
	   ("B",25,"Delhi"),
       ("M",21,"UP"),
       ("N",18,"MP");
select * from table_2;
-- -----------------------------------------------------------------------------------------------------------------------------
select * from table_1;
select * from table_2;
-- -----------------------------------------------------------------------------------------------------------------------------
-- Innner Join
select * from table_1 as T1 
inner join Table_2 as T2 
on T1.Name=T2.Name;
-- -----------------------------------------------------------------------------------------------------------------------------
-- Left Join
select * from table_1 as T1 
Left join Table_2 as T2 
on T1.Name=T2.Name;
-- -----------------------------------------------------------------------------------------------------------------------------
-- Right Join
select * from table_1 as T1 
Right join Table_2 as T2 
on T1.Name=T2.Name;
-- -----------------------------------------------------------------------------------------------------------------------------
select * from products;
select * from customers;
select * from orders;
-- -----------------------------------------------------------------------------------------------------------------------------
select * from customers as c
join 
orders as o
on c.customerId=o.customerid;
select * from t1;
-- -----------------------------------------------------------------------------------------------------------------------------
select * from covid;
-- -----------------------------------------------------------------------------------------------------------------------------
create view t1 as(
select `who region`,sum(confirmed)as Jan from covid where Month(date)=1 group by `who region`);
create view t2 as(
select `who region`,sum(confirmed)as feb from covid where Month(date)=2 group by `who region`);
select t1.`who Region`,jan,feb from t1 join
t2 on t1.`who Region`=t2.`who Region`;
-- -----------------------------------------------------------------------------------------------------------------------------
With T1 as(
select `who region`,sum(confirmed)as Jan from covid where Month(date)=1 group by `who region`),
T2 as(select `who region`,sum(confirmed)as Feb from covid where Month(date)=2 group by `who region`)

select T1.`who Region`,jan,Feb from T1 
join 
T2 
on 
T1.`Who Region`=T2.`Who Region`;
-- -----------------------------------------------------------------------------------------------------------------------------
-- Join March,April,May
With T1 as(
select `who region`,sum(confirmed)as March from covid where Month(date)=3 group by `who region`),
T2 as(select `who region`,sum(confirmed)as April from covid where Month(date)=4 group by `who region`),
T3 as(select `who region`,sum(confirmed)as May from covid where Month(date)=5 group by `who region`)

select T1.`who Region`,jan,Feb from T1 
join 
T2 
on 
T1.`Who Region`=T2.`Who Region`;

# ==============================================================================================================================
                use  brillica3 ;
                select * from covid;
                with t1 as (
                select `who region`,sum(confirmed) mar from covid where month(date)=3 
                group by `who region`),
               t2 as( 
                select `who region`,sum(confirmed) apr from covid where month(date)=4 
                group by `who region`),
                t3 as(
                select `who region`,sum(confirmed) may from covid where month(date)=5 
                group by `who region`),
                t4 as(
                select `who region`,sum(confirmed) jun from covid where month(date)=6
                group by `who region`)
                
                select t1.`who region`,mar,apr,may,jun from 
                t1 inner join t2 inner join
                 t3 inner join t4 on
  #               t1.who region=t2.who region and t2.who region= t3.who region`and t3.`who region=t4.who region;
                 t1.`who region`=t2.`who region` and t3.`who region`=t4.`who region`;
 
