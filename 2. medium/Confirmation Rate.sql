-- Write your PostgreSQL query statement below
-- Link to the question:-
-- https://leetcode.com/problems/confirmation-rate/description/?envType=study-plan-v2&envId=top-sql-50
select s.user_id,
    round(
        count(c.action) filter (
            where c.action = 'confirmed'
        ) / count(*)::decimal,
        2
    ) as confirmation_rate
from signups s
    left join confirmations c on s.user_id = c.user_id
group by 1
order by 1