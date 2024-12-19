{{
    config(
        materialized='table'
    )
}}

with ord as (
 select *
 from snowflake_sample_data.tpch_sf100.orders
 where substr(o_orderdate, 1, 4) = 1995)

select ord.*
from ord