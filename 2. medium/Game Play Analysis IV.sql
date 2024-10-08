-- Write your PostgreSQL query statement below
-- Link to the question:-
-- https://leetcode.com/problems/game-play-analysis-iv/description/?envType=study-plan-v2&envId=top-sql-50

select round(
        count(distinct(a.player_id))::numeric /(
            select count(distinct(player_id))
            from activity
        ),
        2
    ) as fraction
from activity a
where (a.player_id, a.event_date) in (
        select a1.player_id,
            min(a1.event_date) + 1
        from activity a1
        group by a1.player_id
    )