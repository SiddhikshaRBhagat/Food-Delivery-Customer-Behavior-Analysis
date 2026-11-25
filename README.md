# Food Delivery & Customer Behavior Analysis using SQL

## Project Overview

The **Food Delivery & Customer Behavior Analysis** project focuses on analysing food delivery operations, customer ordering patterns, restaurant performance and business trends using MySQL.

The project uses relational datasets containing customer information, restaurant details, order transactions, menu items and order-item records. SQL queries are used to extract meaningful insights, identify purchasing patterns and evaluate key operational and business performance indicators.

The primary objective is to transform raw transactional data into structured business insights that can support data-driven decision-making for food delivery platforms and their stakeholders.

## Business Objectives

- Analyse customer ordering behaviour and identify repeat purchasing patterns.
- Evaluate restaurant performance based on order volume, cuisine type and customer ratings.
- Examine order status distribution to understand delivery operations.
- Identify high-value customers based on their order spending.
- Analyse popular menu items and product-level sales performance.
- Explore revenue trends and customer demand patterns.
- Provide stakeholders with meaningful insights to support business planning and operational improvements.

## Dataset Information

The project uses five CSV datasets:

| Dataset | Records | Description |
|---|---:|---|
| Customers | 1,500 | Customer ID, city and signup date |
| Restaurants | 120 | Restaurant ID, cuisine, city and rating |
| Orders | 5,000 | Order ID, customer, restaurant, order time, delivery time and status |
| Menu Items | 400 | Item ID, restaurant ID and menu price |
| Order Items | 12,391 | Order ID, item ID, quantity and price |

**Total records:** 19,411

## Tools & Technologies

- **MySQL Workbench:** Database creation, SQL execution and analysis.
- **SQL:** Data querying, transformation, aggregation and business analysis.
- **CSV:** Source datasets and transactional records.
- **GitHub:** Project documentation and version management.

## SQL Concepts Implemented

### 1. Data Exploration & Validation
- SELECT and DISTINCT
- WHERE, AND, OR and NOT
- IS NULL and duplicate checks
- ORDER BY and LIMIT

### 2. Data Aggregation
- COUNT(), SUM(), AVG(), MIN() and MAX()
- GROUP BY and HAVING
- Revenue and order-volume analysis

### 3. SQL Joins
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Multiple-table JOINs

### 4. Advanced SQL
- CASE statements
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- RANK() and analytical functions
- SQL Views

## Key Business Analysis Areas

**Customer Behaviour Analysis**
- Repeat customer identification
- Customer order frequency
- Customer spending patterns
- City-wise customer distribution

**Restaurant Performance Analysis**
- Restaurant-wise order volume
- Cuisine-wise restaurant distribution
- Average restaurant ratings
- Restaurant revenue comparison

**Order & Delivery Analysis**
- Order status distribution
- Delivered, late and cancelled order analysis
- Monthly order trends
- Operational performance indicators

**Product & Revenue Analysis**
- Menu item sales analysis
- Quantity sold by menu item
- Restaurant-wise revenue
- Average order value

## Stakeholder Perspective

The analysis is intended to support different business stakeholders:

- **Business Managers:** Understand overall order performance and revenue contribution.
- **Restaurant Partners:** Identify restaurant performance and popular menu items.
- **Operations Managers:** Monitor order status and identify potential delivery-related operational issues.
- **Customer Experience Teams:** Understand repeat purchasing patterns and customer spending behaviour.

## Project Workflow

1. Imported five CSV datasets into MySQL Workbench.
2. Created a relational database named `food_delivery_analysis`.
3. Explored dataset structures and verified data types.
4. Performed data validation and checks for missing values and duplicate records.
5. Applied SQL queries using filtering, aggregation and joins.
6. Conducted customer, restaurant, delivery and revenue analysis.
7. Used advanced SQL techniques to derive business insights.

## Business Value

This project demonstrates how SQL can be used to convert raw food delivery transactions into actionable business information. The resulting analysis can help stakeholders understand customer purchasing behaviour, compare restaurant performance, monitor order trends and identify opportunities for improving business operations and customer experience.

## Conclusion

The project provides practical experience in relational database management, data exploration, SQL querying and business-focused analysis. It demonstrates the application of beginner-to-advanced SQL concepts to a real-world business scenario and highlights the importance of data-driven decision-making in the food delivery industry.

