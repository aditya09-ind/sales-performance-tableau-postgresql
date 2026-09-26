-- Sales Performance Analytics | PostgreSQL
-- Run this script in PostgreSQL after creating/selecting your database.

DROP TABLE IF EXISTS sales_performance;

CREATE TABLE sales_performance (
    order_id VARCHAR(20) PRIMARY KEY,
    order_date DATE NOT NULL,
    region VARCHAR(20) NOT NULL,
    category VARCHAR(50) NOT NULL,
    product VARCHAR(100) NOT NULL,
    sales_manager VARCHAR(50) NOT NULL,
    units_sold INT NOT NULL,
    unit_price NUMERIC(12,2) NOT NULL,
    discount_rate NUMERIC(5,2) NOT NULL,
    net_sales NUMERIC(14,2) NOT NULL,
    profit NUMERIC(14,2) NOT NULL
);

-- Load the CSV using pgAdmin's Import/Export Data or COPY:
-- COPY sales_performance FROM '/absolute/path/sales_performance.csv'
-- WITH (FORMAT csv, HEADER true);

CREATE INDEX idx_sales_date ON sales_performance(order_date);
CREATE INDEX idx_sales_region ON sales_performance(region);
CREATE INDEX idx_sales_category ON sales_performance(category);

-- 1. Monthly sales and profit
SELECT DATE_TRUNC('month', order_date)::date AS month,
       ROUND(SUM(net_sales),2) AS sales,
       ROUND(SUM(profit),2) AS profit
FROM sales_performance
GROUP BY 1
ORDER BY 1;

-- 2. Regional performance
SELECT region,
       ROUND(SUM(net_sales),2) AS sales,
       ROUND(SUM(profit),2) AS profit,
       SUM(units_sold) AS units
FROM sales_performance
GROUP BY region
ORDER BY sales DESC;

-- 3. Category performance
SELECT category,
       ROUND(SUM(net_sales),2) AS sales,
       ROUND(SUM(profit),2) AS profit,
       SUM(units_sold) AS units
FROM sales_performance
GROUP BY category
ORDER BY sales DESC;

-- 4. Product profitability
SELECT product,
       ROUND(SUM(net_sales),2) AS sales,
       ROUND(SUM(profit),2) AS profit
FROM sales_performance
GROUP BY product
ORDER BY profit DESC
LIMIT 10;

-- 5. Manager performance
SELECT sales_manager,
       ROUND(SUM(net_sales),2) AS sales,
       ROUND(SUM(profit),2) AS profit
FROM sales_performance
GROUP BY sales_manager
ORDER BY sales DESC;