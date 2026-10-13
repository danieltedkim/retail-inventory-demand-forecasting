1. Dataset Verification

SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT "Store ID") AS total_stores,
    COUNT(DISTINCT "Product ID") AS total_products
FROM retail_inventory;

2. Sales and Demand by Store

SELECT
    "Store ID",
    SUM("Units Sold") AS total_units_sold,
    SUM("Demand") AS total_demand,
    ROUND(
        100.0 * SUM("Units Sold") / NULLIF(SUM("Demand"), 0),
        2
    ) AS sales_to_demand_pct
FROM retail_inventory
GROUP BY "Store ID"
ORDER BY sales_to_demand_pct DESC;

3. Product Sales Rankings

SELECT
    "Product ID",
    SUM("Units Sold") AS total_units_sold,
    RANK() OVER (
        ORDER BY SUM("Units Sold") DESC
    ) AS sales_rank
FROM retail_inventory
GROUP BY "Product ID"
ORDER BY sales_rank;

4. Inventory-to-Demand Analysis

WITH product_inventory AS (
    SELECT
        "Store ID",
        "Product ID",
        ROUND(AVG("Inventory Level"), 2) AS avg_inventory,
        ROUND(AVG("Demand"), 2) AS avg_demand
    FROM retail_inventory
    GROUP BY "Store ID", "Product ID"
)
SELECT
    "Store ID",
    "Product ID",
    avg_inventory,
    avg_demand,
    ROUND(
        avg_inventory / NULLIF(avg_demand, 0),
        2
    ) AS inventory_to_demand_ratio
FROM product_inventory
ORDER BY inventory_to_demand_ratio DESC;

5. Product Sales vs. Demand

WITH product_sales AS (
    SELECT
        "Product ID",
        SUM("Units Sold") AS total_sales
    FROM retail_inventory
    GROUP BY "Product ID"
),
product_demand AS (
    SELECT
        "Product ID",
        SUM("Demand") AS total_demand
    FROM retail_inventory
    GROUP BY "Product ID"
)
SELECT
    s."Product ID",
    s.total_sales,
    d.total_demand,
    ROUND(
        100.0 * s.total_sales / NULLIF(d.total_demand, 0),
        2
    ) AS sales_to_demand_pct
FROM product_sales s
JOIN product_demand d
    ON s."Product ID" = d."Product ID"
ORDER BY sales_to_demand_pct DESC;
