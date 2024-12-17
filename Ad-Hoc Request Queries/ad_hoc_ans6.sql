WITH cte_monthly AS (
    SELECT
        dc.city_name,
        MONTHNAME(fp.month) AS month,
        SUM(fp.total_passengers) AS total_passengers,
        SUM(fp.repeat_passengers) AS repeat_passengers,
        ROUND(SUM(fp.repeat_passengers) * 100.0 / SUM(fp.total_passengers), 2) AS monthly_repeat_passenger_rate
    FROM fact_passenger_summary fp
    JOIN dim_city dc ON fp.city_id = dc.city_id
    GROUP BY dc.city_name, MONTHNAME(fp.month)
),

cte_city AS (
    SELECT
        dc.city_name,
        SUM(fp.total_passengers) AS total_passengers_city,
        SUM(fp.repeat_passengers) AS repeat_passengers_city,
        ROUND(SUM(fp.repeat_passengers) * 100.0 / SUM(fp.total_passengers), 2) AS city_repeat_passenger_rate
    FROM fact_passenger_summary fp
    JOIN dim_city dc ON fp.city_id = dc.city_id
    GROUP BY dc.city_name
)

SELECT
    m.city_name,
    m.month,
    m.total_passengers,
    m.repeat_passengers,
    m.monthly_repeat_passenger_rate,
    c.city_repeat_passenger_rate
FROM cte_monthly m
JOIN cte_city c ON m.city_name = c.city_name
ORDER BY m.city_name;