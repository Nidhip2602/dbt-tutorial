{% snapshot orders_snapshot %}

{{
    config(
      target_database='dbt_trial',
      target_schema='public',
      unique_key='order_id',
      strategy='check',
      check_cols=["quantity"]
    )
}}

select * from {{ source('public', 'dbt_orders') }}

{% endsnapshot %}