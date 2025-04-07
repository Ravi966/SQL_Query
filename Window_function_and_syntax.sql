use brillica3;
-- *******************************************************************************************************************************************************************************
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 																		Window function 
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- A Window function in Mysql is a built - in funcion that performs 
-- calculations on a set of rows in a query. Its returns a value for a each row in query result.
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- (OR)
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Mysql Window funcitons are advanced sql capabilities thatt enable
-- expensive calcaulation across sets of rows related to the current row.
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Over :- The over caluse are used to define the set of rows or windows.
-- Partition by :- The partition_clause breakes up the rows into chunks or partition.
-- Order by :- The order by clause arrange the data in ascending or descending order .
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Row_number () :- Its Assign the unique integer value in particular windows
-- Rank () :- 
-- Dense_Rank () :- 
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM MARKSHEET;
SELECT * , ROW_NUMBER() OVER(ORDER BY MARKS DESC) AS R_N
FROM MARKSHEET;

SELECT * , ROW_NUMBER() OVER(PARTITION BY ADDRESS  ORDER BY MARKS DESC) AS RNK
FROM MARKSHEET;
-- -----------------------------------------------------------------------------------------------------------------------------
SELECT *FROM DUMMY;
SELECT *,ROW_NUMBER() OVER(ORDER BY MARKS DESC) AS RW FROM DUMMY;
SELECT *,RANK() OVER(ORDER BY MARKS DESC) AS R FROM DUMMY; # IS NOT USE
SELECT *,DENSE_RANK() OVER(ORDER BY MARKS DESC) AS RD FROM DUMMY;
-- -----------------------------------------------------------------------------------------------------------------------------
select *,lead(marks) over(order by marks) as LD
from dummy;
select *,lag(marks) over(order by marks) as LG
from dummy;
-- -----------------------------------------------------------------------------------------------------------------------------
SELECT *, rank() over(order by marks desc) as rnk ,
dense_rank() over(order by marks desc) as dr,
row_number() over(order by marks desc) as rw,
lead(marks) over(order by marks desc) as ld,
lag(marks) over(order by marks desc) as lg from dummy;
