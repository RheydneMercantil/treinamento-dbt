
{{ config(materialized='table') }}

SELECT o_totalprice, count(l_orderkey) qtd_items, sum(l_quantity) qtd_total
from {{ ref('stg_tpch_sf1__orders') }} A
INNER JOIN {{ ref('stg_tpch_sf1__lineitem') }} B
ON A.O_ORDERKEY = b.l_orderkey
group by o_totalprice