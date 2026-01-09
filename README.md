# 🛒 **Zepto E-commerce SQL Analysis**

> *Analysis of Zepto’s product catalog using SQL to understand pricing, discounts, and inventory behavior.*

---

## 📑 **Table of Contents**
- Overview  
- Problem Statement  
- Dataset  
- Tools and Technologies  
- Methods  
- Business Insights  
- How to Run This Project  
- Results and Conclusion  
- Data Limitations & Assumptions  
- Future Work  
- Author and Contact  

---

## 📌 **Overview**
This project uses **MySQL** to analyze Zepto’s product inventory and extract business-relevant insights about **pricing, discounts, stock availability, and category performance**.

It simulates how a data analyst evaluates an e-commerce catalog to support pricing and inventory decisions.

---

## 🎯 **Problem Statement**
Quick-commerce companies like Zepto need to know:
- Which products give customers the best value  
- Which categories drive most revenue  
- Which important products are out of stock  

This project answers these questions using SQL.

---

## 📊 **Dataset**
The dataset contains Zepto’s product catalog from Kaggle.  
Each row represents a product SKU with:
- Category  
- MRP  
- Discount  
- Weight  
- Stock availability  

A `sku_id` column was added before loading the data into MySQL.

---

## 🛠 **Tools and Technologies**
- MySQL  
- Excel (for SKU creation)  
- CSV  
- GitHub  

---

## 🔍 **Methods**
1. Imported the dataset into MySQL.  
2. Cleaned prices and converted values to rupees.  
3. Explored categories, stock levels, and pricing.  
4. Wrote SQL queries to analyze discounts, revenue, value-for-money, and inventory distribution.

---

## 📊 **Business Insights**
### 1. Heavy discounting is used to drive volume  
![Q1](images/q1_discount.png)

Low-cost items like wafers, pasta, and masala are discounted by ~50%, showing Zepto uses them to attract customers and increase order size.

---

### 2. Important high-value products are out of stock  
![Q2](images/q2_outofstock.png)

Products like ghee, diapers, atta, and spices are missing despite high prices, causing loss of high-margin sales.

---

### 3. Packaged goods generate most revenue  
![Q3](images/q3_revenue.png)

Cooking Essentials and Munchies generate the most revenue, while fruits and meat contribute very little.

---

### 4. Expensive products are rarely discounted  
![Q4](images/q4_expensive.png)

Oils, baby products, and pet food have very low discounts, showing Zepto protects profit margins on premium items.

---

### 5. Fresh food needs more discounting  
![Q5](images/q5_discounts.png)

Fruits, vegetables, and meat have the highest average discounts because they spoil fast and need price cuts to sell.

---

### 6. Bigger packs give better value  
![Q6](images/q6_value.png)

Staples like onions, potatoes, and salt are cheapest per gram when bought in larger quantities.

---

### 7. Zepto optimizes for light-weight items  
![Q7](images/q7_weights.png)

Most products are small and light, helping reduce delivery cost and enable fast delivery.

---

### 8. Inventory is dominated by packaged goods  
![Q8](images/q8_inventory.png)

Most warehouse space is used by snacks, oils, and packaged foods rather than fresh groceries.

---

## ▶ **How to Run This Project**
1. Clone this repository:
   ```bash
   git clone https://github.com/hussainiadnan185-ux/zepto-sql-analysis.git
2. Run zepto.sql in MySQL to create the table.
3. Import zepto.csv into the table.
4. Execute the remaining queries in zepto.sql.
   
---

## 📌 **Results and Conclusion**
This project shows how Zepto uses discounts to drive volume, protects margins on premium products, and earns most of its revenue from packaged goods.

---

## ⚠ **Data Limitations & Assumptions**
1. Only catalog data is available, not real sales.
2. Revenue is estimated from price and stock.
3. Discounts are assumed to apply equally to all units.
4. Stock reflects only one point in time.

---

## 🚀 **Future Work**
1. Add real order and sales data.
2. Build a Power BI dashboard.
3. Perform supplier and margin analysis.

---

## **Author and Contact**

**Syed Murtuza Hussaini**
Aspiring Data Analyst
Email: hussainiadnan185@gmail.com

GitHub: https://github.com/hussainiadnan185-ux

