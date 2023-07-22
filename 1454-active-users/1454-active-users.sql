# Write your MySQL query statement below


WITH
unique_date AS (
  SELECT id, login_date
  FROM Logins
  GROUP BY id, login_date
),
partitioned AS (
  SELECT *
  , DATEDIFF(login_date, '1970-01-01') - ROW_NUMBER() OVER (PARTITION BY id ORDER BY login_date) AS PartID
  FROM unique_date
)

SELECT DISTINCT partitioned.id, name
FROM partitioned
LEFT JOIN Accounts
ON partitioned.id = Accounts.id
GROUP BY partitioned.id, PartID
HAVING COUNT(*) >= 5
ORDER BY id
;
