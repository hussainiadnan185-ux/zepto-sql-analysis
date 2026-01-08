-- 1. Create the database
CREATE DATABASE IF NOT EXISTS zepto_project;

-- 2. Select the database
USE zepto_project;

-- 3. Drop table if it already exists
DROP TABLE IF EXISTS zepto;

-- 4. Create the table
CREATE TABLE zepto (
    sku_id INT PRIMARY KEY,
    category VARCHAR(120),
    name VARCHAR(150),
    mrp DECIMAL(8,2),
    discountPercent DECIMAL(5,2),
    availableQuantity INT,
    discountedSellingPrice DECIMAL(8,2),
    weightInGms INT,
    outOfStock VARCHAR(10),
    quantity INT
);

-- DATA EXPLORATION

-- Count total rows
SELECT COUNT(*) FROM zepto;

-- Sample data
SELECT * FROM zepto 
LIMIT 10;

-- Check for NULL values
SELECT * FROM zepto
WHERE name IS NULL
   OR category IS NULL
   OR mrp IS NULL
   OR discountPercent IS NULL
   OR discountedSellingPrice IS NULL
   OR weightInGms IS NULL
   OR availableQuantity IS NULL
   OR outOfStock IS NULL
   OR quantity IS NULL;

-- List all product categories
SELECT DISTINCT category
FROM zepto
ORDER BY category;

-- Products in stock vs out of stock
SELECT outOfStock, COUNT(sku_id) AS total_products
FROM zepto
GROUP BY outOfStock;

-- Products that appear multiple times (different SKUs)
SELECT name, COUNT(sku_id) AS number_of_skus
FROM zepto
GROUP BY name
HAVING COUNT(sku_id) > 1
ORDER BY COUNT(sku_id) DESC;

-- SAFE MODE OFF 
   SET SQL_SAFE_UPDATES = 0;

-- DATA CLEANING

-- Find Products with zero price
SELECT * FROM zepto
WHERE mrp = 0 OR discountedSellingPrice = 0;

-- Remove products where MRP is zero
DELETE FROM zepto
WHERE mrp = 0;

-- Convert prices from  paise to rupees
UPDATE zepto
SET mrp = mrp / 100,
    discountedSellingPrice = discountedSellingPrice / 100;

-- Verify conversion
SELECT mrp, discountedSellingPrice FROM zepto;

-- DATA ANALYSIS

-- Q1: Top 10 best-value products by discount
SELECT name, mrp, discountPercent
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;

-- Q2: High MRP products that are out of stock
SELECT DISTINCT name, mrp
FROM zepto
WHERE outOfStock = 'TRUE' AND mrp > 300
ORDER BY mrp DESC;

-- Q3: Estimated revenue by category
SELECT category,
       SUM(discountedSellingPrice * availableQuantity) AS total_revenue
FROM zepto
GROUP BY category
ORDER BY total_revenue DESC;

-- Q4: Expensive products with low discount
SELECT DISTINCT name, mrp, discountPercent
FROM zepto
WHERE mrp > 500 AND discountPercent < 10
ORDER BY mrp DESC, discountPercent ;

-- Q5: Top 5 categories by average discount
SELECT category,
       ROUND(AVG(discountPercent), 2) AS avg_discount
FROM zepto
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;

-- Q6: Best value products based on price per gram
SELECT name,
       weightInGms,
       discountedSellingPrice,
       ROUND(discountedSellingPrice / weightInGms, 2) AS price_per_gram
FROM zepto
WHERE weightInGms >= 100
ORDER BY price_per_gram;

-- Q7: Weight-based product grouping
SELECT name,
       weightInGms,
       CASE
           WHEN weightInGms < 1000 THEN 'Low'
           WHEN weightInGms < 5000 THEN 'Medium'
           ELSE 'Bulk'
       END AS weight_category
FROM zepto;

-- Q8: Total Inventory Weight per Category
-- This shows which categories take up the most warehouse space
SELECT category,
       SUM(weightInGms * availableQuantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight DESC;



