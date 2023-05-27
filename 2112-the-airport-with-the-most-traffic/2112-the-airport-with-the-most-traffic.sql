# Write your MySQL query statement below

WITH uni AS (SELECT departure_airport AS airport_id, flights_count FROM Flights
           UNION ALL
           SELECT arrival_airport AS airport_id, flights_count FROM Flights)
SELECT airport_id 
FROM uni
GROUP BY airport_id
HAVING SUM(flights_count) = (SELECT SUM(flights_count) FROM uni GROUP BY airport_id ORDER BY 1 DESC LIMIT 1)