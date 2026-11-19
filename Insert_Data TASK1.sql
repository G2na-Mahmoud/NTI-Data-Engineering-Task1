USE [TASK1 INT];
GO

SELECT TOP 20 * FROM [dbo].[Dataset TASK1 INT];

USE [TASK1 INT];
GO

-- 1. COUNT: حساب عدد الصفوف/الطلبات لكل قسم (Department_Name)
SELECT 
    Department_Name,
    COUNT(*) AS Total_Orders
FROM [dbo].[Dataset TASK1 INT]
GROUP BY Department_Name
ORDER BY Total_Orders DESC;

-- 2. SUM: حساب إجمالي قيمة المبيعات لكل قسم  
SELECT 
    Department_Name,
    SUM(Sales) AS Total_Sales
FROM [dbo].[Dataset TASK1 INT]
GROUP BY Department_Name
ORDER BY Total_Sales DESC;

-- 3. AVG: حساب متوسط قيمة المبيعات لكل قسم
SELECT 
    Department_Name,
    AVG(Sales) AS Average_Sales
FROM [dbo].[Dataset TASK1 INT]
GROUP BY Department_Name;

-- 4. MIN و MAX: معرفة أقل قيمة وأعلى قيمة مبيعات في كل قسم
SELECT 
    Department_Name,
    MIN(Sales) AS Min_Sales,
    MAX(Sales) AS Max_Sales
FROM [dbo].[Dataset TASK1 INT]
GROUP BY Department_Name;

-- 5. LIKE % (يبدأ بحرف): البحث عن الفئات اللي اسمها بيبدأ بحرف S
SELECT DISTINCT Category_Name
FROM [dbo].[Dataset TASK1 INT]
WHERE Category_Name LIKE 'S%';

-- 6. LIKE % (يحتوي على كلمة): البحث عن المدن اللي اسمها فيه كلمة San في أي مكان
SELECT Customer_Fname, Customer_City
FROM [dbo].[Dataset TASK1 INT]
WHERE Customer_City LIKE '%San%';