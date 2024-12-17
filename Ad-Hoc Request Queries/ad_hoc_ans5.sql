WITH cte1 AS (
    SELECT
        dc.city_name,
        MONTHNAME(date) AS month,
        SUM(fare_amount) AS revenue
    FROM fact_trips ft
    JOIN dim_city dc ON ft.city_id = dc.city_id
    GROUP BY dc.city_name, month
),

cte2 AS (
    SELECT
        dc.city_name,
        SUM(fare_amount) AS total_revenue
    FROM fact_trips ft
    JOIN dim_city dc ON ft.city_id = dc.city_id
    GROUP BY dc.city_name
)

SELECT
    city_name,
    month,
    revenue,
    pct_contribution
FROM (
    SELECT 
        c1.city_name,
        c1.month,
        c1.revenue,
        c1.revenue * 100 / c2.total_revenue AS pct_contribution,
        DENSE_RANK() OVER (PARTITION BY city_name ORDER BY revenue DESC) AS rank_no
    FROM cte1 c1
    JOIN cte2 c2 ON c1.city_name = c2.city_name
) AS x 
WHERE x.rank_no = 1;