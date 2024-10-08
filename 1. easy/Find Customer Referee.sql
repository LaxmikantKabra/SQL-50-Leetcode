-- Write your PostgreSQL query statement below
-- Link to the question:-
-- https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50

SELECT
    c.name
FROM
    customer c
WHERE
    c.referee_id != 2
    OR c.referee_id IS NULL;