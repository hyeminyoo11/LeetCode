# Write your MySQL query statement below

WITH cte AS (
  SELECT b.box_id, b.chest_id, COALESCE(c.apple_count, 0) AS chest_apple, COALESCE(c.orange_count, 0) AS chest_orange, COALESCE(b.apple_count, 0) AS apple_count, COALESCE(b.orange_count, 0) AS orange_count
FROM Boxes b
LEFT JOIN Chests c
ON b.chest_id = c.chest_id)

SELECT SUM(apple_count) + SUM(chest_apple) AS apple_count, SUM(orange_count) + SUM(chest_orange) as orange_count
FROM cte
