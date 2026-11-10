-- KPI 01: Gross Sales 
-- KPI 02: Net Sales
-- KPI 03: Total Discount Amount

SELECT
  SUM("UnitPrice" * "Quantity") AS gross_sales,
  SUM("UnitPrice" * "Quantity" * (1 - "Discount")) AS net_sales,
  SUM("UnitPrice" * "Quantity" * "Discount") AS total_discount_amount
FROM northwind."Order Details";

-- KPI 04: Distinct Orders
-- KPI 05: Average Order Values (AOV)

SELECT
  COUNT(DISTINCT o."OrderID") AS distinct_orders,
  SUM(
    od."UnitPrice" * od."Quantity"
    * (1 - od."Discount"::numeric)
    ) / COUNT(DISTINCT o."OrderID") AS aov
FROM northwind."Orders" o
  JOIN northwind."Order Details" od
    ON od."OrderID" = o."OrderID";
