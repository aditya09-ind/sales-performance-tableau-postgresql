# Dashboard Build Guide

## Sheet 1 — KPI Cards
Create separate sheets for:
- SUM(Net Sales)
- SUM(Profit)
- SUM(Units Sold)
- Profit Margin
- Average Order Value

## Sheet 2 — Monthly Sales & Profit
Columns: Month
Rows: Measure Values
Measures: SUM(Net Sales), SUM(Profit)
Marks: Line

## Sheet 3 — Regional Performance
Rows: Region
Columns: SUM(Net Sales)
Color: SUM(Profit)
Sort descending.

## Sheet 4 — Category Sales vs Profit
Columns: SUM(Net Sales)
Rows: Category
Color: SUM(Profit)
Add labels.

## Sheet 5 — Top 10 Products
Rows: Product
Columns: SUM(Profit)
Filter: Top 10 by SUM(Profit).

## Sheet 6 — Manager Performance
Rows: Sales Manager
Columns: SUM(Net Sales)
Add SUM(Profit) to Label or Tooltip.

## Dashboard
Create a new dashboard at approximately 1200 × 800.
Arrange KPI cards at the top, trend and regional charts in the middle, and category/product/manager charts below.

Add filters for:
- Order Date
- Region
- Category
- Sales Manager

Use "Apply to Worksheets" so the filters control the relevant dashboard views.