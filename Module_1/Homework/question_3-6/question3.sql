--answer: 8007
SELECT
    COUNT(*)
FROM
    green_tripdata_2025_11
WHERE
    lpep_pickup_datetime BETWEEN '2025-11-01' AND '2025-12-01'
    AND trip_distance <= 1.0;
