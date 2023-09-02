# Write your MySQL query statement below

SELECT name FROM (
    SELECT
    a.id,
    CASE
        WHEN COUNT(a.id) >= 5 and COUNT(b.managerId) >= 5 THEN a.name
    END as name
    FROM Employee a
    left Join Employee b
    on a.id = b.managerId
    GROUP BY 1
) as t1
WHERE name is not null


# Write your MySQL query statement below
{# 
SELECT name FROM (
    SELECT
    a.id,
    a.name,
    COUNT(a.id) as id_cnt,
    COUNT(b.managerId) as m_cnt
    FROM Employee a
    left Join Employee b
    on a.id = b.managerId
    GROUP BY 1,2
) as t1
WHERE name is not null
and id_cnt >= 5
and m_cnt >= 5 #}