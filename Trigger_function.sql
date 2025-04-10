use brillica3;
-- ***********************************************************************************************************************************************************************************
# Create a procedure to filter the name of employee whose name startswith n_charactor
-- -----------------------------------------------------------------------------------------------------------------------------
select * from employees;
DELIMITER %% 
CREATE procedure STARTSWITH(IN A TEXT)
BEGIN 
SELECT * FROM EMPLOYEES WHERE LEFT(EMP_NAME,1) =A;
END %%
DELIMITER %%
CALL STARTSWITH("r");
-- -----------------------------------------------------------------------------------------------------------------------------
-- 									TRIGGER
-- -----------------------------------------------------------------------------------------------------------------------------
-- A Trigger in Mysql Workbench is a database object that's associated
-- with a table and is activated when a certain action is 
-- perfromed on the tables.
-- -----------------------------------------------------------------------------------------------------------------------------
-- Trigger can be used to :
-- Apply resriction to tables when adding, updating or removing rows 
-- Maintain referentail intergrity Record Activities performed on a table.
-- -----------------------------------------------------------------------------------------------------------------------------
-- Here are some type of triggers in Mysql:
-- -----------------------------------------------------------------------------------------------------------------------------
-- Before Insert : Activated before data is inserted into a table
-- After Insert : Activated After data is inserted into a table
-- Before Update : Activated Before data is updated in a table
-- -----------------------------------------------------------------------------------------------------------------------------
-- In simple Trigger
-- -----------------------------------------------------------------------------------------------------------------------------
-- Sql Trigger are stored procedure that automatically execute in response 
-- to certain events in a specific table or view in a
-- database
-- -----------------------------------------------------------------------------------------------------------------------------


-- -----------------------------------------------------------------------------------------------------------------------------
# Creating a Trigger for Deducting 500 from salary
Create Trigger T_Salary
		Before Insert on 
        salary from each row
        set new.salary = new.salary-@A;
        
# Value set
set @A = 500;
Insert into salary
value("Prince",4500);
-- -----------------------------------------------------------------------------------------------------------------------------
# Index :- Its improve your data retrival speed
select * from covid;
use brillica3;
-- -----------------------------------------------------------------------------------------------------------------------------
# Create a function to show the first name from column
DELIMITER %%
CREATE FUNCTION RAVI(X TEXT)
	RETURNS TEXT
		DETERMINISTIC
			BEGIN
				RETURN LEFT(X,INSTR(TRIM(X)," "));
			END %%
		DELIMITER ;
SELECT RAVI(EMP_NAME) AS FIRST_NAME FROM EMPLOYEES;
-- -----------------------------------------------------------------------------------------------------------------------------
# HOW TO DELETE FUNCTION
DROP FUNCTION RAVI;
-- -----------------------------------------------------------------------------------------------------------------------------