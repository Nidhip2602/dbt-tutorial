-- incremental_sales_by_product.sql

{{ config(
    materialized='incremental',
    unique_key='order_id'
) }}

SELECT
    order_id,
    SUM(quantity) AS total_quantity,
    SUM(quantity * total_amount) AS total_sales
FROM
    {{ ref('orders_model') }}
GROUP BY
    order_id
