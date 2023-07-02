# Write your MySQL query statement below

SELECT COALESCE(t2.unique_id, null) as unique_id, t1.name
FROM employees t1
left join employeeuni t2
on t1.id = t2.id