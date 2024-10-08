-- Write your PostgreSQL query statement below
-- Link to the question:-
-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/?envType=study-plan-v2&envId=top-sql-50
select e1.name
from employee e1
    inner join employee e2 on e1.id = e2.managerid
group by e1.name,
    e1.id
having count(distinct(e2.id)) >= 5