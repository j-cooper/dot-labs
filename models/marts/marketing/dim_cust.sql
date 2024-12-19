{{
    config(
        materialized='view'
    )
}}

with cust as (
 select *
 from {{ ref('stg_tpch_sf100_cust') }}),
ord as (
 select *
 from {{ ref('stg_tpch_sf100_order') }}   
) 

select ord.*
from ord
inner join cust on cust.c_custkey = ord.o_custkey;