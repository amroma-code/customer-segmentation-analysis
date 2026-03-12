
-- Top customers by spending
SELECT customer_id, SUM(order_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC;

-- Average order value
SELECT AVG(order_amount) AS avg_order_value
FROM orders;

-- Orders per city
SELECT city, COUNT(order_id) AS total_orders
FROM orders
GROUP BY city
ORDER BY total_orders DESC;

-- Revenue by product category
SELECT product_category, SUM(order_amount) AS revenue
FROM orders
GROUP BY product_category
ORDER BY revenue DESC;
