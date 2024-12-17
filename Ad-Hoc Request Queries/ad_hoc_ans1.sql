WITH cte1 AS (
    SELECT 
        city_id,
        COUNT(trip_id) AS total_trips,
        ROUND(AVG(fare_amount / distance_travelled_km), 2) AS avg_fare_per_km,
        ROUND(AVG(fare_amount), 2) AS avg_fare_per_trip,
        ROUND(COUNT(trip_id) * 100.0 / (SELECT COUNT(*) FROM fact_trips), 2) AS trip_contribution
    FROM 
        fact_trips
    GROUP BY 
        city_id
)
SELECT 
    dc.city_name,
    ct.total_trips,
    ct.avg_fare_per_km,
    ct.avg_fare_per_trip,
    ct.trip_contribution
FROM 
    cte1 ct
JOIN 
    dim_city dc
ON 
    ct.city_id = dc.city_id
ORDER BY 
    ct.trip_contribution DESC;

-- OR 

with cte1 as (select
	city_id,
	count(trip_id) as total_trips,
	Avg(fare_amount/distance_travelled_km) as avg_fare_per_km,
	Avg(fare_amount) as avg_fare_per_trip,
	(count(trip_id)*100/ sum(count(trip_id)) over() ) as trip_contribution
from fact_trips 
group by city_id)



select 
	dc.city_name,
	total_trips,
	avg_fare_per_km,
	avg_fare_per_trip,
	pct_contribution
from cte1 ct
join dim_city dc
on ct.city_id = dc.city_id
order by pct_contribution desc
