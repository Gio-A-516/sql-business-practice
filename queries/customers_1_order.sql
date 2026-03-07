-- Count of orders per customer, only if they have at least 1
SELECT c.customer_id,
       COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT(o.order_id) >= 1;
