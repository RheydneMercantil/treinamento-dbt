WITH source as (
    SELECT 
        *
    FROM 
        {{ source('src_tpch_sf1', 'nation') }}
)

SELECT
    N_NATIONKEY,
    N_NAME,
    N_REGIONKEY,
    N_COMMENT
FROM 
    source