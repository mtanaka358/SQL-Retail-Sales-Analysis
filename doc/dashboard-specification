# Dashboard Specification

## Dashboard Objective

The objective of this dashboard is to help sales and business managers monitor net sales performance, identify key contributors to net sales across product categories, individual products, and shipping destinations, and compare category-level sales mix across countries.

  
## Core KPIs

| KPI | Definition | Calculation | Source Table |
|---|---|---|---|
| Gross Sales | Total sales before discounts. | `SUM(UnitPrice * Quantity)` | `northwind."Order Details"` |
| Net Sales | Total sales after discounts. | `SUM(UnitPrice * Quantity * (1 - Discount))` | `northwind."Order Details"` |
| Total Discount Amount | Total value of discounts applied. | `SUM(UnitPrice * Quantity * Discount)` | `northwind."Order Details"` |
| Distinct Orders | Number of unique orders. | `COUNT(DISTINCT OrderID)` | `northwind."Orders"` |
| Average Order Value (AOV) | Average net sales per order. | `Net Sales / Distinct Orders` | `northwind."Orders"`, `northwind."Order Details"` |

**Remarks**
- Total Profit and Profit Margin were excluded because product cost data was not identified in the Northwind dataset. The analysis instead focuses on sales, discounts, order counts, and average order value.
- Freight charges were excluded from sales calculations.
- Distinct Orders counts each unique OrderID once, avoiding double-counting caused by multiple order detail records.
- Net Sales represents sales after recorded discounts. Returns and refunds are not accounted for because their availability has not been verified.
- Monetary values are displayed to two decimal places for reporting purposes, while full precision is retained during calculations. The dataset's currency has not been verified.


## Visualizations

### KPI Cards
- Gross Sales
- Net Sales
- Total Discount Amount
- Distinct Orders
- Average Order Value (AOV)

### Charts:
- Monthly Net Sales Trend
- Net Sales by Category
- Top 5 Products by Net Sales
- Top 5 Countries by Net Sales
- Sales Mix by Category and Country

  
## Data Sources

The dashboard uses CSV files exported from SQL queries executed in PostgreSQL. Each CSV contains aggregated data prepared for a specific visualization.

| Data Source | Description | Used In |
|---|---|---|
| `kpi_analysis_sales.csv` | Aggregated gross sales, net sales, and total discount amount | KPI Cards |
| `kpi_analysis_orders.csv` | Distinct order count and average order value | KPI Cards |
| `monthly_sales.csv` | Monthly net sales | Monthly Net Sales Trend |
| `category_sales.csv` | Net sales by product category | Net Sales by Category |
| `product_sales.csv` | Net sales by product | Top 5 Products by Net Sales |
| `country_sales.csv` | Net sales by shipping destination country | Top 5 Countries by Net Sales |
| `country_category_sales.csv` | Category net sales and percentage share within each shipping destination country | Sales Mix by Category and Country |
  

## Filters & Display Rules

### Filters

- **Top 5 Products by Net Sales:** Displays the five products with the highest net sales.
- **Top 5 Countries by Net Sales:** Displays the five shipping destination countries with the highest net sales.
- **Sales Mix by Category and Country:** Displays the same five shipping destination countries as the Top 5 Countries chart (USA, Germany, Austria, Brazil, and France).

### Display Rules

- Monetary values are rounded for display purposes, while full precision is retained in SQL calculations.
- Sales mix percentages are calculated in SQL and displayed as percentages in Tableau.
- July 2016 and May 2018 contain partial-month data, as noted on the dashboard.
- The dashboard uses aggregated CSV files exported from PostgreSQL queries.
