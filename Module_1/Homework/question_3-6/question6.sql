--Answer: Yorkville West
SELECT
    z_do."Zone" AS dropoff_zone,
    MAX(gt.tip_amount) AS max_tip
FROM
    "green_tripdata_2025_11" gt
    JOIN zones z_pu ON gt."PULocationID" = z_pu."LocationID"
    JOIN zones z_do ON gt."DOLocationID" = z_do."LocationID"
WHERE
    z_pu."Zone" = 'East Harlem North'
GROUP BY
    z_do."Zone"
ORDER BY
    max_tip DESC
LIMIT
    5;
