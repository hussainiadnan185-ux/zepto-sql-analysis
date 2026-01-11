# 🛍️ **Zepto Retail Inventory & Pricing Analysis**

> Used SQL to analyze Zepto’s product catalog data, examining pricing, discounts, categories, and inventory structure.
---

## 📑 **Table of Contents**
- Overview  
- Problem Statement  
- Dataset  
- Tools and Technologies  
- Methods  
- Business Insights  
- Analysis Outputs   
- How to Run This Project  
- Results and Conclusion  
- Data Limitations & Assumptions  
- Future Work  
- Author and Contact  

---

## 📌 **Overview**
This project analyzes Zepto’s product inventory using **MySQL** to extract business insights related to pricing, discounts, stock availability, and category performance.

It simulates how a data analyst would evaluate an e-commerce catalog to support pricing and inventory decisions.

---

## 🎯 **Problem Statement**
Quick-commerce companies like Zepto need to know:
- Which products provide the best value to customers  
- Which categories generate the most revenue  
- Which important products are frequently out of stock  

This project answers these questions using SQL.

---

## 📊 **Dataset**
The dataset contains Zepto’s product catalog sourced from Kaggle.  
Each row represents one product SKU with attributes such as:
- Category  
- MRP  
- Discount  
- Weight  
- Stock availability  

A `sku_id` column was added before importing the data into MySQL.

---

## 🛠 **Tools and Technologies**
- MySQL  
- Excel (for SKU creation)  
- CSV  
- GitHub  

---

## 🔍 **Methods**
1. Imported the dataset into MySQL.  
2. Cleaned pricing data and converted values to rupees.  
3. Explored categories, stock levels, and pricing structure.  
4. Wrote SQL queries to analyze discounts, revenue, value-for-money, and inventory distribution.

---

## 📊 **Business Insights**

- Low-priced items such as wafers, pasta, and masala receive heavy discounts (~50%), showing Zepto uses them to attract customers and increase order size.  
- High-value essentials like ghee, diapers, atta, and spices are often out of stock, leading to loss of high-margin sales.  
- Most revenue comes from packaged goods such as cooking essentials and snacks, while fresh food contributes much less.  
- Premium products like oils, baby products, and pet food receive very little discount, indicating strong pricing power.  
- Fruits, vegetables, and meat require higher discounts due to spoilage and inventory risk.  
- Larger pack sizes provide better value per gram, encouraging bulk purchases.  
- Zepto prioritizes low-weight products to reduce delivery cost and support fast delivery.  
- Most warehouse space is occupied by packaged food rather than fresh produce.

---

## 📂 **Analysis Outputs** 

All SQL result screenshots for the eight business questions are stored in the `images/` folder of this repository.

These include:
- Best-value products by discount  
- High-MRP products that are out of stock  
- Revenue by category  
- Expensive products with low discounts  
- Categories with highest average discounts  
- Best value based on price per gram  
- Product weight grouping  
- Total inventory weight by category  

Open the `images/` folder to view the output tables for each query.

---

## ▶ **How to Run This Project**
1. Clone this repository:
   ```bash
   git clone https://github.com/hussainiadnan185-ux/zepto-sql-analysis.git
2. Run zepto.sql in MySQL to create the table.
3. Import zepto.csv into the table.
4. Execute the remaining queries in zepto.sql to view all analysis results.

---   

## 📌 **Results and Conclusion**
This project shows how Zepto uses discounts to drive volume, protects margins on premium products, and earns most of its revenue from packaged goods while using fresh groceries mainly to complete the shopping experience.

---

## ⚠ **Data Limitations & Assumptions**
1. The dataset contains only catalog data, not actual customer orders.
2. Revenue is estimated using price and stock availability.
3. Discounts are assumed to apply uniformly to all units.
4. Stock reflects only a single snapshot in time.

---

## 🚀 **Future Work**
1. Add order-level sales data.
2. Build a Power BI or Tableau dashboard.
3. Perform supplier-level and margin analysis.

---

##  **Author and Contact**

**Syed Murtuza Hussaini**  
Aspiring Data Analyst  
📧 Email: hussainiadnan185@gmail.com  
🔗 Linkedin: https://linkedin.com/in/syed-murtuza-hussaini-r304





