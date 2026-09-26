# Sales Performance Analytics Dashboard — Tableau + PostgreSQL

## Project Overview
An end-to-end business intelligence project that combines **PostgreSQL** for data storage and SQL analysis with **Tableau** for interactive visualization.

The project analyzes sales, profitability, products, regions, categories, and sales-manager performance and converts transactional data into an executive-friendly dashboard.

## Business Questions
- How are sales and profit changing over time?
- Which regions generate the most revenue and profit?
- Which product categories perform best?
- Which products contribute the most profit?
- How do sales managers compare?
- What is the average order value and profit margin?

## Tech Stack
- **PostgreSQL** — relational database and SQL analysis
- **Tableau** — dashboarding and visualization
- **CSV** — source data
- **Git/GitHub** — version control

## Dataset
`data/sales_performance.csv` contains 1,800 synthetic sales transactions covering January–December 2025.

Fields:
- order_id
- order_date
- region
- category
- product
- sales_manager
- units_sold
- unit_price
- discount_rate
- net_sales
- profit

> The dataset is synthetic and created specifically for portfolio/learning purposes. Do not present it as company or client data.

## Project Architecture

CSV → PostgreSQL → SQL Analysis → Tableau → Interactive Dashboard

Tableau can also connect directly to the CSV for the public portfolio version. Tableau supports text/CSV connections, while Tableau Desktop/Cloud supports PostgreSQL connections. See the official Tableau documentation linked below.

## Setup

### 1. Clone the repository
```bash
git clone https://github.com/YOUR_USERNAME/sales-performance-tableau-postgresql.git
cd sales-performance-tableau-postgresql
```

### 2. PostgreSQL
Create a database, then run:

```sql
sql/sales_performance.sql
```

Import `data/sales_performance.csv` into the `sales_performance` table using pgAdmin or PostgreSQL's COPY/import workflow.

### 3. Connect Tableau to PostgreSQL
In Tableau:
1. Connect → PostgreSQL
2. Enter server, database, username, and password
3. Select `sales_performance`
4. Open a worksheet

Official Tableau PostgreSQL connection guide:
https://help.tableau.com/current/pro/desktop/en-us/examples_postgresql.htm

### 4. Create calculated fields
Use the formulas in:
`tableau/calculated_fields.md`

Tableau calculated fields allow you to create fields such as ratios and other derived metrics without modifying the original source data.

### 5. Build the dashboard

Recommended layout:

**Top:** KPI cards
- Total Sales
- Total Profit
- Profit Margin
- Units Sold
- Average Order Value

**Middle:**
- Monthly Sales & Profit trend
- Sales by Region

**Bottom:**
- Category Sales vs Profit
- Top 10 Products by Profit
- Sales Manager Performance

**Filters:**
- Date
- Region
- Category
- Sales Manager

### 6. Publish
For a portfolio:
- Save the Tableau workbook as `.twb` or `.twbx`
- Publish the visualization to Tableau Public if appropriate
- Add the Tableau Public URL to this README
- Add dashboard screenshots to `docs/`

## Portfolio Resume Bullet

**Sales Performance Analytics Dashboard | Tableau, PostgreSQL, SQL**
- Built an interactive Tableau dashboard using PostgreSQL-backed sales data to analyze revenue, profitability, regional performance, product trends, and manager KPIs across 1,800 transactions.
- Wrote SQL queries for monthly, regional, category, product, and manager-level analysis and created calculated Tableau metrics including profit margin and average order value.
- Added interactive filters and KPI views to support business-focused exploration of sales and profitability trends.

## Skills Demonstrated
PostgreSQL • SQL • Tableau • Data Modeling • Data Visualization • Calculated Fields • Dashboard Design • KPI Reporting • Business Analytics • Git/GitHub

## Important
The dataset is synthetic. Keep the project clearly labeled as a portfolio project and do not claim that the results represent a real company.

## Official Documentation
- Tableau PostgreSQL connector: https://help.tableau.com/current/pro/desktop/en-us/examples_postgresql.htm
- Tableau calculated fields: https://help.tableau.com/current/pro/desktop/en-us/calculations_calculatedfields_formulas.htm
- Tableau web data connections: https://help.tableau.com/current/online/en-us/creator_connect.htm