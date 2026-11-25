#Identify repeat customers
SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1
ORDER BY total_orders DESC;

#Top 10 customers by order count
SELECT
    c.customer_id,
    c.city,
    COUNT(o.order_id) AS total_orders
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.city
ORDER BY total_orders DESC
LIMIT 10;

#Customer order distribution by city
SELECT
    c.city,
    COUNT(o.order_id) AS total_orders
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_orders DESC;

#Customer spending analysis
SELECT
    o.customer_id,
    ROUND(SUM(oi.quantity * oi.price), 2) AS total_spending
FROM orders o
INNER JOIN order_items oi
ON o.order_id = oi.order_id
WHERE o.status IN ('Delivered', 'Late')
GROUP BY o.customer_id
ORDER BY total_spending DESC
LIMIT 10;

#Average order value
SELECT
    ROUND(
        SUM(oi.quantity * oi.price) / COUNT(DISTINCT o.order_id),
        2
    ) AS average_order_value
FROM orders o
INNER JOIN order_items oi
ON o.order_id = oi.order_id
WHERE o.status IN ('Delivered', 'Late');
