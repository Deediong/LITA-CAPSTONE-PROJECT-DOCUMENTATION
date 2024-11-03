# PROJECT TITLE: SALES DATA ANALYSIS AND VISUALIZATION USING EXCEL, SQL SERVER, AND POWER BI

## TABLE OF CONTENTS
* Data Cleaning and Preprocessing (Excel)
* Database Creation and Querying (SQL Server)
* Data Visualization and Insights (Power BI) 

## PROJECT OVERVIEW

The Sales Data Analysis and Visualization project aims to uncover valuable insights from LITA Capstone sales data to inform business decisions, optimize sales strategies, and enhance customer engagement.
Imagine having a really clear view of your sales landscape, kmowing exactly which products are flying off the shelves, which customers are loyal patrons, and where your next big sales opportunity lies.
Our quest is to dig dip into the sales data of LITA Capstone, uncovering trends, patterns, and insights that drive business growth. This project presents the results of the LITA Capstone sales analysis to understand the underlying issues and to propose actionable recommendations.

### Problem Statement:
Currently, LITA Capstone Sales data is fragmented, making it difficult to understand product category performance, regional sales trends, and high value customer behavior. decisions?
How then can we integrate and analyze LITA Capstone Sales data to inform business?

### Solution Statement:
Design and deploy sales data integration and analytics solution to provide actionable insights, enabling informed decision making and driving business growth.

### DATA SOURCES
The primary source of data used in this analysis is the LITA Capstone Sales data, provided in an Excel file format, covering sales transaction from January 2023 to August 2024

### Tools Used:
   - For Data Manipulation - Microsoft Excel download link here
   - For Data Storage - CSV file format download link here
   - For Data Analysis - SQL download server here and SSMS
   - For Data Visualization - Power BI

### Data Characteristics:
The dataset includes the following categories:
   - Order ID: Unique identifier for each order made.
   - Customer ID: Unique identifier for each customer.
   - Product: Category of the product.
   - Region: Regions where the transaction occurred (East, West, North, and South).
   - Order Date: Date of transaction (January 2023 to August 2024).
   - Quantity: The number of units of the products purchased in each transaction.
   - Unit Price: The amount for each product quantity.
   - Total Sales: The total amount for each quantity sold.

### Basic Statistics about the dataset:
   - Number of unique customers: 9,923
   - Number of product category: 6
   - Number of Regions involved: 4
   - Total quantity sold: 68,464 items
   - Total sales made: #2,101,180

##  Data Cleaning and Preparation

   - Checked for blank or missing values: Reviewed the dataset for any blank or missing entries.
   - Removed duplicates: Eliminated duplicate rows/entries to ensure data uniqueness.
   - Data validation: Verified data consistency and accuracy.
   - Data formatting: Ensured consistent formatting throughout the dataset.
   - Created new column: Added a new column to calculate total sales
   - Calculated total sales colunm: Performed calculations to derive total sales from provided columns ( Quantity and Price =F2*G2)
   - Removed null columns: Removed the null columns after importing the sales data to power BI in the transformation phase.
   - Checked datatype: Checked the column headers for inconsistent or wrong datatype
   - Created measure: Created measure for the order date to know the average sales year Average Sales Year -    *AVERAGE(SalesData[OrderDate].[Year])*

