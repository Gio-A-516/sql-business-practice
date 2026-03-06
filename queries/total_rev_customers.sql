Get total revenue per customer

SELECT c.name, sum(p.amount) AS total_revenue
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id
JOIN payments p
	ON o.order_id = p.order_id
GROUP BY c.name;
