# 📊 Retail Sales Performance Analysis Dashboard

## 📌 Project Overview

This project analyses a simulated retail sales dataset from a large retail store. The dataset contains daily trading information for one product, including:

- 📅 Sales date
- 💰 Total sales value (Rand)
- 💵 Cost of sales
- 📦 Quantity sold

The objective of this project was to clean the data, create business metrics, analyse pricing behaviour, measure profitability, evaluate promotional impact, and develop an interactive **Databricks SQL Dashboard**.
---
# 🎯 Business Objectives

The analysis aims to answer:

1. What is the daily sales price per unit?
2. What is the average selling price of the product?
3. What is the daily gross profit percentage?
4. What is the gross profit percentage per unit?
5. How does the product perform during promotional pricing?
6. What additional business insights can be derived from the data?

---

# 🛠️ Tools Used

| Tool | Purpose |
|---|---|
| Databricks SQL | Data cleaning, transformation and dashboard creation |
| SQL | Data analysis and KPI calculations |
| Excel | Initial dataset exploration |
| GitHub | Project documentation and version control |
# 🗂️ Dataset Description

The dataset contains daily product-level sales information.

| Column | Description |
|---|---|
| Date | Date of sales |
| Sales | Total revenue generated |
| Cost of Sales | Total cost incurred |
| Quantity Sold | Number of units sold |

---

# 🧹 Data Cleaning Process

The following data preparation steps were completed:

✅ Checked dataset structure  
✅ Verified data types  
✅ Checked missing values  
✅ Investigated duplicate records  
✅ Validated numerical values  
✅ Created calculated fields  
✅ Prepared final analytical table  
# 🔄 Data Transformation

A final analysis table was created:

## `sales_final`

Additional calculated fields included:

| Metric | Formula |
|---|---|
| Unit Sales Price | Sales ÷ Quantity Sold |
| Cost Per Unit | Cost of Sales ÷ Quantity Sold |
| Gross Profit | Sales - Cost of Sales |
| Gross Profit % | (Gross Profit ÷ Sales) × 100 |
| Gross Profit Per Unit | Gross Profit ÷ Quantity Sold |

# 📈 Key Performance Indicators (KPIs)

The dashboard includes:

### 🏷️ Average Unit Selling Price
Shows average customer purchase price.

### 📈 Gross Profit
Shows total profitability.

### 📊 Gross Profit Margin %
Measures business efficiency.

### 📅 Average Daily Sales
Shows typical daily performance.

# 📊 Dashboard Visualizations

The Databricks SQL Dashboard contains:

## 1. Sales Trend Analysis

**Chart:** Line Chart

Shows:
- Revenue movement over time
- Growth trends
- Sales fluctuations
## 2. Quantity Sold Trend

**Chart:** Line Chart

Shows:
- Changes in customer demand
- High and low sales periods

## 3. Price vs Demand Analysis

**Chart:** Scatter Plot

Purpose:

To understand price elasticity.

Shows relationship between:

- Unit selling price
- Quantity sold

---

## 4. Sales vs Profitability

**Chart:** Combo Chart

Displays:

- Total sales
- Gross profit percentage

Helps identify periods of high revenue but low profitability.

## 5. Promotion Impact Analysis

Evaluates whether reduced pricing increases demand.

Comparison:

| Category | Analysis |
|---|---|
| Promotion Price | Lower selling price |
| Normal Price | Standard selling price |

# 📌 Business Insights

### 1. Pricing Behaviour

The product price changes over time, allowing analysis of customer response to price changes.

### 2. Customer Demand

Lower prices generally resulted in increased sales volume during promotional periods.
### 3. Profitability

Higher sales volume does not always mean higher profit. Discount strategies must consider margins.

### 4. Promotional Strategy

Promotions should be targeted during periods where increased volume offsets reduced profit margins.

# 💡 Recommendations

✅ Use data-driven promotional pricing  
✅ Monitor profit margins during discounts  
✅ Identify high-performing sales periods  
✅ Optimise pricing based on customer demand  
✅ Track price elasticity regularly  

# 🚀 Conclusion

This project demonstrates an end-to-end data analytics workflow:

**Raw Data → Data Cleaning → Data Transformation → KPI Development → Dashboard → Business Insights**

The final Databricks dashboard provides actionable insights to support pricing decisions, promotional strategies, and revenue optimisation.
