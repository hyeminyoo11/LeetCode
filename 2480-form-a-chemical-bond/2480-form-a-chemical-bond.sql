# Write your MySQL query statement below

WITH non_metal AS (SELECT 
    symbol as nonmetal
FROM Elements
WHERE type = 'nonmetal')


SELECT 
    symbol as metal, non_metal.nonmetal
FROM Elements
CROSS JOIN non_metal
WHERE type = 'metal'
