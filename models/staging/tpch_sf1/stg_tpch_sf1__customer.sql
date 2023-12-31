WITH source as (
    SELECT 
        *
    FROM 
        {{ source('src_tpch_sf1', 'customer') }}
)

SELECT
    C_CUSTKEY,
    C_NAME,
    C_ADDRESS,
    C_NATIONKEY,
    C_PHONE,
    C_ACCTBAL,
    C_MKTSEGMENT,
    C_COMMENT
FROM 
    source