-- List all orders and the products in each order
SELECT o.order_id, oi.product_id, oi.quantity
FROM orders o
INNER JOIN order_items oi
    ON o.order_id = oi.order_id;
