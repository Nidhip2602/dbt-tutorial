-- {% set call_proc_macro() %}
--         CALL {{ DBT_TRIAL }}.{{ PUBLIC}}.CopyData();
--     {% endset %}

--     {% do run_query(call_proc_macro) %}
--     {% do log('Created stored proc:\t' ~ CopyData, True) %}


--     {# Return the name of the stored procedure #}
--     {%- do return(CopyData) %}
-- {% endmacro %}





-- macros/run_proc.sql
{% macro call_proc_macro() %}
  {% do run_query("call dbt_trial.public.CopyData()") %}
{% endmacro %}