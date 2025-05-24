# 📊 Calculating Free-to-Paid Conversion Rate with SQL Project

## 🧠 Case Description

SQL is a powerful tool that can be used for extracting information from databases with its invaluable ability to join tables and aggregate results. Data extraction is the first step towards data analysis, and, therefore, extracting data correctly is crucial to arrive at the correct conclusions during the analysis process.

This **Calculating Free-to-Paid Conversion Rate with SQL** project aims to put SQL skills into practice. The dataset contains an excerpt of real-world user data—stripped of personally identifiable information—to estimate the **fraction of students who purchase a subscription after starting a lecture**, i.e., the free-to-paid conversion rate among students who’ve engaged with video content on the 365 platform. 

You will also be tasked with calculating several other key metrics and analyzing the results.

---

## 🗂 Project Files

- `conversion_analysis.sql`: All SQL queries used for this analysis
- `db_course_conversions.sql`: The database file used in this project (optional to include)

---

## 🛠 Featured Tools
- MySQL Workbench 8.0
- SQL (Joins, Aggregations, Subqueries, `DATEDIFF`, `GROUP BY`, `HAVING`)

---

## 📌 Project Requirements

You’ll work with **MySQL Workbench 8.0** and a dataset containing:
- `student_info` – registration dates
- `student_engagement` – first-time engagement with lectures
- `student_purchases` – purchase history (if any)

---

## 📈 Key Metrics Calculated

| Metric                                      | Description                                                                 |
|---------------------------------------------|-----------------------------------------------------------------------------|
| `Conversion Rate`                           | % of students who watched and later purchased a subscription                |
| `Average Reg → Watch Time (Days)`           | Avg. duration from registration to first lecture engagement                 |
| `Average Watch → Purchase Time (Days)`      | Avg. duration from first lecture watched to subscription purchase           |

---

## ✅ Final Results Summary

| Metric             | Value     |
|--------------------|-----------|
| Conversion Rate    | **9.72%** |
| Avg Reg → Watch    | **1.82** days |
| Avg Watch → Purchase | **23.43** days |

---

## 💡 What I Learned

- Writing subqueries and aggregating nested datasets
- Joining multiple tables using primary-foreign key relationships
- Calculating time differences with `DATEDIFF`
- Filtering using `HAVING` on aggregated results
- Real-world application of conversion rate analysis using SQL

---

## 🚀 How to Run

1. Open **MySQL Workbench**
2. Import `db_course_conversions.sql` and run it
3. Run `conversion_analysis.sql` to replicate the results

---

## 🔗 About

This project was part of a hands-on SQL practice on **data analysis and conversion rate modeling**. The goal was to estimate user behavior flow and performance insights for a digital learning platform.

---
