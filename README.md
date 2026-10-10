# Retail Sales Analysis using MySQL

## Project Overview

This project uses MySQL to analyze retail transaction data and explore sales performance, customer purchasing behavior, revenue contribution, and gross profitability. It demonstrates a practical SQL workflow, from data cleaning and exploration to business-focused analysis.

## Project Objectives

- Inspect and clean retail transaction data.
- Explore customer and category-level sales patterns.
- Identify high-value customers by total sales and gross profit.
- Analyze revenue contribution and gross profit margins by category.
- Examine sales activity by hour of the day.
- Use SQL techniques to answer business questions and communicate findings.

## Tools and Technologies

- **Database:** MySQL
- **SQL concepts:** Filtering, aggregation, `GROUP BY`, `CASE`, CTEs, subqueries, window functions, date/time functions, and ranking.
- **SQL environment:** MySQL Workbench

## Dataset

The `retail_sales` table contains the following columns:

| Column | Description |
|---|---|
| `transactions_id` | Unique transaction identifier |
| `sale_date` | Date of the sale |
| `sale_time` | Time of the sale |
| `customer_id` | Customer identifier |
| `gender` | Customer gender |
| `age` | Customer age |
| `category` | Product category |
| `quantity` | Quantity purchased |
| `price_per_unit` | Price per unit |
| `cogs` | Cost of goods sold |
| `total_sale` | Total sales amount for the transaction |


## Data Cleaning

The SQL script checks for missing values in selected transaction fields and removes rows that have missing values in those fields.

The deletion query should be reviewed before execution. Missing `age` or `customer_id` values are not automatically included in the deletion condition because they may still be useful for some analyses.

## Business Questions

The project answers the following questions:

1. Retrieve transactions made on a specific date.
2. Find Clothing transactions with a quantity of at least four during November 2022.
3. Calculate total sales for each category.
4. Find the average age of customers who purchased from the Beauty category.
5. Retrieve transactions with a total sale greater than 1,000.
6. Count transactions by gender and category.
7. Find the month with the highest average transaction value in each year.
8. Identify the top five customers by total sales.
9. Count unique customers in each category.
10. Group transactions into Morning, Afternoon, and Evening shifts.
11. Identify the top five customers by gross profit.
12. Calculate each category's percentage contribution to total revenue.
13. Analyze transaction count, revenue, and gross profit by hour.
14. Compare category-level revenue, cost, gross profit, and gross profit margin.

## Key Findings

The findings below are based on the query results captured during the analysis.

### Revenue Contribution by Category

| Category | Revenue Contribution |
|---|---:|
| Electronics | 34.42% |
| Clothing | 34.12% |
| Beauty | 31.46% |

Electronics contributed the largest share of revenue, although the three categories had relatively similar revenue contributions.

### Category Profitability

| Category | Total Revenue | Total Cost | Gross Profit | Gross Profit Margin |
|---|---:|---:|---:|---:|
| Clothing | 311,070.00 | 64,390.50 | 246,679.50 | 79.30% |
| Electronics | 313,810.00 | 67,162.35 | 246,647.65 | 78.60% |
| Beauty | 286,840.00 | 58,209.85 | 228,630.15 | 79.71% |

Clothing produced the highest total gross profit, narrowly ahead of Electronics. Beauty had the highest gross profit margin, meaning it retained the largest share of revenue after cost of goods sold.

### Peak Sales Hours

| Hour | Transactions | Revenue | Gross Profit |
|---|---:|---:|---:|
| 19:00 (7 PM) | 232 | 109,460.00 | 83,498.95 |
| 17:00 (5 PM) | 213 | 96,480.00 | 73,036.85 |
| 21:00 (9 PM) | 206 | 97,650.00 | 76,112.95 |

Among the hours shown in the captured results, 7 PM had the highest transaction count and revenue. The complete result set should be checked before making claims about every hour.

### Top Five Customers by Gross Profit

| Rank | Customer ID | Gross Profit |
|---:|---:|---:|
| 1 | 3 | 32,860.85 |
| 2 | 1 | 25,754.35 |
| 3 | 5 | 25,583.35 |
| 4 | 2 | 20,474.75 |
| 5 | 4 | 19,446.95 |

Customer-level analysis identifies which customers contribute the most gross profit across their transactions.

> **Metric definition:** Gross profit is calculated as `total_sale - cogs`. Gross profit is before other operating expenses and should not be interpreted as net profit. Monetary values are shown in dataset units because the currency was not specified.

## SQL Skills Demonstrated

- Filtering with `WHERE` and date ranges
- Aggregations with `SUM()`, `AVG()`, and `COUNT()`
- `GROUP BY` and distinct counts
- Conditional logic with `CASE`
- Common Table Expressions (CTEs)
- Window functions including `DENSE_RANK()` and `ROW_NUMBER()`
- Date and time functions including `YEAR()`, `MONTH()`, `EXTRACT()`, and `HOUR()`
- Subqueries and safe division with `NULLIF()`
- Revenue contribution and gross profit margin calculations

## How to Run

1. Open MySQL Workbench or another MySQL client.
2. Create or select a database.
3. Run the `CREATE TABLE` statement from the SQL script, if the table does not already exist.
4. Import the dataset into `retail_sales`, ensuring the CSV columns match the table schema.
5. Review the data-cleaning query and its corresponding `DELETE` statement before executing it.
6. Run the analysis queries and compare the results with the findings above.

## Future Improvements

- Build a Power BI dashboard for category, customer, and time-based analysis.
- Analyze month-over-month revenue growth.
- Compare repeat and one-time customers.
- Explore purchasing patterns by customer age group.
- Add screenshots of query results and document further findings.

## Author

**Parth Gupta**  
B.Tech Computer Science and Engineering

