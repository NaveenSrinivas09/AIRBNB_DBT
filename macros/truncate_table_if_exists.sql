-- Truncate the table if it exists in the database.
{% macro truncate_table_if_exists() %}
{%- set target_relation = adapter.get_relation(database=this.database, schema=this.schema, identifier=this.name) -%}
 
{% set sql_query %}
 
{% if target_relation is not none %}
    truncate table {{ target_relation }};
{% else %}
    select 'dummy'
{% endif %}
 
{% endset %}
 
{% do run_query(sql_query) %}
{% endmacro %}
 