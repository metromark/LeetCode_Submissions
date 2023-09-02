# Write your MySQL query statement below

SELECT
    a.user_id,
    CAST(
        AVG(
            CASE
                WHEN b.action = 'confirmed' THEN 1
                ELSE 0
            END
        ) as DECIMAL(10,2)  
    ) as confirmation_rate
FROM Signups a
LEFT JOIN Confirmations b
ON a.user_id = b.user_id
GROUP BY 1