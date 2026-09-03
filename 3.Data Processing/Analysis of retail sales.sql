-- Databricks notebook source
----checking the rows
SELECT*
FROM retail.store.`_case_study`
LIMIT 10;

-----checking the columns
DESCRIBE retail.store.`_case_study`;

----checking number of records
SELECT COUNT(*)
FROM retail.store.`_case_study`;

------checking missing values
SELECT COUNT(*) - COUNT(`Date`) AS `missing_Date`,
COUNT(*) - COUNT(`Sales`) AS `missing_Sales`,
COUNT(*) - COUNT(`Cost Of Sales`) AS `missing_Cost Of Sales`,
COUNT(*) - COUNT(`Quantity Sold`) AS `missing_Quantity Sold`
FROM retail.store.`_case_study`;

------checking duplicates
SELECT
  `Date`,
  `Sales`,
  `Cost Of Sales`,
  `Quantity Sold`,
  COUNT(*) AS `duplicate_count`
FROM retail.store.`_case_study`

GROUP BY 
    `Date`, 
    `Sales`, 
    `Cost Of Sales`, 
    `Quantity Sold`
HAVING COUNT(*) > 1;

----checking duplicate sales value
SELECT
sales,
COUNT(*) AS occurances
FROM retail.store.`_case_study`
GROUP BY sales
HAVING COUNT(*) > 1;

---checking the dates
SELECT*
FROM retail.store.`_case_study`
WHERE sales =42723.524457810243;

----cleaning column names and convert data types
CREATE OR REPLACE TEMPORARY VIEW store_cleaned AS
SELECT
  CAST(`Date` AS DATE) AS sales_date,
  CAST(`Sales` AS DECIMAL(18,4)) AS sales,
  CAST(`Cost Of Sales` AS DECIMAL(18,4)) AS cost_of_sales,
  CAST(`Quantity Sold` AS INT) AS quantity_sold
FROM retail.store.`_case_study`;

----checking negative values
SELECT *
FROM store_cleaned
WHERE sales < 0 OR cost_of_sales < 0 OR quantity_sold < 0;

----checking zero quantities
SELECT *
FROM store_cleaned
WHERE quantity_sold = 0;

-----selling price per unit
SELECT
ROUND(sales/quantity_sold, 2) AS unit_sales_price
FROM store_cleaned;

----calculate cost per unit
SELECT
ROUND(cost_of_sales/quantity_sold, 2) AS cost_per_unit
FROM store_cleaned;

----calculate profit per unit
SELECT
ROUND(sales/quantity_sold - cost_of_sales/quantity_sold, 2) AS profit_per_unit
FROM store_cleaned;

----calculate gross profit
SELECT
ROUND((sales - cost_of_sales)/sales * 100, 2) AS gross_profit_percentage
FROM store_cleaned;

----adding time analysis
CREATE OR REPLACE TEMPORARY VIEW store_cleaned_time AS
SELECT *,
  EXTRACT(YEAR FROM sales_date) AS year,
  EXTRACT(MONTH FROM sales_date) AS month_name,
  EXTRACT(DAY FROM sales_date) AS day_name,
  EXTRACT(DOW FROM sales_date) AS day_of_week,
  EXTRACT(DOY FROM sales_date) AS day_of_year,
  EXTRACT(HOUR FROM sales_date) AS hour,
  EXTRACT(MINUTE FROM sales_date) AS minute,
  EXTRACT(SECOND FROM sales_date) AS second
FROM store_cleaned;

---total sales
SELECT
 SUM(sales) AS total_sales
FROM store_cleaned_time;

----total units sold
SELECT
 SUM(quantity_sold) AS total_units_sold
FROM store_cleaned_time;

----average units selling price
SELECT
ROUND(AVG(sales/quantity_sold), 2) AS avg_unit_sales_price
FROM store_cleaned_time;

---checking first and last transaction date
SELECT
MIN(sales_date) AS first_transaction_date,
MAX(sales_date) AS last_transaction_date
FROM store_cleaned_time;

---total sales per year
SELECT
 year,
 SUM(sales) AS total_sales
FROM




