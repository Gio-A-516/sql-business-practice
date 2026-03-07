-- Total number of products ordered by each customer
SELECT c.name, SUM(oi.quantity) AS total_products_ordered
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY c.name;
