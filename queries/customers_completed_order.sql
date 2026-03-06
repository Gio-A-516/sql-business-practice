Only return customers with at least one order categorized by completed or pending

select customer_id
count(case when status = 'completed' then 1 end) as completed_orders, 
count(case when status = 'pending' then 1 end) as pending_orders
having completed_orders and pending_orders >= 1
from orders;
