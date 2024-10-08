-- Write your PostgreSQL query statement below
-- Link to the question:-
-- https://leetcode.com/problems/big-countries/description/?envType=study-plan-v2&envId=top-sql-50

select
    w.name,
    w.population,
    w.area
from
    world w
where
    w.area >= 3000000
    or w.population >= 25000000;