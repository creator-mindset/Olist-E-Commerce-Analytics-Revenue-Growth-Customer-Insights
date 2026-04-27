# 🛒 Olist E-Commerce Sales Analysis using SQL

## 📌 Project Overview

This project focuses on analyzing a real-world e-commerce dataset (Olist) to extract meaningful business insights related to sales performance, customer behavior, and product trends.

The analysis is performed using SQL by transforming raw transactional data into actionable insights that can help businesses make data-driven decisions.

---

## 🎯 Objectives

* Analyze monthly and overall sales performance
* Identify top-performing products and revenue drivers
* Understand customer purchasing behavior and retention
* Perform contribution analysis (Pareto / 80-20 rule)
* Derive insights that can improve business strategy

---

## 🧾 Dataset Description

The project is based on a structured e-commerce dataset consisting of multiple relational tables:

* **Customers** → Customer details (ID, name, city)
* **Orders** → Order-level information (date, total amount)
* **Order Items** → Product-level details (quantity, price)
* **Payments** → Payment transactions and revenue data

The dataset simulates real-world business scenarios with thousands of transaction records.

---

## ⚙️ Tools & Technologies

* **SQL (MySQL)** → Data querying and analysis
* **Excel** → Data preprocessing and validation

---

## 🔍 Key Analysis Performed

### 📈 Sales Trend Analysis

* Monthly revenue trends were analyzed to identify growth patterns
* Seasonal spikes and high-performing periods were detected

### 💹 Growth Rate Calculation

* Month-over-Month (MoM) growth calculated using window functions
* Identified periods with highest revenue acceleration

### 🛍️ Product Performance Analysis

* Top-selling products identified based on quantity and revenue
* Revenue contribution per product analyzed

### 🔁 Customer Behavior Analysis

* Repeat vs new customers identified
* Customer retention percentage calculated

### 🌆 Geographic Analysis

* City-wise revenue distribution analyzed
* High-demand regions identified

### 💰 Revenue Contribution (Pareto Analysis)

* Top 20% products contributing majority of revenue identified
* Helped understand business dependency on key products

---

## 📊 Key Insights

* 📈 Sales showed consistent growth with peaks reaching **25–30% MoM increase**
* 🛍️ Top-performing 20% products contributed **~60% of total revenue**
* 🔁 Approximately **35% of customers are repeat buyers**, indicating strong retention
* 🌆 A small number of cities contribute to the majority of total sales
* 💰 Revenue distribution highlights dependency on high-performing products

---

## 🚀 SQL Concepts Used

* **Joins** (INNER JOIN) for combining multiple tables
* **Aggregations** (SUM, COUNT, AVG) for data summarization
* **Window Functions** (LAG) for growth analysis
* **GROUP BY** for segmentation
* **Subqueries** for layered analysis

---

## 📁 Project Structure

```
/data        → Raw dataset files (CSV)
/sql         → SQL scripts (schema + analysis queries)
README.md    → Project documentation
```

---

## 💼 Business Impact

This analysis helps in:

* Identifying high-revenue products for better inventory planning
* Understanding customer retention to improve marketing strategies
* Detecting growth trends for business forecasting
* Focusing on top-performing regions for expansion

---

## 💡 Conclusion

This project demonstrates how SQL can be effectively used to analyze large-scale transactional data and generate actionable insights.

It highlights the importance of data-driven decision-making in e-commerce by uncovering hidden patterns in customer behavior, product performance, and revenue trends.

---



⭐ If you found this project useful, consider giving it a star!
