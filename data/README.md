# Data Documentation

## 1. Data Source

- **Dataset:** Northwind
- **Source:** [Northwind DemoDB](https://northwind.demodb.dev/downloads/)
- **License:** MIT License
- **Database:** PostgreSQL 16
- **Schema:** `northwind`

The Northwind dataset represents a fictional business selling specialty food products.

## 2. Data Scope

The analysis covers orders dated from July 4, 2016, to May 6, 2018.

The main tables used in the analysis are:

| Table | Description |
|---|---|
| `Orders` | Order information, dates, and shipping destinations |
| `Order Details` | Products, quantities, prices, and discounts for each order |
| `Products` | Product information and category identifiers |
| `Categories` | Product category information |

## 3. Processed Data

The CSV files in `processed/` contain aggregated results exported from PostgreSQL queries for use in Tableau Public.

These files include KPI summaries, monthly sales, category sales, product sales, country sales, and country-level category sales mix.

The SQL queries used to generate these results are available in the repository's `sql/` directory.

## 4. Data Limitations

- The first and last months contain partial-month data.
- The dataset's currency has not been verified.
- Product cost data was not identified, so profitability was not analyzed.
- Freight charges were excluded from sales calculations.
- Data quality findings and limitations are documented in [`data-quality-notes.md`](../analysis/data-quality-notes.md).
