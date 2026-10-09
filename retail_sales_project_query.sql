-- Create the table

create table retail_sales(
		transactions_id	int primary key,
        sale_date date,
        sale_time time,
        customer_id	int,
        gender varchar(6),
        age	int,
        category varchar(15),	
        quantity int,	
        price_per_unit float,	
        cogs float,
        total_sale float
)

select count(*) from retail_sales;

select * from retail_sales;

-- Data Cleaning
select *
from retail_sales
where sale_date is null
   or sale_time is null
   or gender is null
   or category is null
   or quantity is null
   or cogs is null
   or total_sale is null;

   
delete from retail_sales
where 
   sale_date is null
   or sale_time is null
   or gender is null
   or category is null
   or quantity is null
   or cogs is null
   or total_sale is null;
   
-- Data Exploration

-- Total no of sales we have->
select count(*) as total_sale from retail_sales;

-- How many customers->
select count(distinct customer_id) from retail_sales;

-- How may categories we have->
select distinct category from retail_sales;

-- Data Analysis & business key problems & answers

-- Write an sql query to retrieve all records for sales made on '2022-11-05'->
select * from retail_sales
where sale_date = '2022-11-05';

-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' 
-- and the quantity sold is more than 4 in the month of Nov-2022->
select * from retail_sales
where category = 'Clothing' 
	  and quantity >= 4
	  and sale_date >= '2022-11-01' and sale_date < '2022-12-01';
      
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category->
select category,
	   sum(total_sale) as total_sales
from retail_sales
group by category;

-- Q.4 Write a SQL query to 
-- find the average age of customers who purchased items from the 'Beauty' category->

select avg(age) as avg_age, 
					category
from retail_sales
where category = 'Beauty';

-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000->

select * from retail_sales
where total_sale > 1000;

 -- Q.6 Write a SQL query to 
 -- find the total number of 
-- transactions (transaction_id) made by each gender in each category->
select gender, 
		category,
		count(transactions_id) as total_transactions
from retail_sales
group by gender, category;

-- Q.7 Write a SQL query to 
-- calculate the average sale for each month. Find out best selling month in each year->
with cte1 as(
select
    extract(year from sale_date) as year,
    extract(month from sale_date) as month,
    avg(total_sale) as avg_sale,
    dense_rank() over(partition by extract(year from sale_date) 
    order by avg(total_sale) desc) as d_rnk
from retail_sales
group by year, month)
select year, month, avg_sale, d_rnk
from cte1 where d_rnk = 1;


-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales
with cte1 as (
select customer_id,
	   sum(total_sale) as total_sales,
       row_number() over(order by sum(total_sale) desc) as rn
from retail_sales
group by customer_id)
select *
from cte1 
where rn <= 5;

-- Q.9 Write a SQL query to 
-- find the number of unique customers who purchased items from each category.

select category,
	   count(distinct customer_id) as unique_customers
from retail_sales
group by category;


-- Q.10 Write a SQL query to 
-- create each shift and number of orders 
-- (Example Morning <12, Afternoon Between 12 & 17, Evening >17)
with cte1 as (
select *,
       case
			when hour(sale_time) < 12 then 'Morning'
            when hour(sale_time) between 12 and 17 then 'Afternoon'
            else 'Evening'
		end as shift
from retail_sales)
select shift,
	   count(*) as total_orders
from cte1
group by shift
