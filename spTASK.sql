--WITHOUT PARAMETERS
1)GET ALL EMP DETAILS
create procedure SPGETEMPDETAILS
AS
BEGIN
SELECT * FROM EMPLOYEETB
END

EXEC SPGETEMPDETAILS

2)GET DETAILS OF EMPS FROM BOTH TABLES
CREATE PROCEDURE SPALLDETAILS
AS
BEGIN 
SELECT ENO,ENAME,JOB,MGR,SAL,DEPARTMENTNO,DNAME,LOC FROM 
EMPLOYEETB,DEPARTMENT WHERE DEPARTMENTNO=DEPTNO
END

EXEC SPALLDETAILS

3)GET DETAILS OF DEPARTMENT 20
CREATE PROCEDURE SPDEPT20
AS
BEGIN
SELECT * FROM EMPLOYEETB WHERE DEPARTMENTNO=20
END

EXEC SPDEPT20

4)GET ALL DETAILS FROM KOLKATA
CREATE PROCEDURE SPLOCKOLKATA
AS
BEGIN
SELECT ENO,ENAME,JOB,MGR,SAL,DEPARTMENTNO,DNAME,LOC FROM 
EMPLOYEETB,DEPARTMENT WHERE DEPARTMENTNO=DEPTNO AND LOC='KOLKATA'
END

EXEC SPLOCKOLKATA

5)GET ALL EMPLOYEES WHOS NAME START WITH A AND ORDER BY NAME
CREATE PROCEDURE SPSTARTSA
AS
BEGIN
SELECT * FROM EMPLOYEETB WHERE ENAME LIKE 'A%' ORDER BY ENAME
END

EXEC SPSTARTSA



--WITH INPUT PARAMETERS
1)GET EMP DETAILS ON GIVEN ENO
create procedure SPGETEMPDETonENO
@ENO INT
AS
BEGIN
SELECT * FROM EMPLOYEETB WHERE ENO=@ENO
END

EXEC SPGETEMPDETONENO 7876

2)GET DETAILS OF EMPS FROM BOTH TABLES 
CREATE PROCEDURE SPGETEMPDETSonENO
@ENO INT
AS
BEGIN 
SELECT ENO,ENAME,JOB,MGR,SAL,DEPARTMENTNO,DNAME,LOC FROM 
EMPLOYEETB,DEPARTMENT WHERE DEPARTMENTNO=DEPTNO AND ENO=@ENO
END

EXEC SPGETEMPDETSONENO 7876

3)GET DETAILS OF DEPARTMENT 20
CREATE PROCEDURE SPDEPT
@DNO INT
AS
BEGIN
SELECT * FROM EMPLOYEETB WHERE DEPARTMENTNO=@DNO
END

EXEC SPDEPT 20 

4)GET DETAILS BASED ON JOB AND DEPT
CREATE PROCEDURE SPDEPTJOB
@DNO INT,
@JOB VARCHAR(20)
AS
BEGIN
SELECT * FROM EMPLOYEETB WHERE DEPARTMENTNO=@DNO AND JOB=@JOB
END

EXEC SPDEPTJOB 20,'ANALYST'

5)GET ALL DETAILS FROM CITY
CREATE PROCEDURE SPLOC1
@LOC VARCHAR(30)
AS
BEGIN
SELECT ENO,ENAME,JOB,MGR,SAL,DEPARTMENTNO,DNAME,LOC FROM 
EMPLOYEETB,DEPARTMENT WHERE DEPARTMENTNO=DEPTNO AND LOC=@LOC
END

EXEC SPLOC1 'KOLKATA'


--WITH OUTPUT PARAMETERS
1)SHOW COUNT OF EMPLOYEES
ALTER procedure SPGETCOUNT
@EMPCOUNT INT OUTPUT
AS
BEGIN
SELECT @EMPCOUNT=COUNT(ENO) FROM EMPLOYEETB
END

DECLARE @ECOUNT INT
EXECUTE SPGETCOUNT @ECOUNT OUT
PRINT @ECOUNT

2)SHOW MAX SALARY OF EMPLOYEES
CREATE procedure SPGETMAXSAL
@MAXSAL INT OUTPUT
AS
BEGIN
SELECT @MAXSAL=MAX(SAL) FROM EMPLOYEETB
END

DECLARE @VAR INT
EXECUTE SPGETMAXSAL @VAR OUT
PRINT @VAR

3)SHOW SALARY SUM OF EMPLOYEES
CREATE procedure SPGETSUMSAL1
@SUMSAL INT OUTPUT
AS
BEGIN
SELECT @SUMSAL=SUM(SAL) FROM EMPLOYEETB
END

DECLARE @VAR1 INT
EXECUTE SPGETSUMSAL1 @VAR1 OUT
PRINT @VAR1

4)SHOW COUNT OF EMPLOYEES FROM DEPT20
CREATE procedure SPGETDEPTCOUNT
@DEPTCOUNT INT OUTPUT
AS
BEGIN
SELECT @DEPTCOUNT=COUNT(ENO) FROM EMPLOYEETB WHERE DEPARTMENTNO=20
END

DECLARE @VAR1 INT
EXECUTE SPGETDEPTCOUNT @VAR1 OUT
PRINT @VAR1

5)COUNT NUMBER OF EMPLOYEES FROM KOLKATA
CREATE procedure SPGETCOUNTKOLKATA
@COUNTKOL INT OUTPUT
AS
BEGIN
SELECT @COUNTKOL=COUNT(ENO) FROM EMPLOYEETB WHERE DEPARTMENTNO IN(
SELECT DEPTNO FROM DEPARTMENT WHERE LOC='KOLKATA')
END

DECLARE @VAR1 INT
EXECUTE SPGETCOUNTKOLKATA @VAR1 OUT
PRINT @VAR1


--WITH INPUT AND OUTPUT PARAMETERS
1)GET EMPLOYEES COUNT BY JOB
create procedure spGetEmployeesCountByJob2
@Job VARCHAR(30),
@EmployeeCount INTEGER OUTPUT
AS 
BEGIN
SELECT @EMPLOYEECOUNT=COUNT(*) FROM EMPLOYEETB WHERE JOB=@JOB
END


DECLARE @TOTALEMPLOYEE INT
EXECUTE spGetEmployeesCountByJob2 'CLERK', @TOTALEMPLOYEE OUTPUT
PRINT @TOTALEMPLOYEE

2)GET COUNT OF EMPLOYEES LIVING IN GIVEN LOCATION
ALTER procedure spGetEmployeesCountByLoc
@LOC VARCHAR(30),
@EmployeeCount INTEGER OUTPUT
AS 
BEGIN
SELECT @EMPLOYEECOUNT=COUNT(*) FROM EMPLOYEETB,DEPARTMENT WHERE 
DEPARTMENTNO=DEPTNO AND LOC=@LOC
END


DECLARE @TOTALEMPLOYEE INT
EXECUTE spGetEmployeesCountByLoc 'KOLKATA', @TOTALEMPLOYEE OUTPUT
PRINT @TOTALEMPLOYEE

select * from employeetb
select * from department

3)SELECT MAX SALARY OF DEPTNO GIVEN
ALTER procedure spGetEmployeesMaxSalByDept
@DEPTNO INT,
@Employee INT OUTPUT
AS 
BEGIN
SELECT @EMPLOYEE=MAX(SAL) FROM EMPLOYEETB WHERE DEPARTMENTNO=@DEPTNO
--SELECT * FROM EMPLOYEETB WHERE SAL IN(
--SELECT MAX(SAL) FROM EMPLOYEETB WHERE DEPARTMENTNO=@DEPTNO)
END

DECLARE @TOTALEMPLOYEE INT
EXECUTE spGetEmployeesMaxSalByDept 10, @TOTALEMPLOYEE OUTPUT
PRINT @TOTALEMPLOYEE

4)COUNT NUMBER OF EMPLOYEES WHOS SAL LIE BETWEEN GIVEN NUMBER
CREATE procedure spGetEmployeesBYSAL
@SAL1 INT,
@SAL2 INT,
@EmployeeCount INTEGER OUTPUT
AS 
BEGIN
SELECT @EMPLOYEECOUNT=COUNT(*) FROM EMPLOYEETB WHERE SAL BETWEEN @SAL1 AND @SAL2
END


DECLARE @TOTALEMPLOYEE INT
EXECUTE spGetEmployeesBYSAL 5000,6000,@TOTALEMPLOYEE OUT
PRINT @TOTALEMPLOYEE

5)BASED ON JOB AND DEPT
ALTER procedure spGetEmployeesWITHINFO
@JOB VARCHAR(20),
@DEPT INT,
@EmployeeCount INTEGER OUTPUT
AS 
BEGIN
SELECT @EMPLOYEECOUNT=COUNT(*) FROM EMPLOYEETB WHERE JOB=@JOB
AND DEPARTMENTNO=@DEPT
END


DECLARE @TOTALEMPLOYEE INT
EXECUTE spGetEmployeesWITHINFO 'CLERK',20,@TOTALEMPLOYEE OUT
PRINT @TOTALEMPLOYEE






3)SELECT MAX SALARY OF DEPTNO GIVEN
ALTER PROCEDURE spMaxSalaryEmployee
    @deptno INT,
    @eno INT OUTPUT,
    @ename VARCHAR(50) OUTPUT,
    @job VARCHAR(30) OUTPUT,
    @sal INT OUTPUT
AS
BEGIN
    SELECT @eno = eno, @ename = ename, @job = job,
	@sal = sal
    FROM employeetb
    WHERE sal in (select max(sal) from employeetb 
	where departmentno = @deptno)
END


DECLARE @eno INT, @ename VARCHAR(50), @job VARCHAR(30),
@sal INT;

EXEC spMaxSalaryEmployee @deptno = 20, @eno = @eno OUTPUT, 
                           @ename = @ename OUTPUT, @job = @job OUTPUT,
                           @sal = @sal OUTPUT;

SELECT @eno AS eno, @ename AS ename, @job AS job, @sal AS sal;

select * from employeetb

