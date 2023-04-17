-- Shows the count of orders -- 

select c_code, count(1) as ord_num
from customer_db.orders 
group by c_code;

-- group by multiple columns and join it from different tables based on count -- 

Select customer.c_code,C_NAME, count(1) as ord_num
from customer_db.orders 
join customer on orders.c_code = customer.c_code
group by customer.c_code, customer.c_name order by ord_num desc;

Select c_name, count(1)
from customer
group by c_name
having count(1) > 1;



