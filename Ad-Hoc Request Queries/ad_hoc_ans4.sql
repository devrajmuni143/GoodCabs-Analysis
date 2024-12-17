(
    SELECT 
        dc.city_name,
        SUM(new_passengers) AS total_new_passengers,
        "Top 3" AS city_category
    FROM fact_passenger_summary fs
    JOIN dim_city dc ON fs.city_id = dc.city_id
    GROUP BY dc.city_name
    ORDER BY total_new_passengers DESC
    LIMIT 3
)
UNION ALL
(
    SELECT 
        dc.city_name,
        SUM(new_passengers) AS total_new_passengers,
        "Bottom 3" AS city_category
    FROM fact_passenger_summary fs
    JOIN dim_city dc ON fs.city_id = dc.city_id
    GROUP BY dc.city_name
    ORDER BY total_new_passengers ASC
    LIMIT 3
);