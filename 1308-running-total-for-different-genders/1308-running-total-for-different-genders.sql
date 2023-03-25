# Write your MySQL query statement below

SELECT gender, day, SUM(score_points) OVER (PARTITION BY gender ORDER BY gender, day) as total
FROM Scores
GROUP BY gender, day
ORDER BY gender, day ASC
;
