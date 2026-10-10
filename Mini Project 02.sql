USE Classicmodels;

-- CUSTOMER LOCATIONS
-- Customers in USA, France, Australia and Poland
SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Australia', 'Poland');

-- Customers in Australia and Norway with credit limit > $1000
SELECT * FROM customers
WHERE country IN ('Australia', 'Norway')
  AND creditLimit > 1000;
  
  -- CREDIT LIMITS
  -- Australia customers with credit limit higher than $1000
  SELECT * FROM customers
WHERE country = 'Australia' AND creditLimit > 1000;

-- USA and Spain customers with credit limit higher than $1000
SELECT * FROM customers
WHERE country IN ('USA', 'Spain')
  AND creditLimit > 1000;
  
  -- CUSTOMER SEARCHES
  -- Customers with "Gifts" in their name
  SELECT * FROM customers
WHERE customerName LIKE '%Gifts%';

-- Customers whose first name starts with J
SELECT * FROM customers
WHERE contactFirstName LIKE 'J%';

-- Customers whose first name ends with l
SELECT * FROM customers
WHERE contactFirstName LIKE '%l';

-- Customers whose last name starts with Y
SELECT * FROM customers
WHERE contactLastName LIKE 'Y%';

-- Last name starts with K and ends with g
SELECT * FROM customers
 WHERE contactLastName LIKE 'K%g';
 
 -- SALES REPRESENTATIVE
 -- Employee codes of sales representatives for USA, Japan and Australia
 SELECT DISTINCT salesRepEmployeeNumber FROM customers
WHERE country IN ('USA', 'Japan', 'Australia');

-- Names and email addresses of those employees
SELECT DISTINCT e.employeeNumber,e.firstName,e.lastName,e.email
FROM employees e
JOIN customers c
    ON c.salesRepEmployeeNumber = e.employeeNumber
WHERE c.country IN ('USA', 'Japan', 'Austealia');

-- CUSTOMER PAYMENTS
-- Total number of payments before October 19, 2004
SELECT COUNT(*) AS TotalPayments FROM payments
WHERE paymentDate < '2004-10-19';

-- Total number of payments after June 05, 2003
SELECT COUNT(*) AS TotalPayments FROM payments
WHERE paymentDate > '2003-06-05';

-- Australia customers who made payments between June 05, 2003 and October 19, 2004
SELECT * FROM customers
WHERE country = 'Australia'
AND customerNumber IN (
    SELECT DISTINCT customerNumber
    FROM payments
    WHERE paymentDate BETWEEN '2003-06-05' AND '2004-10-19'
);

-- PRODUCT PRICE
-- 5 most expensive products from the "Classic Cars" product line
SELECT * FROM products
WHERE productLine = 'Classic Cars'
ORDER BY MSRP DESC
LIMIT 5;

-- 5 most expensive products from "Trucks and Buses"
 SELECT productName,productLine,ROUND(MSRP) AS SalePrice FROM products
WHERE productLine = 'Trucks and Buses'
ORDER BY SalePrice DESC
LIMIT 5;

-- PRODUCT LINES
-- Product lines with the highest average product prices
SELECT productLine,
       AVG(MSRP) AS AveragePrice FROM products
GROUP BY productLine
ORDER BY AveragePrice DESC;

-- STOCK LEVELS
-- Products with quantity in stock less than 200
SELECT * FROM products
WHERE quantityInStock < 200;

-- Classic Cars with more than 1000 units in stock
SELECT productName,buyPrice,quantityInStock,productLine FROM products
WHERE productLine = 'Classic Cars'
  AND quantityInStock > 1000
ORDER BY buyPrice DESC
LIMIT 10;

-- Products with more than 4000 units in stock and MSRP below $200
SELECT * FROM products
WHERE quantityInStock > 4000 AND MSRP < 200;

-- PRODUCT SEARCHES
-- Find products containing "Ford"
SELECT * FROM products
WHERE productName LIKE '%Ford%';

-- Find products sold for less than 70% of MSRP
SELECT productName FROM products
WHERE buyPrice < 0.7 * MSRP;

-- PRODUCT SORTING
-- Sort Trucks and Buses from most expensive to cheapest
SELECT * FROM products
WHERE productLine = 'Trucks and Buses'
ORDER BY MSRP DESC;

-- Find the next 5 most expensive Trucks and Buses
SELECT * FROM products 
WHERE productLine = "Trucks and buses"
ORDER BY MSRP DESC
LIMIT 5 OFFSET 5;

-- Find the 2nd most expensive Classic Cars
SELECT * FROM products
WHERE productLine = 'Classic Cars'
ORDER BY MSRP DESC
LIMIT 1 OFFSET 1;

-- Sort products by MSRP
SELECT * FROM products
ORDER BY MSRP DESC;

-- PAYMENTS DATES
-- Payments made before December 18, 2004
SELECT * FROM payments
WHERE paymentDate < '2004-12-18';

-- Payments made after June 06 , 2003
SELECT * FROM payments
WHERE paymentDate > '2003-06-06';

-- PAYMENTS COUNTS
-- Total number of payments before December 18, 2004
SELECT COUNT(*) AS TotalPayments FROM payments
WHERE paymentDate < '2004-12-18';

-- Total number of payments after June 06,2003
SELECT COUNT(*) AS TotalPayments FROM payments
WHERE paymentDate < '2003-06-06';

-- Number of payments made by each customer before December 18,2004
SELECT customerNumber,
       COUNT(*) AS TotalPayments
FROM payments
WHERE paymentDate < '2004-12-18'
GROUP BY customerNumber
ORDER BY TotalPayments DESC;

-- CUSTOMER PAYMENT ACTIVITY
-- Customer numbers who made payments before December 18, 2004
SELECT DISTINCT customerNumber FROM payments
WHERE paymentDate <'2004-12-18';

-- Details of those customers
SELECT *
FROM customers
WHERE customerNumber IN (
    SELECT DISTINCT customerNumber
    FROM payments
    WHERE paymentDate < '2004-10-28' 
);

-- France customers who made payments between April 1, 2003 and March 31, 2004
SELECT * FROM customers
WHERE country = 'France'
AND customerNumber IN (
    SELECT DISTINCT customerNumber
    FROM payments
    WHERE paymentDate BETWEEN '2003-04-01' AND '2004-03-31'
);

-- TOTAL PAYMENT
-- Total payment amount for each customer
SELECT customerNumber,
       SUM(amount) AS TotalAmount
FROM payments
WHERE paymentDate < '2004-12-18'
GROUP BY customerNumber;

-- TOTAL AMOUNT
-- Total amount of all payments
SELECT SUM(amount) AS TotalPayments
FROM payments;

-- AVERAGE PAYMENTS
-- Average payment made by each customer
SELECT customerNumber,
       AVG(amount) AS AveragePayment
FROM payments
WHERE paymentDate < '2004-12-18'
GROUP BY customerNumber;

-- MINIMUM AND MAXIMUM PAYMENTS
-- Minimum and maximum payment for each customer
SELECT customerNumber,
       MIN(amount) AS MinimumPayment,
       MAX(amount) AS MaximumPayment
FROM payments
WHERE paymentDate < '2004-12-18'
GROUP BY customerNumber;