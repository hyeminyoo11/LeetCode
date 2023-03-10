# Write your MySQL query statement below


-- num of times each stud attend each exam

SELECT s.student_id, s.student_name, sub.subject_name, 
    CASE WHEN j.attended_exams IS NULL THEN 0 ELSE j.attended_exams END as attended_exams
FROM Students s 
CROSS JOIN Subjects sub
LEFT JOIN(
    SELECT student_id, COUNT(student_id) as attended_exams, subject_name
    FROM Examinations
    GROUP BY student_id, subject_name
) AS j
ON s.student_id = j.student_id AND sub.subject_name = j.subject_name
ORDER BY student_id, subject_name