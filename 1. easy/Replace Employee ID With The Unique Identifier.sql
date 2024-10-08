-- Write your PostgreSQL query statement below
-- Link to the question:-
-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/?envType=study-plan-v2&envId=top-sql-50
SELECT eu.unique_id,
    e.name
FROM Employees e
    LEFT JOIN EmployeeUNI eu ON e.id = eu.id;