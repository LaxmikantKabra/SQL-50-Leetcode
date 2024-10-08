-- Write your PostgreSQL query statement below
-- Link to the question:-
-- https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50
select a1.machine_id,
    round(avg(a2.timestamp - a1.timestamp)::numeric, 3) as processing_time
from activity a1
    left join activity a2 on a1.machine_id = a2.machine_id
    and a1.activity_type = 'start'
    and a2.activity_type = 'end'
group by a1.machine_id
