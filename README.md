# Retail Sales Analysis using MySQL

## Project Overview

This project analyzes retail transaction data using MySQL to explore sales performance, customer purchasing behavior, and gross profit. It demonstrates how SQL can be used to clean data, summarize transactions, and answer practical business questions.

## Objectives

- Inspect and clean retail transaction data.
- Explore customers, transactions, and product categories.
- Compare sales performance across categories and time periods.
- Identify high-value customers by sales and gross profit.
- Analyze revenue contribution and gross profit margins.
- Investigate sales activity by hour of the day.

## Tools and Technologies

- **Database:** MySQL
- **Query language:** SQL
- **Concepts:** Aggregations, filtering, `GROUP BY`, `CASE`, Common Table Expressions (CTEs), window functions, date/time functions, subqueries, and ranking.

## Dataset

The analysis uses a retail sales table named `retail_sales` with the following fields:

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

> **Dataset note:** Add the original dataset source here if it came from a public source. Check the source's terms before sharing the dataset itself.

## Data Cleaning

The SQL script checks for missing values in important transaction fields and removes rows with missing values in the selected fields.

Before running the `DELETE` statement, review the rows returned by the cleaning query and confirm that removing them is appropriate for your dataset. Missing age or customer IDs may be better handled separately depending on the analysis.

## Analysis and Business Questions

The project explores the following questions:

1. Retrieve transactions made on a specific date.
2. Find Clothing transactions with a quantity of at least four during November 2022.
3. Calculate total sales by category.
4. Find the average age of customers who purchased from the Beauty category.
5. Retrieve transactions with a total sale greater than 1,000.
6. Count transactions by gender and category.
7. Identify the month with the highest average transaction value in each year.
8. Find the top five customers by total sales.
9. Count unique customers in each category.
10. Group transactions into Morning, Afternoon, and Evening shifts.
11. Find the top five customers by gross profit.
12. Calculate each category's percentage contribution to total revenue.
13. Analyze transactions, revenue, and gross profit by hour.
14. Compare category-level revenue, cost, gross profit, and gross profit margin.

### Key Metrics

- **Total revenue:** `SUM(total_sale)`
- **Gross profit:** `SUM(total_sale - cogs)`
- **Gross profit margin:** `gross profit / total revenue * 100`
- **Revenue contribution:** `category revenue / total revenue * 100`

Gross profit is calculated before other operating expenses; it should not be interpreted as net profit.

## SQL Skills Demonstrated

- Filtering with `WHERE` and date ranges
- Aggregation with `SUM`, `AVG`, and `COUNT`
- Grouping and distinct counts
- Conditional logic with `CASE`
- CTEs for structuring analytical queries
- Window functions including `DENSE_RANK()` and `ROW_NUMBER()`
- Date and time analysis with `YEAR()`, `MONTH()`, `EXTRACT()`, and `HOUR()`
- Subqueries and safe division with `NULLIF()`

## How to Run

1. Install and open MySQL Workbench or another MySQL client.
2. Create or select a database.
3. Create the `retail_sales` table using the table definition in the SQL script.
4. Import the dataset into the table, ensuring the CSV columns match the table schema.
5. Review the data-cleaning query before executing the `DELETE` statement.
6. Run the analysis queries in the SQL script.

If your table already exists, skip the `CREATE TABLE` statement or adapt it to your schema.

## Future Improvements

- Build a Power BI dashboard to visualize category and time-based trends.
- Add month-over-month revenue growth.
- Compare repeat and one-time customers.
- Explore age-group purchasing patterns.
- Document key findings using actual query results.

## Author

**Parth Gupta**  
B.Tech Computer Science and Engineering

- GitHub: https://github.com/your-username
- LinkedIn: https://www.linkedin.com/in/your-profile/

> Replace the placeholder GitHub and LinkedIn URLs with your actual profile links before publishing.
