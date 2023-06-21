WITH source as (
    SELECT 
        *
    FROM 
        {{ source('src_tpch_sf1', 'orders') }}
)

SELECT 
    O_ORDERKEY,
    O_CUSTKEY,
    O_ORDERSTATUS,
    O_TOTALPRICE,
    O_ORDERDATE,
    O_ORDERPRIORITY,
    O_CLERK,
    O_SHIPPRIORITY,
    O_COMMENT
FROM 
    source