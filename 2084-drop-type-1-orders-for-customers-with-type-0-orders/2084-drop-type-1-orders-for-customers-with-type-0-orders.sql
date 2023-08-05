# Write your MySQL query statement below

SELECT *
FROM Orders
WHERE customer_id IN (SELECT customer_id
FROM Orders
GROUP BY customer_id
HAVING SUM(order_type) = 0 or SUM(order_type) = COUNT(*))

UNION

SELECT *
FROM Orders
WHERE customer_id IN (SELECT customer_id
FROM Orders
GROUP BY customer_id
HAVING SUM(order_type) <> 0 or SUM(order_type) <> COUNT(*)) AND order_type =0