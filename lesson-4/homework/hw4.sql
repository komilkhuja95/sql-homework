Easy-Level Tasks
1. select top 5 * from Employees
2. select distinct Category from Products
3. Select * from Products where Price > 100
4. select * from Customers where Firstname like 'A%'
5.select * from Products order by Price asc
6.select * from Employees where Salary >= 60000 and DepartmentName = 'HR'
7. SELECT 
    EmployeeID,
    FirstName,
    ISNULL(Email, 'noemail@example.com') AS Email,
    HireDate
FROM Employees;
8. SELECT * FROM Products WHERE Price BETWEEN 50 AND 100;
9. select distinct Category, ProductName from Products
10. select distinct Category, ProductName from Products order by ProductName desc

Medium-Level Tasks
11. select top 10 * from Products order by Price desc
12. SELECT 
    EmployeeID,
    COALESCE(FirstName, LastName) AS DisplayName,
    Email
FROM Employees;
13. select distinct Category, Price from Products
14. select * from Employees
where (age between 30 and 40) or (DepartmentName = 'Marketing')
15. select * from Employees
order by Salary desc
offset 10 rows fetch next 10 rows only
16. select * from Products
where Price <= 1000 and StockQuantity > 50
order by StockQuantity asc
17. select * from Products
where ProductName like '%e%'
18. select * from Employees
where DepartmentName in	('HR', 'IT', 'Finance')
19. select * from Customers
order by City asc, PostalCode desc

Hard-Level Tasks
20. select top 5 * from Sales
order by SaleAmount desc
21. SELECT 
    EmployeeID,
    FirstName + ' ' + LastName AS FullName,
    DepartmentName,
    Salary
FROM Employees;
22. SELECT DISTINCT Category, ProductName, Price
FROM Products
WHERE Price > 50;
23. SELECT * FROM Products
WHERE Price < (
    SELECT AVG(Price) * 0.1
    FROM Products
);
24.SELECT *
FROM Employees
WHERE Age < 30
  AND Department IN ('HR', 'IT');
25. SELECT *
FROM Customers
WHERE Email LIKE '%@gmail.com';
26. SELECT *
FROM Employees
WHERE Salary > ALL (
    SELECT Salary
    FROM Employees
    WHERE DepartmentName = 'Sales'
);
27. SELECT *
FROM Orders
WHERE OrderDate BETWEEN DATEADD(DAY, -180, (SELECT MAX(OrderDate) FROM Orders))
                    AND (SELECT MAX(OrderDate) FROM Orders);
