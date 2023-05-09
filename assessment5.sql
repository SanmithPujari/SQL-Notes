create table employee(
eno int primary key,
ename varchar(30),
job varchar(30),
mgr int,
hiredate date,
salary int,
comm int,
deptno int
)



INSERT INTO employee VALUES(8369, 'Smith', 'CLERK', 8902, '1990-12-18', 800.00, NULL, 20);

INSERT INTO employee VALUES(8499, 'Anya', 'SALESMAN', 8698, '1991-02-20', 1600.00, 300.00, 30);

INSERT INTO employee VALUES(8521, 'Seth', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500.00, 30);

INSERT INTO employee VALUES(8566, 'Mahadevan', 'MANAGER', 8839, '1991-04-02', 2985.00, NULL, 20);

INSERT INTO employee VALUES(8654, 'Momin', 'SALESMAN', 8698, '1991-09-28', 1250.00, 1400.00, 30);

INSERT INTO employee VALUES(8698, 'Bina', 'MANAGER', 8839, '1991-05-01', 2850.00, NULL, 30);

INSERT INTO employee VALUES(8882, 'Shiavnsh', 'MANAGER', 8839, '1991-06-09', 2450.00, NULL, 10);

INSERT INTO employee VALUES(8888, 'Scott', 'ANALYST', 8566, '1992-12-09', 3000.00, NULL, 20);

INSERT INTO employee VALUES(8839, 'Amir', 'PRESIDENT', NULL, '1991-11-18', 5000.00, NULL, 10);

INSERT INTO employee VALUES(8844, 'Kuldeep', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30);

INSERT INTO employee VALUES(8886, 'Anoop', 'CLERK', 8888, '1993-01-12', 1100.00, NULL, 20);

INSERT INTO employee VALUES(8100, 'Yash', 'ANALYST', NULL, '2003-05-03', 6000.00, NULL, 20);

INSERT INTO employee VALUES(8900, 'Jatin', 'CLERK', 8698, '1991-12-03', 950.00, NULL, 30);

INSERT INTO employee VALUES(8902, 'Fakir', 'ANALYST', 8566, '1991-12-03', 3500.00, NULL, 20);

 
select * from employee

1. Display details of all the employees from Employee table.
CREATE FUNCTION fn_EmpDetails()
RETURNS TABLE
AS
RETURN(SELECT * FROM EMPLOYEE)

SELECT * FROM fn_EmpDetails()

2. Add a new record to Employee table.
8088, 'Ramesh', 'CLERK', 8789, '2022-08-09', 4500.00, NULL, 10

INSERT INTO emp VALUES(8088, 'Ramesh', 'Clerk', 8789, '2022-08-09', 
4500.00, NULL, 10);
select * from emp

create function fn_NewRecord()
RETURNS TABLE
AS
RETURN(SELECT * FROM emp)

select * from fn_NewRecord()

insert into employee
select * from fn_NewRecord()

select * from employee
--delete from employee where eno=8088

3. Count the number of records in Employee table.
CREATE FUNCTION fn_TotalEmp()
RETURNS INTEGER
AS
BEGIN
RETURN (SELECT COUNT(*) FROM EMPLOYEE);
END;

SELECT dbo.fn_TotalEmp();

4. Search the details of those employees who work in deptno 30.
CREATE FUNCTION fn_EmpFromDept30()
RETURNS TABLE
AS
RETURN(SELECT * FROM employee WHERE deptno=30)

SELECT * FROM fn_EmpFromDept30()

5. Sort the records in Employee table.
CREATE FUNCTION fn_SortEmployees()
RETURNS @myEmp TABLE(ENO INT,ENAME VARCHAR(30),JOB VARCHAR(20),
MGR INT,HIREDATE DATE,SAL INT,COMM INT,DEPTNO INT)
AS
BEGIN
INSERT INTO @myEmp
SELECT * FROM employee ORDER BY eno ASC;
RETURN
END

SELECT * FROM FN_SORTEMPLOYEES()

6. Update the salary of the last inserted record to 500.
CREATE FUNCTION fn_UpdtEmpDetails()
RETURNS TABLE
AS
RETURN(SELECT * FROM EMPLOYEE)

SELECT * FROM fn_UpdtEmpDetails()

update fn_UpdtEmpDetails()
set salary=500 where hiredate=(select max(hiredate)
from employee)


7. Delete the last inserted record.
CREATE FUNCTION fn_DltEmpDetails()
RETURNS TABLE
AS
RETURN(SELECT * FROM EMPLOYEE)

SELECT * FROM fn_UpdtEmpDetails()

begin transaction
delete from fn_UpdtEmpDetails()
where hiredate=(select max(hiredate)
from employee)

rollback


Q2.
CREATE TABLE PRODUCTS
(product_code varchar(45) PRIMARY KEY,
product_name varchar(45),
price int,
quantity_remaining int,
quantity_sold int)


INSERT INTO PRODUCTS VALUES ('P1','iPhone 13 Pro Max',1200,5,195),
('P2','Airpods pro',279,10,90),
('P3','MacBook Pro 16',5000,2,48),
('P4','iPad Air',650,1,9)



CREATE TABLE SALES
(order_id int primary key,
order_date date,product_code varchar(45)
references PRODUCTS( product_code ) ,
quantity_ordered int,sale_price int)


INSERT INTO SALES VALUES
(1,'2022-01-10','P1',100,120000),
(2,'2022-01-20','P1',50,60000),
(3,'2022-02-05','P1',45,540000),
(4,'2022-01-15','P2',50,13950),
(5,'2022-03-25','P2',40,11160),
(6,'2022-02-25','P3',10,50000),
(7,'2022-03-15','P3',10,50000),
(8,'2022-03-25','P3',20,100000),
(9,'2022-04-21','P3',8,40000),
(10,'2022-04-27','P4',9,5850)

select * from PRODUCTS;
select * from SALES;

--delete from products
--delete from sales
--drop table sales
--drop table products

1. For each iPhone 13 Pro Max Sale, modify the database tables 
accordingly. Assume that only one piece of iPhone 13 Pro Max 
could be sold at a time.

alter PROCEDURE spSelliPhone
AS 
BEGIN
DECLARE @STOCKAVAILABLE INT
SELECT @STOCKAVAILABLE=quantity_remaining FROM 
products WHERE product_code='P1'

if(@StockAvailable<0)
BEGIN
RAISERROR('Not enough stock available',16,1)
END
ELSE
BEGIN
BEGIN TRY
BEGIN TRAN
UPDATE products
SET quantity_remaining=(quantity_remaining-1) where 
product_code='P1';
UPDATE products
SET quantity_sold=(quantity_sold+1) where 
product_code='P1';

DECLARE @MaxProductSalesId INT
DECLARE @OrderDate DATE
SELECT @MaxProductSalesId=CASE WHEN MAX(order_id) IS NULL THEN 0 
ELSE MAX(order_id) END FROM sales
SET @MaxProductSalesId=@MaxProductSalesId+1
set @OrderDate=GETDATE()
INSERT INTO sales VALUES(@MaxProductSalesId,@OrderDate,
'P1',1,1*(SELECT price from 
PRODUCTS where product_code ='P1' ));
COMMIT TRANSACTION
END TRY
BEGIN CATCH
ROLLBACK TRAN
END CATCH
END
END

spselliphone


select * from PRODUCTS;
select * from SALES;


2. For every given product and the quantity, check if the product
is available based on the required quantity. If available then 
modify the database tables accordingly.

alter PROCEDURE spSellProduct
@ProductId varchar(20),
@QuantityToSell Int
AS 
BEGIN
DECLARE @STOCKAVAILABLE INT
SELECT @STOCKAVAILABLE=quantity_remaining FROM 
products WHERE product_code=@ProductId

if(@StockAvailable<@QuantityToSell)
BEGIN
RAISERROR('Not enough stock available',16,1)
END
ELSE
BEGIN
BEGIN TRY
BEGIN TRAN
UPDATE products
SET quantity_remaining=(quantity_remaining-@QuantityToSell) where 
product_code=@ProductId;
UPDATE products
SET quantity_sold=(quantity_sold+@QuantityToSell) where 
product_code=@ProductId;

DECLARE @MaxProductSalesId INT
DECLARE @OrderDate DATE
SELECT @MaxProductSalesId=CASE WHEN MAX(order_id) IS NULL THEN 0 
ELSE MAX(order_id) END FROM sales
SET @MaxProductSalesId=@MaxProductSalesId+1
set @OrderDate=GETDATE()
INSERT INTO sales VALUES(@MaxProductSalesId,@OrderDate,
@ProductId,@QuantityToSell,@QuantityToSell*(SELECT price from 
PRODUCTS where product_code =@ProductId ));
COMMIT TRANSACTION
END TRY
BEGIN CATCH
ROLLBACK TRAN
END CATCH
END
END

spsellproduct 'P2',50






