# Mini-Project-02
# Classicmodels Customer and Product Analysis

## 📌 Project Overview

This project uses the **Classicmodels database** to analyze customer information, sales representatives, product prices, stock levels, and payment activities using MySQL.

The project focuses on retrieving meaningful information from relational tables using SQL queries. It demonstrates how SQL can be used to filter, search, sort, group, and summarize business data.

## 🎯 Project Objectives

- Analyze customer locations and credit limits.
- Search for customers using names and patterns.
- Identify sales representatives based on customer locations.
- Analyze customer payment dates and payment activities.
- Find expensive products and compare product prices.
- Examine product stock levels and product lines.
- Calculate total, average, minimum, and maximum payment amounts.
- Practice SQL filtering, sorting, aggregation, and subqueries.

## 🛠️ Tools and Technologies

- **Database:** Classicmodels
- **Language:** SQL
- **Database Management System:** MySQL
- **Tables Used:** `customers`, `employees`, `payments`, and `products`

## 📂 Topics Covered

### 1. Customer Location Analysis

- Retrieve customers from selected countries, including the USA, France, Australia, and Poland.
- Find customers from Australia and Norway with credit limits above $1,000.
- Filter customers from specific countries based on their credit limits.

### 2. Customer Search

- Search for customers whose names contain the word "Gifts".
- Find customers whose first names start with J or end with l.
- Search for customers whose last names start with Y.
- Find last names that start with K and end with g.

### 3. Sales Representative Analysis

- Identify employee codes of sales representatives associated with selected countries.
- Retrieve the names and email addresses of sales representatives using table joins.

### 4. Customer Payment Analysis

- Count payments made before or after specified dates.
- Find Australian customers who made payments within a given date range.
- Retrieve payment records based on payment dates.
- Identify customers who made payments before a specified date.
- Find French customers who made payments during a particular period.

### 5. Product Price Analysis

- Find the five most expensive products in the Classic Cars product line.
- Identify the five most expensive products in the Trucks and Buses product line.
- Calculate average product prices for each product line.
- Find products whose buying prices are below 70% of their suggested retail prices (MSRP).

### 6. Product Stock Analysis

- Retrieve products with fewer than 200 units in stock.
- Find Classic Cars with more than 1,000 units in stock.
- Identify products with more than 4,000 units in stock and an MSRP below $200.

### 7. Product Search and Sorting

- Search for products containing "Ford" in their names.
- Sort Trucks and Buses from highest to lowest MSRP.
- Retrieve the next five most expensive Trucks and Buses.
- Identify the second most expensive Classic Car.
- Sort all products by MSRP in descending order.

### 8. Payment Aggregation

- Calculate the total number of payments before and after specified dates.
- Count payments made by each customer.
- Calculate the total payment amount for each customer.
- Calculate the total amount of all payments.
- Find the average payment made by each customer.
- Determine the minimum and maximum payment amounts for each customer.

## 💡 SQL Concepts Practiced

| SQL Concept | Purpose |
|---|---|
| `SELECT` | Retrieve data from tables |
| `WHERE` | Filter records based on conditions |
| `IN` | Match values against a list |
| `AND` | Apply multiple conditions |
| `LIKE` | Search using patterns |
| `DISTINCT` | Retrieve unique values |
| `JOIN` | Combine related tables |
| Subqueries | Filter data using another query |
| `COUNT()` | Count records |
| `SUM()` | Calculate totals |
| `AVG()` | Calculate averages |
| `MIN()` and `MAX()` | Find minimum and maximum values |
| `GROUP BY` | Group records for aggregation |
| `ORDER BY` | Sort query results |
| `LIMIT` and `OFFSET` | Restrict and skip rows |
| `ROUND()` | Round numeric values |
| `BETWEEN` | Filter values within a range |

## 📊 Expected Outcomes

After completing this project, the user will be able to:

- Write SQL queries to retrieve specific business information.
- Apply conditions to filter customer and product records.
- Use joins and subqueries to connect related information.
- Perform calculations on payment data.
- Rank and sort products based on their prices.
- Summarize customer payment activities using aggregate functions.

## ▶️ How to Run the Project

1. Install and open MySQL Workbench.
2. Ensure that the Classicmodels database is available on your MySQL server.
3. Open the SQL script containing the queries.
4. Execute the following command to select the database:

   ```sql
   USE Classicmodels;
   ```

5. Execute the queries individually or run the complete script.
6. Review the result grid to analyze the returned records.

## 📁 Project Structure

```text
Classicmodels-Analysis/
│
├── README.md
└── Classicmodels.sql
```

*Note: Replace `Classicmodels.sql` with the actual name of your SQL file if it is different.*

## 📝 Conclusion

This project demonstrates the practical application of MySQL for customer, product, and payment analysis. It provides hands-on experience with data filtering, pattern matching, table joins, subqueries, sorting, and aggregate functions.

The project helps develop fundamental SQL skills that are useful for database management, data analysis, and business reporting.

---
**Project Type:** SQL Practice Project  
**Database:** Classicmodels  
**Language:** SQL  
