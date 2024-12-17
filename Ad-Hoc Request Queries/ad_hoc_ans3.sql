SELECT 
    city_name,
    ROUND((SUM(CASE WHEN trip_count = '2-Trips' THEN repeat_passenger_count ELSE 0 END) * 100.0) / SUM(repeat_passenger_count), 2) AS trip_2,
    ROUND((SUM(CASE WHEN trip_count = '3-Trips' THEN repeat_passenger_count ELSE 0 END) * 100.0) / SUM(repeat_passenger_count), 2) AS trip_3,
    ROUND((SUM(CASE WHEN trip_count = '4-Trips' THEN repeat_passenger_count ELSE 0 END) * 100.0) / SUM(repeat_passenger_count), 2) AS trip_4,
    ROUND((SUM(CASE WHEN trip_count = '5-Trips' THEN repeat_passenger_count ELSE 0 END) * 100.0) / SUM(repeat_passenger_count), 2) AS trip_5,
    ROUND((SUM(CASE WHEN trip_count = '6-Trips' THEN repeat_passenger_count ELSE 0 END) * 100.0) / SUM(repeat_passenger_count), 2) AS trip_6,
    ROUND((SUM(CASE WHEN trip_count = '7-Trips' THEN repeat_passenger_count ELSE 0 END) * 100.0) / SUM(repeat_passenger_count), 2) AS trip_7,
    ROUND((SUM(CASE WHEN trip_count = '8-Trips' THEN repeat_passenger_count ELSE 0 END) * 100.0) / SUM(repeat_passenger_count), 2) AS trip_8,
    ROUND((SUM(CASE WHEN trip_count = '9-Trips' THEN repeat_passenger_count ELSE 0 END) * 100.0) / SUM(repeat_passenger_count), 2) AS trip_9,
    ROUND((SUM(CASE WHEN trip_count = '10-Trips' THEN repeat_passenger_count ELSE 0 END) * 100.0) / SUM(repeat_passenger_count), 2) AS trip_10
FROM dim_repeat_trip_distribution dr
JOIN dim_city dc
    ON dr.city_id = dc.city_id
GROUP BY city_name
ORDER BY city_name;