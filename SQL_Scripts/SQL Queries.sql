#Classify restaurant ratings
SELECT
    restaurant_id,
    rating,
    CASE
        WHEN rating >= 4.5 THEN 'Excellent'
        WHEN rating >= 4.0 THEN 'Very Good'
        WHEN rating >= 3.0 THEN 'Good'
        ELSE 'Needs Improvement'
    END AS rating_category
FROM restaurants;

#Restaurants with above-average ratings
SELECT
    restaurant_id,
    cuisine,
    rating
FROM restaurants
WHERE rating > (
    SELECT AVG(rating)
    FROM restaurants
)
ORDER BY rating DESC;

#CTE - Common Table Expression
#Find customers with more than 5 orders
WITH customer_orders AS (
    SELECT
        customer_id,
        COUNT(order_id) AS total_orders
    FROM orders
    GROUP BY customer_id
)
SELECT *
FROM customer_orders
WHERE total_orders > 5
ORDER BY total_orders DESC;

# RANK function
# Rank restaurants based on total orders
WITH restaurant_sales AS (
    SELECT
        restaurant_id,
        COUNT(order_id) AS total_orders
    FROM orders
    GROUP BY restaurant_id
)
SELECT
    restaurant_id,
    total_orders,
    RANK() OVER (
        ORDER BY total_orders DESC
    ) AS restaurant_rank
FROM restaurant_sales;

#CREATE VIEW
#Customer order summary
CREATE OR REPLACE VIEW customer_order_summary AS
SELECT
    c.customer_id,
    c.city,
    COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.city;

# Display the view
SELECT *
FROM customer_order_summary;


