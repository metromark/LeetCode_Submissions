# Write your MySQL query statement below

SELECT
  a.project_id,
  CAST(AVG(b.experience_years) as DECIMAL(10,2)) as average_years
FROM Project a
LEFT JOIN Employee b
on a.employee_id = b.employee_id
GROUP BY 1