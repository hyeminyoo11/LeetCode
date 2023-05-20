# Write your MySQL query statement below


WITH best AS(SELECT candidateID, COUNT(*) AS vote_count
FROM
(SELECT v.id, c.name, v.candidateId
FROM Vote v
LEFT JOIN Candidate c
ON v.candidateID = c.id) total
GROUP BY candidateId
ORDER BY vote_count DESC
LIMIT 1)

SELECT c.name 
FROM best b
LEFT JOIN Candidate c
ON c.id = b.candidateID