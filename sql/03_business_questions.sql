-- BQ01: How have monthly sales changed over time?

SELECT
  LEFT (o."OrderDate",7) AS order_year_month,
	SUM(
	  od."UnitPrice" * od."Quantity" 
		* (1 - od."Discount"::numeric)) AS monthly_net_sales 
FROM northwind."Orders" o 
  JOIN northwind."Order Details" od 
	  ON od."OrderID" = o."OrderID"
GROUP BY LEFT (o."OrderDate" ,7)
ORDER BY order_year_month;

-- BQ02: Which product categories generate the most sales?

SELECT
    ca."CategoryID",
	ca."CategoryName" AS category_name,
    SUM(
		od."UnitPrice" * od."Quantity" 
		* (1 - od."Discount"::numeric)
    	) AS category_net_sales 
FROM northwind."Categories" ca 
	JOIN northwind."Products" pr 
		ON pr."CategoryID" = ca."CategoryID"
	JOIN northwind."Order Details" od
		ON od."ProductID" = pr."ProductID"
GROUP BY ca."CategoryID", ca."CategoryName"
ORDER BY category_net_sales DESC;

-- BQ03: Which products contribute the most to sales?

SELECT
    pr."ProductID",
	pr."ProductName" AS product_name,
    SUM(
		od."UnitPrice" * od."Quantity" 
		* (1 - od."Discount"::numeric)
    ) AS product_net_sales 
FROM northwind."Order Details" od
JOIN northwind."Products" pr 
	ON pr."ProductID" = od."ProductID"
GROUP BY 
	pr."ProductID", 
	pr."ProductName"
ORDER BY product_net_sales DESC;

-- BQ04: Which countries generate the most sales?

SELECT
    o."ShipCountry" AS country,
	SUM(
		od."UnitPrice" * od."Quantity" 
		* (1 - od."Discount"::numeric)
    ) AS country_net_sales 
FROM northwind."Order Details" od
JOIN northwind."Orders" o 
	ON o."OrderID" = od."OrderID"
GROUP BY 
	o."ShipCountry"
ORDER BY country_net_sales DESC;

-- BQ05: How does the sales mix by product category differ across shipping destination countries?

WITH category_sales AS (
    SELECT
        o."ShipCountry" AS country,
        ca."CategoryID" AS category_id,
        ca."CategoryName" AS category_name,
        SUM(
            od."UnitPrice" * od."Quantity"
            * (1 - od."Discount"::numeric)
        ) AS category_net_sales
    FROM northwind."Order Details" od
    JOIN northwind."Products" pr
        ON pr."ProductID" = od."ProductID"
    JOIN northwind."Categories" ca
        ON ca."CategoryID" = pr."CategoryID"
    JOIN northwind."Orders" o
        ON o."OrderID" = od."OrderID"
    GROUP BY
        o."ShipCountry",
        ca."CategoryID",
        ca."CategoryName"
)
SELECT
    country,
    category_id,
    category_name,
    category_net_sales,
    category_net_sales
        / NULLIF(SUM(category_net_sales) OVER (PARTITION BY country), 0)
        * 100 AS category_sales_share_pct
FROM category_sales
ORDER BY
    country ASC,
    category_net_sales DESC;
