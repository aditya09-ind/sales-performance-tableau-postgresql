# Tableau Calculated Fields

Create these from **Analysis → Create Calculated Field**.

## 1. Profit Margin
SUM([Profit]) / SUM([Net Sales])

Format as Percentage.

## 2. Average Order Value
SUM([Net Sales]) / COUNTD([Order ID])

Format as Currency.

## 3. Year
YEAR([Order Date])

## 4. Month
DATETRUNC('month',[Order Date])

## 5. Profit per Unit
SUM([Profit]) / SUM([Units Sold])

## 6. Sales Growth vs Previous Month (table calculation)
Use `SUM([Net Sales])` and apply Quick Table Calculation → Percent Difference From,
or create a table calculation after placing Month on Columns.

# Recommended Filters
- Order Date
- Region
- Category
- Sales Manager

# Dashboard sheets
1. KPI Cards
2. Monthly Sales & Profit Trend
3. Sales by Region
4. Category Sales vs Profit
5. Top 10 Products by Profit
6. Manager Performance