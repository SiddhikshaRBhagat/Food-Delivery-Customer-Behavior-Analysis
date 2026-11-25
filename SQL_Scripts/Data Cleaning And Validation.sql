CREATE DATABASE food_delivery_analysis;

# Select project database
USE food_delivery_analysis;

# Check all imported tables
SHOW TABLES;

# Check table structures
DESCRIBE customers_medium;
DESCRIBE restaurants;
DESCRIBE orders_medium;
DESCRIBE menu_items;
DESCRIBE order_items;


USE food_delivery_analysis;
RENAME TABLE `order_items (2)` TO order_items;
RENAME TABLE customers_medium TO customers;
RENAME TABLE orders_medium TO orders;


# 1. Check total records in each table
SELECT COUNT(*) AS total_customers FROM customers;
SELECT COUNT(*) AS total_restaurants FROM restaurants;
SELECT COUNT(*) AS total_orders FROM orders;
SELECT COUNT(*) AS total_menu_items FROM menu_items;
SELECT COUNT(*) AS total_order_items FROM order_items;

# 2. Check NULL values in customers
SELECT *
FROM customers
WHERE customer_id IS NULL
   OR city IS NULL
   OR signup_date IS NULL;

# 3. Check NULL values in orders
SELECT *
FROM orders
WHERE order_id IS NULL
   OR customer_id IS NULL
   OR restaurant_id IS NULL
   OR order_time IS NULL
   OR delivery_time IS NULL
   OR status IS NULL;

# 4. Check duplicate order IDs
SELECT order_id, COUNT(*) AS duplicate_count
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;

# 5. Check duplicate customer IDs
SELECT customer_id, COUNT(*) AS duplicate_count
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

# 6. Check invalid order quantities
SELECT *
FROM order_items
WHERE quantity <= 0;

# 7. Check invalid prices
SELECT *
FROM order_items
WHERE price <= 0;

# 8. Check order status values
SELECT DISTINCT status
FROM orders;

