
{{ config(materialized='table') }}

select SUM(PRICE) PRICE, DATE
from {{ ref('stg_lab01_schema__my_orders') }}
GROUP BY DATE
ORDER BY DATE DESC