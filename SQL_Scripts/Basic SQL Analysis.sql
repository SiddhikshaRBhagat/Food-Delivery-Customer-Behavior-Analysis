#Display all customers
SELECT *
FROM customers;

#Display all restaurants
SELECT *
FROM restaurants;

#Display unique restaurant cities
SELECT DISTINCT city
FROM restaurants;

#Find restaurants with rating above 4
SELECT *
FROM restaurants
WHERE rating > 4;

#Find restaurants with rating between 3 and 5
SELECT *
FROM restaurants
WHERE rating BETWEEN 3 AND 5;

#Find restaurants serving Indian cuisine
SELECT *
FROM restaurants
WHERE cuisine = 'Indian';

#Find customers from London
SELECT *
FROM customers
WHERE city = 'London';

#Find orders with Delivered status
SELECT *
FROM orders
WHERE status = 'Delivered';

#Find Delivered or Late orders
SELECT *
FROM orders
WHERE status IN ('Delivered', 'Late');

#Display latest orders first
SELECT *
FROM orders
ORDER BY order_time DESC
LIMIT 10;

#WHERE with AND
SELECT *
FROM restaurants
WHERE cuisine = 'Indian'
AND rating > 4;

#WHERE with OR
SELECT *
FROM restaurants
WHERE city = 'London'
OR city = 'Manchester';

#WHERE with NOT
SELECT *
FROM orders
WHERE status != 'Cancelled';

#LIKE operator
# Find customers whose city starts with L
SELECT *
FROM customers
WHERE city LIKE 'L%';

#BETWEEN operator
#Find menu items priced between 10 and 25
SELECT *
FROM menu_items
WHERE price BETWEEN 10 AND 25;

#IN operator
SELECT *
FROM restaurants
WHERE cuisine IN ('Indian', 'Chinese', 'Italian');
