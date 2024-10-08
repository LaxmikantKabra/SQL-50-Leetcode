-- Write your PostgreSQL query statement below
-- Link to the question:-
-- https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50
select w1.id
from weather w1
    right join weather w2 on w1.recordDate = w2.recordDate + 1
where w1.temperature > w2.temperature