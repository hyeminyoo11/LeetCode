# Write your MySQL query statement below

WITH diff AS (SELECT user_id, created_at - LEAD(created_at) OVER(PARTITION BY user_id ORDER BY created_at DESC) AS diff
FROM Users
)

SELECT DISTINCT user_id
FROM diff
WHERE diff <=7