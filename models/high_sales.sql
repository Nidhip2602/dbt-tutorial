-- high_sales_products.sql

{{ config(
    materialized='ephemeral'
) }}

SELECT
    ps.order_id,
    ps.total_sales
FROM
    {{ ref('product_sale') }} ps
WHERE
    ts.total_sales > 500; -- Example threshold
