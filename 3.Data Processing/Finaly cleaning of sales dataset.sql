-- Databricks notebook source
CREATE OR REPLACE TABLE retail.store.`_case_study`AS
SELECT
sales_date,
ROUND(sales, 2) AS sales,
ROUND(cost_of_sales, 2) AS cost_of_sales,
quantity_sold,

---price per unit
ROUND(
    sales/quantity_sold,
    2)
    AS unit_sales_price,

    ---cost per unit
    ROUND(
        cost_of_sales/quantity_sold,
        2)
        AS cost_per_unit,

    --- gross profit
    ROUND(
        (sales-cost_of_sales),
        2)
        AS gross_profit,

    --- gross profit percentage
    ROUND(
        ((sales-cost_of_sales)/sales) * 100,
        2)
        AS gross_profit_percentage,

        ---profit per unit
    ROUND(
        (sales-cost_of_sales)/quantity_sold,
        2)
        AS profit_per_unit,

        ---profit margin
    ROUND(
        (sales-cost_of_sales)/quantity_sold,
        2)
        AS gross_profit_per_unit,

        DAYNAME(sales_date) AS day_name,
        MONTHNAME(sales_date) AS month_name,
        YEAR(sales_date) AS year,

        CASE
        WHEN sales / quantity_sold < 35 THEN 'promotion'
        ELSE 'normal price'
        END AS promotion_flag

FROM retail.store.`_case_study`;

        
    
    

