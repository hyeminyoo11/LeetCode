# Write your MySQL query statement below

WITH first AS (
    SELECT first_col, ROW_NUMBER() OVER () AS number
    FROM Data
    ORDER BY first_col ASC
),
second AS (
    SELECT second_col, ROW_NUMBER() OVER () AS number
    FROM Data
    ORDER BY second_col DESC
)

SELECT f.first_col, s.second_col
FROM first f
JOIN second s
ON f.number = s.number
