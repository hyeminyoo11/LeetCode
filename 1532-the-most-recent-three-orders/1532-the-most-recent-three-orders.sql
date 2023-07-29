# Write your MySQL query statement below

-- most recent three orders of each user
-- order by customer_name ASC
-- tie-> customer_id ASC
-- tie --> orde_date DESC

WITH rn AS (SELECT c.name AS customer_name, o.customer_id, o.order_id, o.order_date, ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date DESC) AS row_num
FROM Orders o
LEFT JOIN Customers c
ON o.customer_id = c.customer_id
ORDER BY c.name ASC, o.customer_id ASC, o.order_date DESC
)

SELECT customer_name, customer_id, order_id, order_date
FROM rn
WHERE row_num <=3