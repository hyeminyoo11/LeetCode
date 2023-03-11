# Write your MySQL query statement below

WITH cte AS(SELECT event_type, AVG(occurences) as A
FROM Events
GROUP BY event_type)

SELECT e.business_id
FROM Events e
LEFT JOIN cte c
ON e.event_type = c.event_type
WHERE e.occurences > c.A
GROUP BY e.business_id
HAVING COUNT(*) > 1
;