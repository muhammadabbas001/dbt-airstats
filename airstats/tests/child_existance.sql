{{
    config(
        severity='warn'
    )
}}

WITH sa AS (
    SELECT * FROM AIRSTATS.DEV.silver_airports
),

sc AS (
    SELECT * FROM AIRSTATS.DEV.silver_airport_comments
)

SELECT sc.*
FROM sc
LEFT JOIN sa
    ON sa.airport_ident = sc.airport_ident
LIMIT 10;