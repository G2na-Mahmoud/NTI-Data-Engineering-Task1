USE [TASK1 INT];
GO

CREATE TABLE Department (
    Department_Id INT PRIMARY KEY,
    Department_Name VARCHAR(50)
);

CREATE TABLE Category (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department_Id INT NULL,
    FOREIGN KEY (Department_Id) REFERENCES Department(Department_Id)
);

CREATE TABLE Product (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10, 2),
    Category_ID INT NULL,
    FOREIGN KEY (Category_ID) REFERENCES Category(ID)
);

CREATE TABLE Customer (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Addrees VARCHAR(150),
    Segmant VARCHAR(50)
);

CREATE TABLE [ORDER] (
    ID INT PRIMARY KEY,
    order_date DATE,
    Sales DECIMAL(10, 2),
    Type VARCHAR(50),
    Delivery_Status VARCHAR(50),
    Order_Status VARCHAR(50),
    Order_Profit_Per_Order DECIMAL(10, 2),
    Customer_ID INT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(ID)
);

CREATE TABLE Order_Product (
    Product_ID INT,
    Order_ID INT,
    PRIMARY KEY (Product_ID, Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(ID),
    FOREIGN KEY (Order_ID) REFERENCES [ORDER](ID)
);
 SELECT * FROM dbo.Department;

SELECT TOP 20 * FROM [dbo].[Dataset TASK1 INT];
SELECT TOP 1 
    Department_Name,
    COUNT(*) AS Max_Orders
FROM [dbo].[Dataset TASK1 INT]
GROUP BY Department_Name
ORDER BY Max_Orders DESC;