Select customers with at least 2 orders

select c.customer_id, count(o.order_id) as order_count
from customers c
join orders o
	on c.customer_id = o.customer_id
group by c.customer_id
having count(o.order_id) > 2;
