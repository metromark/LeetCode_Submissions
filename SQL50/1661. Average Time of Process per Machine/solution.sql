# Write your MySQL query statement below

select
    t1.machine_id,
    CAST(AVG(t2.timestamp - t1.timestamp) as DECIMAL(10,3)) as processing_time
from activity t1
left join activity t2
on t1.machine_id = t2.machine_id
where t1.activity_type = 'start' and t2.activity_type = 'end'
group by t1.machine_id
