

WITH customer_orders AS (
  SELECT 
    c_name, customer_id
  FROM
    dbt_trial.public.dbt_customers
),
customer_payments AS (
  SELECT 
    order_id, order_date, total_amount
  FROM
    dbt_trial.public.dbt_orders
)

SELECT 
  c.c_name, c.customer_id, o.order_id, o.order_date, o.total_amount
FROM
  customer_orders c
LEFT JOIN
  dbt_orders o ON  o.customer_id = c.customer_id 
