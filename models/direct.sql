SELECT 
  c.c_name,
  c.customer_id,
  o.order_id,
  o.order_date,
  o.total_amount
FROM
  dbt_trial.public.dbt_customers c
LEFT JOIN
  dbt_trial.public.dbt_orders o ON c.customer_id = o.customer_id
