-- ep_sales_calc.sql


WITH intermediate_sales AS (
    SELECT
        order_id,
        SUM(quantity) AS total_quantity,
        SUM(quantity * total_amount) AS total_sales
    FROM
        {{ ref('orders_model') }}
    GROUP BY
        order_id
)

SELECT
    es.order_id,
    es.total_quantity,
    es.total_sales,
    es.total_sales / es.total_quantity AS average_price_per_unit
FROM
    intermediate_sales es


