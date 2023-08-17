-- models/my_model.sql
{{ config(
  materialized='table'
) }}

{% public.macros.my_macros.call_proc_macro() %}
