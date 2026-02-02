SELECT
    COUNT(*)
FROM
    public.green_tripdata
WHERE
    filename LIKE 'green_tripdata_2020-%';