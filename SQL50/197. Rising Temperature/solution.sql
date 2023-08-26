# Write your MySQL query statement below

# select
#     t1.id,
#     t2.id,
#     t1.temperature,
#     t2.temperature
# from weather t1
# left join weather t2
# on t1.id = (t2.id + 1)

# select
#     t1.id
# from weather t1
# left join weather t2
# on t1.recordDate = (t2.recordDate + 1)
# where t1.temperature > t2.temperature;


select
    t1.id
from weather t1, weather t2
where t1.temperature > t2.temperature
AND DATEDIFF(t1.recordDate,t2.recordDate) = 1;