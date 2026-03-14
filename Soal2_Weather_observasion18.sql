WITH base AS(
    SELECT 
        MIN(LAT_N) AS min_lat,
        MIN(LONG_W) AS min_long,
        MAX(LAT_N) AS max_long,
        MAX(LONG_W) AS max_lat
    FROM STATION
)
SELECT 
CAST(
    ABS(max_lat - min_lat) + ABS(max_long - min_long)
    AS DECIMAL(10,4)
)
FROM base;
