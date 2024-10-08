-- Write your PostgreSQL query statement below
-- Link to the question:-
-- https://leetcode.com/problems/monthly-transactions-i/description/?envType=study-plan-v2&envId=top-sql-50
select to_char(t.trans_date::date, 'YYYY-MM') as month,
    t.country,
    count(t.id) as trans_count,
    count(state) filter(
        where state = 'approved'
    ) as approved_count,
    sum(t.amount) as trans_total_amount,
    -- sum(t.amount) filter(where state='approved') as approved_total_amount
    sum(
        case
            when state = 'approved' then t.amount
            else 0
        end
    ) as approved_total_amount
from transactions t
group by 1,
    2