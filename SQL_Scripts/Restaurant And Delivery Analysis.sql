#Top 10 restaurants by order volume
SELECT
    r.restaurant_id,
    r.city,
    r.cuisine,
    COUNT(o.order_id) AS total_orders
FROM restaurants r
INNER JOIN orders o
ON r.restaurant_id = o.restaurant_id
GROUP BY r.restaurant_id, r.city, r.cuisine
ORDER BY total_orders DESC
LIMIT 10;

#Restaurant performance by rating
SELECT
    cuisine,
    ROUND(AVG(rating), 2) AS average_rating,
    COUNT(*) AS restaurant_count
FROM restaurants
GROUP BY cuisine
ORDER BY average_rating DESC;

#Order status distribution
SELECT
    status,
    COUNT(*) AS total_orders,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM orders),
        2
    ) AS percentage
FROM orders
GROUP BY status;

#Late delivery orders
SELECT
    order_id,
    customer_id,
    restaurant_id,
    order_time,
    delivery_time
FROM orders
WHERE status = 'Late';

#Orders by year and month
SELECT
    YEAR(order_time) AS order_year,
    MONTH(order_time) AS order_month,
    COUNT(*) AS total_orders
FROM orders
GROUP BY YEAR(order_time), MONTH(order_time)
ORDER BY order_year, order_month;
