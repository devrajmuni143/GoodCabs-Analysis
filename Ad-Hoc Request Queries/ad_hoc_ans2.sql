WITH cte1 AS (
    SELECT 
        ft.city_id,
        dc.city_name,
        MONTHNAME(date) AS month,
        COUNT(*) AS actual_trips
    FROM 
        fact_trips ft
    JOIN 
        dim_city dc
    ON 
        ft.city_id = dc.city_id
    GROUP BY 
        ft.city_id, dc.city_name, MONTHNAME(date)
),

cte2 AS (
    SELECT 
        ct.city_name,
        ct.month,
        ct.actual_trips,
        mt.total_target_trips
    FROM 
        targets_db.monthly_target_trips mt
    JOIN 
        cte1 ct 
    ON 
        ct.city_id = mt.city_id 
        AND ct.month = MONTHNAME(mt.month)
    ORDER BY 
        ct.city_id
)

SELECT 
    *,
    IF(actual_trips > total_target_trips, 'Above Target', 'Below Target') AS performance_status,
    ROUND((actual_trips - total_target_trips) * 100.0 / total_target_trips, 2) AS difference_pct
FROM 
    cte2 
ORDER BY 
    month;