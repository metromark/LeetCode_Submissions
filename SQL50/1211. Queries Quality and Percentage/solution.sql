# Write your MySQL query statement below

SELECT
    a.query_name,
    COALESCE(CAST(SUM(a.rating/a.position)/c.sum_of_pets AS DECIMAL(10,2)),2) as quality,
    COALESCE(CAST(b.poor_query/c.sum_of_pets * 100 AS DECIMAL(10,2)),0) as poor_query_percentage
FROM Queries a
LEFT JOIN
(
    SELECT query_name, COUNT(*) as poor_query FROM Queries WHERE rating < 3 GROUP BY 1
) b
ON a.query_name = b.query_name
LEFT JOIN
(
    SELECT
    query_name,
    COUNT(*) as sum_of_pets
    FROM Queries
    GROUP BY 1
) c
ON a.query_name = c.query_name
GROUP BY 1

# Revisit code
# SELECT 
#     query_name, 
#     ROUND(AVG((rating) / position), 2)  quality,
#     ROUND(AVG(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100, 2) poor_query_percentage 
# FROM Queries  GROUP BY query_name
