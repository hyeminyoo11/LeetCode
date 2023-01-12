# Write your MySQL query statement below

-- November 2019 each country


WITH cte AS (SELECT *
FROM Weather
WHERE day >= '2019-11-01' AND
    day <= '2019-11-30'
)

SELECT c.country_name, 
    CASE 
        WHEN AVG(cte.weather_state) <= 15 THEN 'Cold'
        WHEN AVG(cte.weather_state) >= 25 THEN 'Hot'
        ELSE 'Warm'
    END AS weather_type
FROM cte
LEFT JOIN Countries c
ON c.country_id = cte.country_id
GROUP BY c.country_name

