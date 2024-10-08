-- Write your PostgreSQL query statement below
-- Link to the question:-
-- https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50
select
    s.student_id,
    s.student_name,
    su.subject_name,
    count(e.subject_name) as attended_exams
from
    students s
    cross join subjects su
    left join examinations e on s.student_id = e.student_id
    AND su.subject_name = e.subject_name
group by
    1,
    2,
    3
order by
    1,
    3