--answer 2025-11-14
SELECT 
	lpep_pickup_datetime::DATE,
	trip_distance
FROM
	green_tripdata_2025_11
WHERE
	trip_distance <= 100.0
ORDER BY
	trip_distance DESC
LIMIT 
	5;