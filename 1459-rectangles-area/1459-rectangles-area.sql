# Write your MySQL query statement below

# WITH p_1 AS (
#     SELECT id AS p1, x_value, y_value
#     FROM Points
# ),
# p_2 AS (
#     SELECT id AS p2, x_value, y_value
#     FROM Points
# )
# SELECT p_1.p1, p_2.p2, ABS(p_1.x_value - p_2.x_value) * ABS(p_1.y_value - p_2.y_value) AS area
# FROM p_1
# JOIN p_2
# ON p_1.p1 < p_2.p2
# WHERE p_1.x_value != p_2.x_value AND p_1.y_value != p_2.y_value
# ORDER BY area DESC, p1 ASC

SELECT  pt1.id as P1, pt2.id as P2,
		ABS(pt2.x_value - pt1.x_value)*ABS(pt2.y_value-pt1.y_value) as AREA
FROM Points pt1 JOIN Points pt2 
ON pt1.id<pt2.id
AND pt1.x_value!=pt2.x_value 
AND pt2.y_value!=pt1.y_value
ORDER BY AREA DESC, p1 ASC, p2 ASC;