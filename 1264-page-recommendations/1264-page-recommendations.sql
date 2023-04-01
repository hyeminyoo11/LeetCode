# Write your MySQL query statement below

WITH cte AS (SELECT *
FROM Friendship
WHERE user1_id = 1 OR user2_id = 1)

SELECT DISTINCT l.page_id AS recommended_page
FROM cte c
INNER JOIN Likes l ON l.user_id = c.user1_id OR l.user_id = c.user2_id
WHERE l.page_id NOT IN (SELECT page_id FROM Likes WHERE user_id = 1)