-- Finding date from a column -- 
select ord_date from orders;

-- Month year  and day of order --
select year(ord_date) as order_year,
month(ord_date) as order_month,
day(ord_date) as order_day
from orders; 

-- Selecting current date --
select current_timestamp as right_now; 

-- Filtering data by dates --
select ord_num, ord_date as order_date
from orders 
where 
month(ord_date) = 5 and year(ord_date) = 2008; -- AS our data is totally based on 2008

select ord_num, ord_date as order_date 
from orders
where
ord_date between '2008-01-07' and '2008-10-07'; 

-- count the orders from date 2008-01-07 and 2008-10-07
select ord_num, ord_date as order_date, count(*)
from orders
where
ord_date between '2008-01-07' and '2008-10-07'
group by ord_num, ord_date; 

-- Filtering the orders based on dates, orders of dates less than todays date --
select ord_num, ord_date as order_date
from orders 
where 
ORD_DATE < now();

-- Filtering the orders based on dates, orders of dates greater than - 5 years from date --

select ord_num, ord_date as order_date
from orders 
where 
ORD_DATE > (year(now() - 5));

-- Filtering on the basis of dates --

select ord_num, month(ord_date) as order_month,
year(ord_date) as order_year,
ord_amount, ord_description from orders
where year(ord_date) = 2008
order by order_month, order_year;

-- using substring -- 
select c_code, c_name 
from customer 
where substring(c_name,1,3) = 'mar';

SELECT customer.c_code, customer.c_name, orders.ord_num
FROM customer
JOIN orders ON customer.c_code = orders.c_code
WHERE SUBSTRING(customer.c_name, 1, 3) = 'mar' 
GROUP BY orders.ord_num;

