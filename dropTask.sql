select * from employees
drop table employees

CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50),
  salary INT
);


INSERT INTO employees (id, name, email, salary)
VALUES
  (1, 'John', 'john@example.com', 50000),
  (2, 'Jane', 'jane@example.com', 55000),
  (3, 'John', 'john@example.com', 50000),
  (4, 'Mark', 'mark@example.com', 60000),
  (5, 'Jane', 'jane@example.com', 55000),
  (6, 'John', 'john@example.com', 50000);


select * from employees

begin transaction 
DELETE FROM employees 
WHERE id NOT IN (
  SELECT Min(id) 
  FROM employees 
  GROUP BY name, email, salary
);

rollback


CREATE TABLE employees2 (
  id INT PRIMARY KEY IDENTITY(1,1),
  name VARCHAR(50),
  email VARCHAR(50),
  salary INT
);

INSERT INTO employees2 (name, email, salary)
SELECT DISTINCT name, email, salary
FROM employees1;


EXEC sp_rename 'employees2', 'employees1';

select * from employees1
select * from employees2



CREATE TABLE employees10 (
  id INT,
  name VARCHAR(50),
  email VARCHAR(50),
  salary INT
);

INSERT INTO employees10 (id, name, email, salary)
VALUES
  (1, 'John', 'john@example.com', 50000),
  (2, 'Jane', 'jane@example.com', 55000),
  (1, 'John', 'john@example.com', 50000),
  (4, 'Mark', 'mark@example.com', 60000),
  (2, 'Jane', 'jane@example.com', 55000),
  (1, 'John', 'john@example.com', 50000);

DELETE FROM EMPLOYEES10


--SELF JOIN 
BEGIN TRAN
DELETE FROM employees WHERE ID IN(
SELECT E1.ID FROM EMPLOYEES E1,EMPLOYEES E2
WHERE E1.name=E2.name AND E1.email=E2.email
AND E1.id>E2.id)

ROLLBACK

--MAX() FUNCTION

select * from employees

BEGIN TRAN
DELETE FROM EMPLOYEES
WHERE ID NOT IN(SELECT MAX(ID) FROM EMPLOYEES 
GROUP by name,salary)

ROLLBACK


--1.4 MIN() function
select Name,salary,MIN(ID)
from employees
group by name,salary

select * from employees

begin transaction
delete from employees
where id not in(select Min(id) from employees group by name,salary)

rollback


select * from employees10
--2. Data duplicated based on ALL of the columns
ALTER TABLE EMPLOYEES10
ADD ROW_NUMBER INT IDENTITY;

BEGIN TRAN
DELETE FROM EMPLOYEES10
WHERE ROW_NUMBER NOT IN(
SELECT MIN(ROW_NUMBER) FROM EMPLOYEES10
GROUP BY NAME,salary)

ROLLBACK

ALTER TABLE EMPLOYEES10
DROP COLUMN ROW_NUMBER;

