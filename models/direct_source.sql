

with
    orders_d as (select * from {{ source('public', 'dbt_orders') }}),
    payment_d as (select * from {{ source('public', 'dbt_payments') }})

SELECT 
    p.amount,
    p.payment_id,
    o.order_id,
    o.order_date,
    o.total_amount
FROM
orders_d o
LEFT JOIN
payment_d p ON o.order_id=p.order_id
