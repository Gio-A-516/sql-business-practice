Show the order_id and payment amount for orders paid using 'Credit Card'

SELECT o.order_id, p.amount
FROM orders o 
INNER JOIN payments p
    ON o.order_id = p.order_id 
WHERE p.payment_method = 'Credit Card';
