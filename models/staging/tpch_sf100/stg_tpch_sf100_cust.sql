{{
    config(
        materialized='table'
    )
}}

with cust as (
 select c_custkey,
        c_name,
        c_address
 from {{ source('tpch_sf100', 'customer') }}
 where substr(c_phone, 1, 2) = '15')

select cust.*
from cust