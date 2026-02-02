SELECT
    COUNT(*)
FROM
    public.yellow_tripdata
WHERE
    filename LIKE 'yellow_tripdata_2020-%';