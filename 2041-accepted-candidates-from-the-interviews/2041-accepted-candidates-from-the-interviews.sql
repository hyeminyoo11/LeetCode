# Write your MySQL query statement below

SELECT c.candidate_id
FROM Candidates c
LEFT JOIN (SELECT interview_id, SUM(score) AS sum_score
FROM Rounds
GROUP BY interview_id) s
ON c.interview_id = s.interview_id
WHERE c.years_of_exp >=2 and s.sum_score > 15
;