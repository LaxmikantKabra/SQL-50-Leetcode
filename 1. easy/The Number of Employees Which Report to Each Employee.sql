-- Write your PostgreSQL query statement below
-- Link to the question:-
-- https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50

select e1.employee_id,
    e1.name,
    count(e2.reports_to) as reports_count,
    round(avg(e2.age), 0) as average_age
from employees e1
    join employees e2 on e1.employee_id = e2.reports_to
group by 1,
    2
order by 1