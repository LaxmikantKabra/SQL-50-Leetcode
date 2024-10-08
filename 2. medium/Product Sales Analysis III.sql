-- Write your PostgreSQL query statement below
-- Link to the question:-
-- https://leetcode.com/problems/product-sales-analysis-iii/description/?envType=study-plan-v2&envId=top-sql-50
select s.product_id,
    s.year as first_year,
    s.quantity,
    s.price
from sales s
where (s.product_id, s.year) in (
        select s1.product_id,
            min(s1.year)
        from sales s1
        where s1.product_id = s.product_id
        group by 1
    )