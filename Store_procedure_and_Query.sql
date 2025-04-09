use brillica3;
-- ***********************************************************************************************************************************************************************************
select * from sales;
-- -----------------------------------------------------------------------------------------------------------------------------
# 1. Show the running total of units sold by each month
select *,sum(`units sold`) over(order by id) as run_total from sales;
-- -----------------------------------------------------------------------------------------------------------------------------
# 2. Show the month of month difference of by profit
WITH T1 AS (
SELECT Month AS MONTH_NAME ,SUM(profit) AS Total_profit
FROM sales GROUP BY MONTH_NAME)

SELECT *,Total_profit-Lag(Total_profit)  OVER() AS DIFF ,
Total_profit-Lead(Total_profit)  OVER() AS DIFFe FROM T1;
-- -----------------------------------------------------------------------------------------------------------------------------
# 3. Show the rank of profit by each month
With CTE as(
select Month,sum(profit) as Profit 
from sales group by Month)
select*,rank() over(order by Profit desc )as RNK
from CTE;
-- -----------------------------------------------------------------------------------------------------------------------------
-- 											Store Procedure
-- -----------------------------------------------------------------------------------------------------------------------------
-- A Stored prodcedure is a saved collection of sql queires that can be resued multiple times.
-- They are stored in the database and can be executed with single call.
-- -----------------------------------------------------------------------------------------------------------------------------
-- Reusability :- Write once, use multiple tiems.
-- Maintainability :- Easier to update and manage logic in one place.
-- Performance :- Precompiled and optimized by the database engine.
-- Security :- Can restrict direct access to data, exposing only necessary operations.
-- -----------------------------------------------------------------------------------------------------------------------------
# How to create the procedure
DELIMITER $$
CREATE PROCEDURE ABC()
BEGIN
SELECT * FROM Marksheet;
END $$
DELIMITER ;
-- -----------------------------------------------------------------------------------------------------------------------------
# Calling the procedure
CALL ABC();
-- -----------------------------------------------------------------------------------------------------------------------------
# Deleting the procedure
drop procedure ABC;
-- -----------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE PROCEDURE Ravi(IN A TEXT)
BEGIN
SELECT * FROM Marksheet WHERE Address =A;
END $$
DELIMITER ;
CALL Ravi("Bihar");
-- -----------------------------------------------------------------------------------------------------------------------------
# Create procedure to gorup the marksheet table by 
-- Two Peramter a and b SHOW GROUPED TABLE.
DELIMITER %%
CREATE PROCEDURE o(IN A TEXT, IN B VARCHAR(255))  
BEGIN
    SET @sql = CONCAT('SELECT ', A, ', SUM(', B, ') AS Total FROM MARKSHEET GROUP BY ', A);
    PREPARE stmt FROM @sql;  -- Prepare the SQL query dynamically
    EXECUTE stmt;  -- Execute the prepared statement
    DEALLOCATE PREPARE stmt;  -- Clean up
END %%
DELIMITER ;
call o("Address","Marks");
-- -----------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE PROCEDURE AB(IN A TEXT,in y int)
BEGIN
SELECT * FROM Marksheet WHERE Gender =a and marks=y;
END $$
DELIMITER ;
CALL AB("Boy",380);
select * from marksheet;