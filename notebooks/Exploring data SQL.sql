-- How many invoices does the table contain?

select COUNT (distinct invoice)
from bootcamp.online_transactions_cleaned otc;


-- When was the first and last purchase?

select MIN(invoice_date), MAX(invoice_date)
from bootcamp.online_transactions_cleaned otc;


-- How many customers does the table contain?

select COUNT(distinct customer_id)
from bootcamp.online_transactions_cleaned otc;

-- How many different types of stocks did the customer purchase?

select COUNT (distinct stock_code)
from bootcamp.online_transactions_cleaned otc;

-- What is the most popular stock? 

select stock_code, sum(quantity)
from bootcamp.online_transactions_cleaned otc
group by 1
order by 2 DESC
limit 10;

-- What is the average order value i.e. price * quantity?

select round(AVG(price*quantity),2) as avg_order_value
from bootcamp.online_transactions_cleaned otc;

-- How many Stocks have the Description “Unknown”?

select COUNT(stock_code)
from bootcamp.online_transactions_cleaned otc 
where description = 'Unknown';








