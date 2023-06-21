
WITH source AS (

    SELECT 
        *
    FROM 
        {{ source('scr_lab01_schema', 'members')}}

)

SELECT
    ID,
    FIRST_NAME,
    LAST_NAME,
    MEMBER_SINCE,
    LEVEL
FROM 
    source
