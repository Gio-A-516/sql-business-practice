Show the order_id and payment amount for orders paid using 'Credit Card'

select o.order_id, p.amount
from orders o 
inner join on payments p
    on o.order_id = p.order_id 
where p.payment_method = 'Credit Card';
