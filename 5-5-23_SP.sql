create procedure spGetEmployees
as 
begin
select * from EMPLOYEETB 
end

execute spGetEmployees

select * from EMPLOYEETB
create procedure spEmployeeByDeptnoAndJob
@dno int,
@job varchar(30)
as
begin
select * from EMPLOYEETB where departmentno=@dno and job=@job
end

execute spEmployeeByDeptnoAndJob 20,'CLERK'

execute spEmployeeByDeptnoAndJob @job='CLERK',@dno=20

--To get structure
sp_helptext spEmployeeByDeptnoAndJob

--To alter
alter procedure spEmployeeByDeptnoAndJob
@dno int,
@job varchar(30)
as
begin
select eno,ename from EMPLOYEETB where departmentno=@dno and job=@job
end

--To drop
drop proc spGetEmployees;

--With encryption -->There is no encrytion in functions
--now with helptext we cant view it
alter procedure spEmployeeByDeptnoAndJob
@dno int,
@job varchar(30)
with encryption
as
begin
select eno,ename from EMPLOYEETB where departmentno=@dno and job=@job
end


create procedure spGetEmployeesCountByJob
@Job VARCHAR(30),
@EmployeeCount INTEGER OUTPUT
AS 
BEGIN
SELECT @EMPLOYEECOUNT=COUNT(*) FROM EMPLOYEETB WHERE JOB=@JOB
END


EXEC spGetEmployeesCountByJob 'Clerk' --> incorrect

DECLARE @TOTALEMPLOYEE INT
EXECUTE spGetEmployeesCountByJob 'CLERK', @TOTALEMPLOYEE OUTPUT
PRINT @TOTALEMPLOYEE

DECLARE @TOTALEMPLOYEE1 INT
EXECUTE spGetEmployeesCountByJob 'CLERK', @TOTALEMPLOYEE1
IF(@TOTALEMPLOYEE1 IS NULL)
PRINT 'IS NULL'
ELSE
PRINT 'NOT NULL'
PRINT @TOTALEMPLOYEE1

--STORED PROCEDURE WITH OUTPUT PARAM
CREATE PROCEDURE SPGETTOTALEMPS1
@TOTALCOUNT INT OUTPUT
AS
BEGIN
SELECT @TOTALCOUNT=COUNT(ENO) FROM EMPLOYEETB;
END

DECLARE @TOTALEMP INT
EXECUTE SPGETTOTALEMPS1 @TOTALEMP OUT
PRINT @TOTALEMP

--STORED PROCEDURE WITH RETURN KEYWORD
ALTER PROCEDURE SPGETTOTALEMPS2
AS
BEGIN
RETURN(SELECT COUNT(ENO) FROM EMPLOYEETB);
END

DECLARE @ECOUNT INT
EXECUTE @ECOUNT=SPGETTOTALEMPS2
SELECT @ECOUNT
PRINT @ECOUNT














