# Write your MySQL query statement below



WITH spend AS (SELECT c.customer_id, SUM(price) as sum_price
FROM Customer c
RIGHT JOIN Sales s
ON s.customer_id = c.customer_id
GROUP BY customer_id),
salesperson1 AS (SELECT c.customer_id, s.salesperson_id, s.name FROM Salesperson s LEFT JOIN Customer c ON c.salesperson_id = s.salesperson_id)

SELECT salesperson1.salesperson_id, salesperson1.name, COALESCE(SUM(spend.sum_price), 0) AS total
FROM salesperson1
LEFT JOIN spend
ON spend.customer_id = salesperson1.customer_id
GROUP BY salesperson1.salesperson_id
