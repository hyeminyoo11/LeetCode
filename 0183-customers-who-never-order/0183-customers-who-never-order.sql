# Write your MySQL query statement below


# SELECT name AS Customers
# FROM Customers
# WHERE name NOT IN (SELECT c.name
# FROM Orders o
# LEFT JOIN Customers c
# ON o.customerId = c.id)
# ;

WITH cte AS (SELECT c.id, c.name
FROM Orders o
LEFT JOIN Customers c
ON o.customerId = c.id)

SELECT name AS Customers
FROM Customers
WHERE id NOT IN (SELECT id FROM cte)
