📊 **Global Silver Supply Chain Analytics**
**Project Overview**

This project is an end-to-end data analytics case study focused on analyzing a global silver supply chain. The objective is to transform raw transactional data into meaningful business insights related to revenue performance, logistics efficiency, shipment delays, and country-wise contribution.

The project simulates a real-world messy dataset and follows a structured analytics workflow similar to what data analysts perform in industry.

**🧩 Business Objectives**

Analyze overall revenue and shipment volume trends

Identify countries contributing most to silver revenue

Measure operational inefficiencies caused by delivery delays

Evaluate logistics cost by transport mode

Provide executive-level and operational-level insights using dashboards

**🛠 Tools & Technologies Used**

Excel – Initial data profiling and validation

Python (Pandas, NumPy) – Data cleaning and exploratory analysis

MySQL – Business SQL analysis and window functions

Power BI – Data modeling, DAX calculations, and dashboard creation

**🔄 Project Workflow**
Step 1: Excel Data Profiling

Reviewed column structure, data types, and missing values

Identified nulls in quantity and revenue columns

Verified date ranges and categorical distributions

Step 2: Data Cleaning & EDA (Python)

Handled missing values in numeric columns

Ensured consistent data types

Created derived columns such as year, month, and month name

Exported cleaned dataset for downstream use

Step 3: Clean Data Export & GitHub Preparation

Exported cleaned CSV file

Organized notebooks, SQL scripts, and dashboard screenshots for version control

Step 4: MySQL Import & Profiling

Imported cleaned dataset into MySQL

Verified column data types and null consistency

Performed sanity checks using aggregate queries

Step 5: Business SQL Analysis

Revenue and quantity aggregation by country and time

Delay impact analysis

Logistics cost analysis by transport mode

Used window functions for ranking, running totals, and comparisons

Step 6: Power BI Data Modeling

Loaded cleaned CSV into Power BI

Created a proper Date table for time intelligence

Built relationships between date and transaction data

Implemented key DAX measures used in daily analyst work

Step 7: Power BI Dashboards
Page 1 – Executive Overview

Total Revenue

Total Quantity (KG)

Average Price per KG

Delayed Shipment Percentage

Monthly Revenue Trend

Revenue by Mine Country

Page 2 – Operational & Logistics Insights

Revenue Impact by Delivery Status

Average Logistics Cost by Transport Mode

Revenue Contribution by Transport Mode

On-Time vs Delayed Shipments

Interactive slicers for Year, Country, Quality, and Transport Mode

**📈 Key Insights**

Over 50% of shipments experienced delays, impacting revenue exposure

Revenue is evenly distributed across major silver-producing countries

Logistics costs remain similar across transport modes, indicating optimization potential

Seasonal revenue fluctuations are visible across months

**📂 Repository Contents (Overview)**

Excel raw and cleaned datasets

Python notebook for data cleaning and EDA

MySQL SQL scripts for business analysis

Power BI dashboard file

Dashboard screenshots for preview

**🚀 How This Project Helps**

This project demonstrates:

Real-world data cleaning skills

Strong SQL business analysis capability

Practical Power BI modeling and DAX usage

End-to-end analytical thinking from raw data to insights

**👤 Author**

Navin
Aspiring Data Analyst | SQL | Python | Power BI
