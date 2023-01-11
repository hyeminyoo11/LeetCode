# Write your MySQL query statement below

-- num of tasks submit on weekend as weeked_cnt
-- " on working days  as working_cnt

WITH day AS(SELECT *, DAYOFWEEK(submit_date) as days
FROM Tasks
)
SELECT 
    SUM(CASE WHEN days = 1 OR days = 7 THEN 1 ELSE 0 END) AS weekend_cnt,
    SUM(CASE WHEN days = 1 OR days = 7 THEN 0 ELSE 1 END) AS working_cnt
FROM day
