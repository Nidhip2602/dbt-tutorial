-- another_model.sql

-- Reference the ephemeral model and specify that it should be materialized as ephemeral
{{ config(
    materialized='ephemeral'
) }}

SELECT
    order_id,
    total_quantity,
    total_sales,
    average_price_per_unit
FROM
    {{ ref('ep_sales_calc') }}
