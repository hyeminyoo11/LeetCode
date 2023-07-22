# Write your MySQL query statement below

WITH apple AS(
    SELECT *
    FROM Sales
    WHERE fruit = 'apples')
    
, orange AS(
    SELECT *
    FROM Sales
    WHERE fruit = 'oranges')

SELECT a.sale_date, (a.sold_num - o.sold_num) AS diff
FROM apple a
LEFT JOIN orange o
ON a.sale_date = o.sale_date