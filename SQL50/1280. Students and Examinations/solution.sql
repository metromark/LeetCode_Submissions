# # Write your MySQL query statement below

SELECT 
    a.student_id,
    a.student_name,
    b.subject_name,
    CASE
        WHEN c.subject_name is null then 0
        ELSE COUNT(*)
    END as attended_exams
from Students a
JOIN Subjects b
LEFT JOIN Examinations c
ON a.student_id = c.student_id
AND b.subject_name = c.subject_name
GROUP BY 1,2,3
ORDER BY 1,2,3