# 🚗 Car Sales Data Analysis with SQL

This project contains SQL queries for exploring trends in the used car market, such as vehicle availability, fuel-type analysis, and year-over-year insights. Ideal for demonstrating proficiency in SQL-based data analysis and business understanding.

## 📌 Dataset Assumption
The database includes a table named `car_dekho` with fields like:
- `year`
- `fuel`
- Additional assumed columns: `car_name`, `model`, etc.

## 🔍 Key Analyses
- Total car listings over time
- Breakdown by fuel type (Petrol, Diesel, CNG)
- Identifying high-availability years
- Filtering by custom time frames (e.g., 2015–2023)

## 🛠 Tools Used
- MySQL (compatible with other dialects)
- SQL queries for aggregation, filtering, and grouping

## 🚀 How to Use
1. Import your dataset and create the `car_dekho` table.
2. Run `car_sales_analysis.sql` in your SQL environment.
3. Modify queries as needed to adapt to your dataset structure.

## 💡 Sample Use Case
> “Find the total number of petrol cars listed in 2020.”  
```sql
SELECT COUNT(*) FROM car_dekho WHERE year = 2020 AND fuel = 'petrol';
