
WITH source AS (

    SELECT 
        *
    FROM 
        {{ source('scr_lab01_schema', 'my_orders')}}

)

SELECT
    KEY,
    STATUS,
    PRICE,
    DATE,
    PRIORITY
FROM 
    source
