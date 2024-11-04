CREATE DATABASE [LITA CAPSTONE PROJECT]

SELECT * FROM [dbo].[LITA CAPSTONE SALES DATA]

---------RETRIEVE TOTAL SALES FOR EACH PRODUCT CATEGORY-------

SELECT Product, SUM(Quantity * Unitprice) AS [Total Sales]
FROM [dbo].[LITA CAPSTONE SALES DATA]
GROUP BY Product;


-------FIND THE NUMBER OF SALES TRANSACTION IN EACH REGION------

SELECT Region, SUM(Quantity*Unitprice) AS [Total Sales]
from [dbo].[LITA CAPSTONE SALES DATA]
GROUP BY Region;


------FIND THE HIGHEST-SELLING PRODUCT BY TOTAL SALES VALUE------

SELECT TOP 1 Product, SUM(Quantity * Unitprice) AS [Total Sales]
FROM [dbo].[LITA CAPSTONE SALES DATA]
GROUP BY Product
ORDER BY [Total Sales] DESC;


----ALTERNATIVELY-----

SELECT Product, SUM(Quantity * Unitprice) AS [Total Sales]
FROM [dbo].[LITA CAPSTONE SALES DATA]
GROUP BY Product
ORDER BY [Total Sales] DESC;


--------------CALCULATE TOTAL REVENUE PER PRODUCT-------------

SELECT Product, SUM(Quantity * Unitprice) AS [Total Revenue]
FROM [dbo].[LITA CAPSTONE SALES DATA]
GROUP BY Product



--------------CALCULATE MONTHLY SALES TOTALS FOR THE CURRENT YEAR------------

SELECT MONTH (OrderDate) AS [Month Number],
DATENAME (Month, OrderDate) AS [Month],
SUM (Total_Sales) AS [Monthly Sales Total]
FROM [dbo].[LITA CAPSTONE SALES DATA]
WHERE Year (OrderDate) = Year (GETDATE())
GROUP BY Month (OrderDate), DATENAME (Month,OrderDate)
ORDER BY [Month Number]; 


---------------FIND THE TOP 5 CUSTOMERS BY TOTAL PURCHASE AMOUNT-----------

SELECT TOP 5 CUSTOMER_ID,
SUM(QUANTITY * UNITPRICE) AS [TOTAL PURCHASE AMOUNT]
FROM [dbo].[LITA CAPSTONE SALES DATA]
GROUP BY CUSTOMER_ID
ORDER BY [TOTAL PURCHASE AMOUNT] DESC;   


-----------CALCULATE THE PERCENTAGE OF TOTAL SALES CONTRIBUTED BY EACH REGION--------------

SELECT 
    Region,
    SUM(Total_Sales) AS [Total Sales],
    ROUND((SUM(Total_Sales) * 100 / (SELECT SUM(Total_Sales) FROM [dbo].[LITA CAPSTONE SALES DATA] )), 2) AS [% Of Total Sales]
FROM 
    [dbo].[LITA CAPSTONE SALES DATA]
GROUP BY Region
ORDER BY [% of Total Sales] DESC;



---------------------IDENTIFY PRODUCTS WITH NO SALES IN THE LAST QUARTER--------

SELECT PRODUCT, SUM(QUANTITY) AS Sales
FROM [dbo].[LITA CAPSTONE SALES DATA]
WHERE MONTH (ORDERDATE) BETWEEN 10 AND 12                   
GROUP BY PRODUCT
HAVING SUM (QUANTITY) = 0

---------ALTERNATIVELY------------

SELECT Product, SUM (Total_Sales) AS [Quarter Sales]
FROM [dbo].[LITA CAPSTONE SALES DATA]
WHERE Total_Sales = '0'
GROUP BY Product


SELECT * FROM [dbo].[LITA CAPSTONE SALES DATA]



-------PROJECT 2--------

SELECT * FROM [dbo].[LITA CAPSTONE CUSTOMER DATA]

--------------RETRIEVE THE TOTAL NUMBER OF CUSTOMERS FROM EACH REGION-------------------

SELECT Region, COUNT (CustomerID) AS Customers 
FROM [dbo].[LITA CAPSTONE CUSTOMER DATA]
GROUP BY Region
ORDER BY Customers DESC;

-----------FIND THE MOST POPULAR SUBSCRIPTION TYPE BY THE NUMBER OF CUSTOMERS-----------

SELECT TOP 1 SubscriptionType, COUNT (CustomerID) AS Customers 
FROM [dbo].[LITA CAPSTONE CUSTOMER DATA]
GROUP BY SubscriptionType
ORDER BY Customers DESC;

-----------FIND CUSTOMERS WHO CANCELED THEIR SUBSCRIPTON WITHIN 6 MONTHS-----------

SELECT CustomerName,Canceled,SubscriptionStart,SubscriptionEnd
FROM [dbo].[LITA CAPSTONE CUSTOMER DATA]
WHERE Canceled = 'TRUE' AND MONTH(SubscriptionStart) BETWEEN 1 AND 6


------------CALCULATE THE AVERAGE SUBSCRIPTION DURATION FOR ALL CUSTOMERS---------

SELECT AVG(DATEDIFF (Day, SubscriptionStart, SubscriptionEnd)) AS [Average Duration]
FROM [dbo].[LITA CAPSTONE CUSTOMER DATA];



----------FIND CUSTOMERS WITH SUBSCRIPTION LONGER THAN 12 MONTHS---------

SELECT CustomerID, SubscriptionType
FROM [dbo].[LITA CAPSTONE CUSTOMER DATA]
WHERE DATEDIFF(month, SubscriptionStart, SubscriptionEnd) > 12;


-----------------CALCULATE TOTAL REVENUE BY SUBSCRIPTION TYPE----------

SELECT SubscriptionType, SUM(Revenue) AS [Total Revenue]
FROM [dbo].[LITA CAPSTONE CUSTOMER DATA]
GROUP BY SubscriptionType;


------FIND THE TOP 3 REGIONS BY SUBSCRIPTION CANCELLATIONS-----------

SELECT TOP 3 Region,Canceled
FROM [dbo].[LITA CAPSTONE CUSTOMER DATA]



-----------------FIND THE TOTAL NUMBER OF ACTIVE AND CANCELLED SUBSCRIPTIONS------------------------

SELECT Canceled, COUNT(CustomerID) AS [Subscriptions]
FROM [dbo].[LITA CAPSTONE CUSTOMER DATA]
GROUP BY Canceled;


SELECT * FROM [dbo].[LITA CAPSTONE CUSTOMER DATA]
