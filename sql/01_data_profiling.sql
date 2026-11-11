-- 1.Record Counts (northwind."Orders", northwind."Order Details", northwind."Products"

SELECT 'Orders' AS table_name, COUNT(*) AS row_count
FROM northwind."Orders"

UNION ALL

SELECT 'Order Details', COUNT(*)
FROM northwind."Order Details"

UNION ALL

SELECT 'Products', COUNT(*)
FROM northwind."Products";


-- 2. Missing Values (Null/Blank Check)
-- 2-a. Verifying major columns in northwind.Orders table

SELECT
    COUNT(*) AS total_rows,
    COUNT(*) FILTER (
        WHERE "OrderID" IS NULL
    ) AS missing_order_id,
    COUNT(*) FILTER (
        WHERE "CustomerID" IS NULL
          OR TRIM("CustomerID") = ''
    ) AS missing_customer_id,
    COUNT(*) FILTER (
        WHERE "OrderDate" IS NULL
           OR TRIM("OrderDate") = ''
    ) AS missing_order_date
FROM northwind."Orders";

-- 2-b. Verifying major columns in northwind.Products table

SELECT
    COUNT(*) AS total_rows,
    COUNT(*) FILTER (
        WHERE "ProductID" IS NULL
    ) AS missing_product_id,
    COUNT(*) FILTER (
        WHERE "ProductName" IS NULL
    	OR TRIM("ProductName") = ''
		) AS missing_product_name,
    COUNT(*) FILTER (
        WHERE "CategoryID" IS NULL
    ) AS missing_category_id
FROM northwind."Products";

-- 2-c. Missing values in Order Details

SELECT
    COUNT(*) AS total_rows,
    COUNT(*) FILTER (
        WHERE "OrderID" IS NULL
    ) AS missing_order_id,
    COUNT(*) FILTER (
        WHERE "ProductID" IS NULL
    ) AS missing_product_id,
    COUNT(*) FILTER (
        WHERE "UnitPrice" IS NULL
    ) AS missing_unit_price,
    COUNT(*) FILTER (
        WHERE "Quantity" IS NULL
    ) AS missing_quantity,
    COUNT(*) FILTER (
        WHERE "Discount" IS NULL
    ) AS missing_discount
FROM northwind."Order Details";


-- 3. Duplicate Checks
-- Primary key constraints enforce uniqueness.
-- Orders: OrderID
-- Products: ProductID
-- Order Details: (OrderID, ProductID)

-- 4. Data Type and Quality Check
-- 4-a. northwind.Orders. OrderDate
-- date format

SELECT
    COUNT(*) AS total_rows,
    COUNT(*) FILTER (
        WHERE "OrderDate" !~ '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'
    ) AS invalid_format_count
FROM northwind."Orders";

-- date validity
SELECT
    COUNT(*) AS total_rows,
    COUNT(*) FILTER (
        WHERE NOT pg_input_is_valid("OrderDate", 'date')
    ) AS invalid_date_count
FROM northwind."Orders";

-- duration
SELECT
    MIN("OrderDate"::date) AS start_date,
    MAX("OrderDate"::date) AS end_date
FROM northwind."Orders";

-- 4-b.northwind.Order Details.UnitPrice
-- Maximum, minimum, average 

SELECT 
	MAX("UnitPrice") AS unit_price_max,
	MIN("UnitPrice") AS unit_price_min,
	AVG("UnitPrice") AS unit_price_avg
FROM northwind."Order Details" ;

-- 4-c.northwind.Order Details.Quantity

SELECT 
	MAX("Quantity") AS quantity_max,
	MIN("Quantity") AS quantity_min,
	AVG("Quantity") AS quantity_avg
FROM northwind."Order Details" ;

-- 4-d.northwind.Order Details.Discount

SELECT 
	MAX("Discount") AS discount_max,
	MIN("Discount") AS discount_min,
	AVG("Discount") AS discount_avg
FROM northwind."Order Details" ;

-- 4-e. Invalid numeric values

SELECT
    COUNT(*) FILTER (
        WHERE "UnitPrice" < 0
    ) AS negative_unit_price_count,
    COUNT(*) FILTER (
        WHERE "Quantity" <= 0
    ) AS invalid_quantity_count,
    COUNT(*) FILTER (
        WHERE "Discount" < 0
           OR "Discount" > 1
    ) AS invalid_discount_count
FROM northwind."Order Details";

-- 5. Referential Integrity Check
-- Order Details without matching Orders

SELECT
    COUNT(*) AS unmatched_order_details
FROM northwind."Order Details" od
LEFT JOIN northwind."Orders" o
    ON od."OrderID" = o."OrderID"
WHERE o."OrderID" IS NULL;
