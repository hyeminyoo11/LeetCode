# Write your MySQL query statement below

WITH feb AS(
    SELECT  o.product_id, o.order_date, o.unit
    FROM Orders o
    WHERE o.order_date >= "2020-02-01" AND o.order_date < "2020-03-01"
)

SELECT p.product_name, fed_unit.unit
FROM Products p
RIGHT JOIN(
    SELECT product_id, SUM(unit) AS unit
    FROM feb
    GROUP BY product_id
    HAVING unit >= 100
) AS fed_unit
ON p.product_id = fed_unit.product_id
;