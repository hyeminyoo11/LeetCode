# Write your MySQL query statement below

SELECT customer_id
FROM Customers
GROUP BY customer_id, year
HAVING year = 2021 AND SUM(revenue) > 0