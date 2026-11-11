# SQL Retail Sales Analysis

## Project Overview

This project analyzes net sales performance using the Northwind dataset, which represents a fictional business selling specialty food products.

The goal is to help sales and business managers monitor net sales performance, identify key contributors to net sales across product categories, individual products, and shipping destinations, and compare category-level sales mix across countries.

## Business Questions

- **BQ01:** How have monthly sales changed over time?
- **BQ02:** Which product categories generate the most sales?
- **BQ03:** Which products contribute the most to sales?
- **BQ04:** Which shipping destination countries generate the most net sales?
- **BQ05:** How does the sales mix by product category differ across shipping destination countries?

For detailed findings, see [Business Insights](analysis/business-insights.md).

## Key Metrics

- Gross Sales
- Net Sales
- Total Discount Amount
- Distinct Orders
- Average Order Value (AOV)

KPI definitions and calculation methods are documented in the [Dashboard Specification](docs/dashboard-specification.md).

## Tools Used

- PostgreSQL 16 — SQL-based data profiling and analysis
- Tableau Public — Data visualization and dashboard publishing
- CSV — Exported query results used as dashboard data sources
- GitHub — Version control and portfolio publication

## Dataset

- **Dataset:** Northwind
- **Source:** [Northwind DemoDB](https://northwind.demodb.dev/downloads/)
- **License:** MIT License
- **Analysis Period:** July 4, 2016 – May 6, 2018

The first and last months contain partial-month data.

For additional information, see [Data Documentation](data/README.md) and [Data Quality Notes](analysis/data-quality-notes.md).

## Dashboard

[View Northwind Sales Dashboard on Tableau Public](https://public.tableau.com/views/NorthwindSalesAnalysis_17943008493170/Dashboard1?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

### Dashboard Preview

![Northwind Sales Analysis](images/dashboard-preview.png)

## Key Insights

- Monthly net sales generally increased, reaching approximately 123.8K in April 2018.
- Beverages generated the highest net sales among product categories, at approximately 267.9K.
- The top three products accounted for approximately 23.1% of total net sales.
- The USA and Germany together contributed approximately 37.6% of total net sales.

For detailed findings and limitations, see [Business Insights](analysis/business-insights.md).

## Business Recommendations

1. Investigate the Drivers of Sales Growth
2. Monitor Revenue Concentration in Key Products
3. Evaluate Market-Specific Product Mix
4. Evaluate Performance in Major Markets
5. Assess Potential Expansion into New Markets

For supporting evidence and recommendations, see [Business Insights](analysis/business-insights.md).

## Repository Structure

```text
SQL-Retail-Sales-Analysis/
├── README.md
├── sql/
│   ├── 01_data_profiling.sql
│   ├── 02_kpi_analysis.sql
│   └── 03_business_questions.sql
├── data/
│   ├── README.md
│   └── processed/
│       └── *.csv
├── analysis/
│   ├── data-quality-notes.md
│   └── business-insights.md
├── docs/
│   └── dashboard-specification.md
└── images/
    └── dashboard-preview.png
```

