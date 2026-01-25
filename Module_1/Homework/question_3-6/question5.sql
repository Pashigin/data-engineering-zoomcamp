--Answer: East Harlem North
SELECT 
	z."Zone",
	gt.lpep_pickup_datetime::DATE as date,
	SUM(gt.total_amount) as sum_amount
FROM
	green_tripdata_2025_11 gt JOIN zones z
	ON gt."PULocationID" = z."LocationID"
WHERE
	gt.lpep_pickup_datetime::DATE = '2025-11-18'
GROUP BY
	z."Zone",
	date
ORDER BY 
	sum_amount DESC
LIMIT 5;
