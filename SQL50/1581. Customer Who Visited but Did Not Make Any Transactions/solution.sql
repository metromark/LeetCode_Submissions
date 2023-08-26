# Write your MySQL query statement below

SELECT 
    t1.customer_id,
    COUNT(t1.customer_id) as count_no_trans
FROM
    visits t1
left join
    transactions t2
on t1.visit_id = t2.visit_id
where t2.visit_id is NULL
group by 1