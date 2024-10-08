-- Write your PostgreSQL query statement below
-- Link to the question:-
-- https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&envId=top-sql-50
select distinct
    v.author_id as id
from
    Views v
where
    v.author_id = v.viewer_id;