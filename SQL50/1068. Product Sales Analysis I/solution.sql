# Write your MySQL query statement below

SELECT 
    t2.product_name
    , t1.year
    , t1.price
FROM
    sales t1
Left join
    product t2
ON
    t2.product_id = t1.product_id