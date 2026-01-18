-- Global Silver Supply Chain Analytics 

# DATABASE CREATED
CREATE DATABASE IF NOT EXISTS silver_supply_chain_db;
USE silver_supply_chain_db;

DESCRIBE silver_transactions;

# Insights Extraction
-- TOTAL REVENUE & SHIPMENTS OVERVIEW
SELECT
   COUNT(transaction_id) AS total_shipments,
   ROUND(SUM(revenue), 2) AS total_revenue
FROM silver_transactions
WHERE revenue IS NOT NULL;

-- COUNTRY WISE PERFORMANCE
SELECT
    mine_country,
    COUNT(transaction_id) AS shipments,
    ROUND(SUM(revenue), 2) AS country_revenue
FROM silver_transactions
WHERE revenue IS NOT NULL 
GROUP BY mine_country
ORDER BY country_revenue DESC;

-- TRANSPORT MODE EFFICIENCY
SELECT
    transport_mode,
    COUNT(*) AS total_shipments,
    ROUND(AVG(delivery_delay_days), 2) AS avg_delay_days,
    ROUND(AVG(logistics_cost), 2) AS avg_logistics_cost
FROM silver_transactions
GROUP BY transport_mode
ORDER BY avg_delay_days DESC;

-- PAYMENT TERMS IMPACT
SELECT
    payment_terms,
    COUNT(*) AS shipments,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(AVG(revenue), 2) AS avg_revenue_per_shipment
FROM silver_transactions
WHERE revenue IS NOT NULL
GROUP BY payment_terms;

-- YEAR WISE TREND
SELECT
    year,
    COUNT(transaction_id) AS shipments,
    ROUND(SUM(revenue), 2) AS yearly_revenue
FROM silver_transactions
WHERE revenue IS NOT NULL
GROUP BY year
ORDER BY year;

-- DELAYED VS ON-TIME SHIPMENTS
SELECT
    is_delayed,
    COUNT(*) AS shipment_count,
    ROUND(SUM(revenue), 2) AS revenue_impact
FROM silver_transactions
WHERE revenue IS NOT NULL 
GROUP BY is_delayed;

-- TOP 5 HIGH VALUE SHIPMENTS
SELECT
     transaction_id,
    mine_country,
    transport_mode,
    ROUND(revenue, 2) AS revenue
FROM silver_transactions
WHERE revenue IS NOT NULL
ORDER BY revenue DESC
LIMIT 5;

-- Running Total Revenue
SELECT
   shipment_date,
   year,
   revenue,
   SUM(revenue) OVER (PARTITION BY year ORDER BY shipment_date) AS running_revenue
FROM silver_transactions;

-- Rank Shipments by Revenue
SELECT 
    transaction_id,
    year,
    revenue,
    DENSE_RANK() OVER(PARTITION BY year ORDER BY revenue DESC) AS revenuw_rank 
FROM silver_transactions;

-- Month over Month Revenue Change
SELECT
    year,
    month,
    revenue,
    LAG(revenue) OVER (ORDER BY year, month) AS previous_month_revenue,
    revenue - LAG(revenue) OVER ( ORDER BY year, month) AS revenue_change
FROM silver_transactions;

-- Average Price Benchmarking
SELECT 
    transaction_id,
    silver_quality,
    price_per_kg,
    AVG(price_per_kg) OVER (PARTITION BY silver_quality) AS avg_quality_price
FROM silver_transactions;

-- Delivery Delay Ranking
SELECT
    transaction_id,
    mine_country,
    delivery_delay_days,
    RANK() OVER (PARTITION BY mine_country ORDER BY delivery_delay_days DESC) AS delay_rank
FROM silver_transactions;