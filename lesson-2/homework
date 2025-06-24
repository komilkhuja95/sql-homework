--Basic-Level Tasks
create table Employees (EmpID INT, Name VARCHAR(50), Salary DECIMAL(10,2))

insert into Employees (EmpID, Name, Salary) values (1, 'Ali', 1000.00)
insert into Employees (EmpID, Name, Salary) values (2, 'Vali', 1500.00)
insert into Employees (EmpID, Name, Salary) values (3, 'Sardor', 2000.00)

select * from Employees

insert into Employees (EmpID, Name, Salary) values 
(4, 'Abror', 3000.00),
(5, 'Asror', 3500.00),
(6, 'Axror', 4000.00);

update Employees
set Salary = 7000
where EmpID = 2

delete from Employees
where EmpID = 2

/*
| Buyruq     | Ma’lumotni o‘chiradi | Strukturani o‘chiradi | WHERE ishlaydi | Rollback mumkin | Trigger ishlaydi | Tezlik   |
| ---------- | -------------------- | --------------------- | -------------- | --------------- | ---------------- | -------- |
| `DELETE`   | ✅                    | ❌                  | ✅            | ✅              | ✅              | Sekinroq |
| `TRUNCATE` | ✅ (hammasini)        | ❌                  | ❌            | ❌/✅          | ❌               | Tez      |
| `DROP`     | ✅                    | ✅                  | ❌            | ❌             | ❌                | Juda tez |

*/

alter table Employees
alter column Name varchar(100) 

alter table Employees
add Department varchar(50)

alter table Employees
alter column Salary float

select * from Employees

create table Departments (DepartmentID int, DepartmentName varchar(50))

truncate table Employees

--Intermediate-Level Tasks
insert into Departments (DepartmentID, DepartmentName)
select 1, 'Data analitika' union all
select 2, 'Finance' union all
select 3, 'Marketing' union all
select 4, 'Security' union all
select 5, 'Hall';

select * from Departments

alter table Departments
add Salary float


update Departments
set Salary = 6000
where DepartmentID = 1

update Departments
set Salary = 5500
where DepartmentID = 2

update Departments
set Salary = 5300
where DepartmentID = 3

update Departments
set Salary = 2000
where DepartmentID = 4

update Departments
set Salary = 4500
where DepartmentID = 5

select * from Departments

update Departments
set DepartmentName = 'Management'
where Salary > 5000

truncate table Departments

alter table Employees
drop column Department
 select * from Employees

 EXEC sp_rename 'Employees', 'StaffMembers';

 Select * from StaffMembers

 drop table Departments

 --Advanced-Level Tasks

 create table Products (ID int Primary Key, Name varchar(50), Category varchar(50), Price decimal(10,2))

 alter table Products
add constraint CHK_Price_Positive CHECK (Price > 0);

alter table Products
add StockQuantity int default 50; 

select * from Products

EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';

insert into Products (ID, Name, ProductCategory, Price, StockQuantity) values
(1, 'Banan', 'Meva', 4000.00, 100),
(2, 'Olma', 'Meva', 2000.00, 300),
(3, 'Pomidor', 'Sabzavot', 3000.00, 50),
(4, 'Bodring', 'Sabzavot', 500.00, 500),
(5, 'Guruch', 'Don', 30000.00, 150);

select *
into Products_Backup
from Products

exec sp_rename 'Products', 'Inventory';

select * from Inventory_Backup

alter table Inventory
alter column Price float;

alter table Inventory
drop constraint CHK_Price_Positive;

SELECT * INTO Inventory_Backup FROM Inventory;

drop table Inventory

create table Inventory (ID INT IDENTITY(1000, 5) PRIMARY KEY, Name VARCHAR(100), Price FLOAT, StockQuantity INT, ProductCategory VARCHAR(50));

INSERT INTO Inventory (Name, Price, StockQuantity, ProductCategory)
SELECT Name, Price, StockQuantity, ProductCategory
FROM Inventory_Backup;

select * from Inventory
