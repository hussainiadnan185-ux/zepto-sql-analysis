# Zepto E-commerce SQL Analysis

Analysis of Zepto’s product catalog using SQL to understand pricing, discounts, and inventory behavior.

---

## Table of Contents
- [Overview](#overview)
- [Problem Statement](#problem-statement)
- [Dataset](#dataset)
- [Tools and Technologies](#tools-and-technologies)
- [Methods](#methods)
- [Key Insights](#key-insights)
- [Dashboard / Output](#dashboard--output)
- [How to Run This Project](#how-to-run-this-project)
- [Results and Conclusion](#results-and-conclusion)
- [Data Limitations & Assumptions](#data-limitations--assumptions)
- [Future Work](#future-work)
- [Author and Contact](#author-and-contact)

---

## Overview  
This project uses **MySQL** to analyze Zepto’s product inventory data and extract business-relevant insights related to pricing, discounts, stock availability, and potential revenue. The project simulates how a data analyst works with real e-commerce catalog data.

---

## Problem Statement  
Quick-commerce platforms like Zepto need to know:
- Which products offer the best value to customers  
- Which categories contribute the most to revenue  
- Which high-value products are out of stock  

This project answers these questions using SQL.

---

## Dataset  
The dataset contains Zepto’s product listings sourced from Kaggle.  
Each row represents one product SKU with attributes such as category, price, discount, weight, and stock status.

A `sku_id` column was added to uniquely identify each product before importing the data into MySQL.

---

## Tools and Technologies  
- MySQL  
- Excel (for adding SKU ID)  
- CSV  
- GitHub  

---

## Methods  
1. Imported the product dataset into MySQL.  
2. Cleaned the data by removing invalid prices and converting prices from paise to rupees.  
3. Performed data exploration to understand categories, stock levels, and duplicate products.  
4. Wrote SQL queries to analyze discounts, revenue by category, pricing efficiency, and inventory distribution.

---

## Key Insights  
- Some high-priced products are frequently out of stock, indicating demand-supply gaps.  
- Certain categories generate high revenue but offer lower discounts, showing premium positioning.  
- Weight-based price analysis highlights products that give better value per gram.

---

## Dashboard / Output  
This project produces SQL query outputs showing:
- Top discounted products  
- Revenue by category  
- Price-per-gram comparisons  
- Inventory distribution by weight  

---

## How to Run This Project  
1. Run the `zepto.sql` file in MySQL to create the table.  
2. Import `zepto.csv` into the `zepto` table.  
3. Execute the remaining queries in `zepto.sql` to view all analysis results.

---

## Results and Conclusion  
Using SQL, this project identifies pricing patterns, discount strategies, and inventory gaps that can help quick-commerce companies make better product and pricing decisions.

---

## Data Limitations & Assumptions  
- The dataset contains only product catalog data. There are no orders or customer transactions, so revenue values are estimated using price × available quantity.  
- Discounts are assumed to apply uniformly to all available units.  
- Stock status reflects a snapshot in time and may not represent long-term availability.  
- Customer behavior and demand trends cannot be analyzed with this dataset.

---

## Future Work  
- Add sales or order-level data to analyze real revenue and demand trends.  
- Build a Power BI dashboard for visualization.  
- Perform deeper category and supplier performance analysis.

---

## Author and Contact  
**Adnan**  
Aspiring Data Analyst  
GitHub: *(your GitHub link)*  
LinkedIn: *(your LinkedIn link)*
