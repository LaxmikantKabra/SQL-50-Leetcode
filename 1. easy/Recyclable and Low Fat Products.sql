-- Write your PostgreSQL query statement below
-- Link to the question:-
-- https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50

SELECT
    product_id
from
    products
where
    low_fats = 'Y'
    and recyclable = 'Y'