-- Write your PostgreSQL query statement below
-- Link to the question:-
-- https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50

select
    "tweet_id"
from
    Tweets
where
    length ("content") > 15;