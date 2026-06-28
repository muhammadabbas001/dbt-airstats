SELECT 
    * 
FROM
    {{ ref('silver_runways') }}
WHERE 
    runway_closed > 1