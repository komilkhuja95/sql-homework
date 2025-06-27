Easy-Level Tasks.
1. BULK INSERT — bu SQL Server buyruq bo‘lib, tashqi fayldan (masalan, .csv) katta hajmdagi ma’lumotlarni jadvalga tezda yuklash uchun ishlatiladi.
2. To‘rt xil fayl formatini sanab o‘ting, ular SQL Serverga import qilinadi:
  a) CSV (Comma Separated Values)-Har bir ustun vergul bilan ajratiladi. Eng ko‘p ishlatiladigan format.
	b) TXT (Plain Text File)-Maxsus belgi bilan ajratilgan satrlar (masalan, tab yoki boshqa delimiterlar bilan).
	c) Excel Files (XLS / XLSX)-Microsoft Excel hujjatlari. OPENROWSET yoki SSIS orqali import qilinadi.
	d) XML (Extensible Markup Language)-Ma’lumotlar tuzilgan ko‘rinishda bo‘ladi. OPENXML yoki XML funksiyalari orqali ishlatiladi.
3. create table Products (ID int primary key, name varchar(50), price decimal(10,2))
4. insert into Products values
 (1, 'Banan', 3000.00),
 (2, 'Ananas', 20000.00),
 (3, 'Kiwi', 15000.00)
5.NULL-qiymat kiritish majburiy emas, NOT NULL - qiymat kiritish majburiy.
6. alter table Products
   add constraint UQ_Name Unique(Name)
7. -- faqat shu qatorda ishlaydi. /* ... */ esa bir nechta qatorni qamrab oladi.
8. alter table Products
   add Categpry int
9. create table Categories (ID int primary key, Name varchar (50) unique)
10. IDENTITY - avtomatik ravishda unikal son hosil qiladi. Misol uchum: create table Products (id int identity (1,1)) qilsam, natija id 1,2,3,4,5,6 bo'lib tartib bilan ketadi.

Medium-Level Tasks.
11. bulk insert Products
    from 'C:\Products.txt'
    with (
    firstrow = 1,
    fieldterminator = ',',
    rowterminator = '\r\n'
    );
12. ALTER TABLE Products
    ADD CONSTRAINT FK_Products_Categories
    FOREIGN KEY (CategoryID)
    REFERENCES Categories(ID);
13. PRIMARY KEY — jadvaldagi asosiy, yagona identifikator, hech qachon NULL bo‘lmaydi. UNIQUE — boshqa ustunlar uchun takrorlanmas qiymatni ta’minlaydi, lekin NULL bo‘lishi mumkin.
14. ALTER TABLE Products
    ADD CONSTRAINT CHK_Price_Positive
    CHECK (Price > 0);
15. ALTER TABLE Products
    ADD Stock INT NOT NULL DEFAULT 0
16. SELECT                                        
    ProductID,
    ProductName,
    ISNULL(Price, 0) AS Price
    FROM Products;
  or
    UPDATE Products
    SET Price = 0
    WHERE Price IS NULL;
17. FOREIGN KEY — bu bir jadvaldagi ustun (yoki ustunlar guruhi) orqali boshqa jadvaldagi ustun bilan bog‘liq bo‘lishini ta'minlaydigan cheklov.
    Ya’ni, u ikki jadval orasida bog‘lanish (relationship) yaratadi.

Hard-Level Tasks.
18. CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    CONSTRAINT CHK_CustomerAge CHECK (Age >= 18)
    );
19. CREATE TABLE Students (
    ID INT IDENTITY(100, 10) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
    );
20. CREATE TABLE OrderDetails (
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(10,2),

    PRIMARY KEY (OrderID, ProductID)  -- composite primary key
    );
21. ISNULL()-Faqat 2 ta qiymatni taqqoslash kerak. COALESCE()-Bir nechta variantlarni tekshirish kerak
22. CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,               -- Asosiy kalit (takrorlanmaydi)
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,           -- UNIQUE constraint
    HireDate DATE
   );
23.CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    CONSTRAINT FK_Orders_Customers
        FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

DELETE FROM Customers WHERE CustomerID = 1;
UPDATE Customers
SET CustomerID = 10
WHERE CustomerID = 1;













