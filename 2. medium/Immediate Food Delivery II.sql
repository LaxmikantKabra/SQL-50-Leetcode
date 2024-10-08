-- Write your PostgreSQL query statement below
-- Link to the question:-
-- https://leetcode.com/problems/immediate-food-delivery-ii/description/?envType=study-plan-v2&envId=top-sql-50
SELECT round(
        100 * count(delivery_id) filter(
            WHERE d.order_date = d.customer_pref_delivery_date
        ) / count(*)::numeric,
        2
    ) AS immediate_percentage
FROM delivery d
WHERE d.order_date < all (
        SELECT d1.order_date
        FROM delivery d1
        WHERE d1.order_date <> d.order_date
            AND d.customer_id = d1.customer_id
    )