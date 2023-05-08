select * from EMPLOYEETB;
select* from DEPARTMENT;



create function fn_GetEmlpoyeeDetailsByName(@name VARCHAR(30))
RETURNS @myEmployeeTable TABLE (ENO INT,ENAME VARCHAR(30),DEPTNO INT)
AS
BEGIN
INSERT INTO @myEmployeeTable
SELECT ENO,ENAME,departmentno FROM EMPLOYEETB WHERE ENAME=@name;
RETURN
END

select * from fn_GetEmlpoyeeDetailsByName('Sunita Sharma')


TASK
1)display employee details
create function fn_displayEmpDetails()
returns @myEmployeeTable Table(eno int,ename varchar(40),job varchar(45),manager int,
hiredate date,salary int,commission int,deptno int)
as
begin
insert into @myEmployeeTable
select * from employeetb
return 
end

select * from fn_displayEmpDetails()


2)display employee details in ascending order
create function fn_displayEmpByAscName()
returns @myEmployeeTable Table(eno int,ename varchar(40),job varchar(45),manager int,
hiredate date,salary int,commission int,deptno int)
as
begin
insert into @myEmployeeTable
select * from employeetb order by ename
return 
end

select * from fn_displayEmpByAscName()

3)Display eno,ename and dno of employees from department 20
create function fn_empFromDept20()
returns @myEmployeeTable Table(empno int,empname varchar(30),dno int)
as
begin
insert into @myEmployeeTable
select eno,ename,departmentno from employeetb where departmentno=20
return
end

select * from fn_empFromDept20()

4)Display eno,ename and dno of employees from any department
create function fn_empFromDept(@deptno int)
returns @myEmployeeTable Table(empno int,empname varchar(30),dno int)
as
begin
insert into @myEmployeeTable
select eno,ename,departmentno from employeetb where departmentno=@deptno
return
end

select * from fn_empFromDept(10)

5)display salary between 2 given numbers
CREATE FUNCTION fn_getsalbet(@sal1 INT,@sal2 INT)
returns @emptable table (empno int,ename varchar(40),salary int)
as
begin
insert into @emptable
select eno,ename,sal from EMPLOYEETB where sal between @sal1 and @sal2;
return
end;

SELECT * FROM fn_getsalbet(5000,6000);

6)get emp details by their id
create function fn_getEmpById(@empno int)
returns @emptable table(empno int,ename varchar(40),salary int,dno int)
as
begin
insert into @emptable
select eno,ename,sal,departmentno from EMPLOYEETB where eno=@empno
return
end

select * from fn_getEmpById(7521)

7)get all employees from department mentioned and order by eno
alter function fn_getEmpByDept(@dno int)
returns @emptable table(empno int,ename varchar(40),salary int,dno int)
as
begin
insert into @emptable
select eno,ename,sal,departmentno from EMPLOYEETB where departmentno=@dno
order by(eno)
return
end

select * from fn_getEmpByDept(10)

8)Get employee details with his dname and location
create function fn_getEmpByIdWithDept(@empno int)
returns @emptable table(empno int,ename varchar(40),salary int,dno int,
dname varchar(30),loc varchar(30))
as
begin
insert into @emptable
select eno,ename,sal,departmentno,dname,loc from EMPLOYEETB,DEPARTMENT
where eno=@empno and departmentno=DEPTNO
return
end

select * from fn_getEmpByIdwithdept(7521)

9)get all employees who work in city mentioned
create function fn_getEmpFromCity(@city varchar(30))
returns @emptable table(empno int,ename varchar(40),salary int,dno int,
dname varchar(30),loc varchar(30))
as
begin
insert into @emptable
select eno,ename,sal,departmentno,dname,loc from EMPLOYEETB,DEPARTMENT
where loc=@city and departmentno=DEPTNO
return
end

select * from fn_getEmpFromCity('Kolkata')

10)select max salary from department
ALTER FUNCTION fn_maxSalaryDept(@dno int)
returns @emptable table (empno int,ename varchar(40),salary int,deptno int)
as
begin
insert into @emptable
select eno,ename,sal,departmentno from EMPLOYEETB where
sal=(select max(sal) from EMPLOYEETB where departmentno=10)
return
end;

SELECT * FROM fn_maxSalaryDept(10);
