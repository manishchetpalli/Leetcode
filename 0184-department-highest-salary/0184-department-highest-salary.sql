# Write your MySQL query statement below
SELECT
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM Employee e
JOIN (
    SELECT departmentId, MAX(salary) AS max_salary
    FROM Employee
    GROUP BY departmentId
) m
    ON e.departmentId = m.departmentId
   AND e.salary = m.max_salary
JOIN Department d
    ON e.departmentId = d.id;


-- SELECT
--     d.name AS Department,
--     e.name AS Employee,
--     e.salary AS Salary
-- FROM (
--     SELECT *,
--            DENSE_RANK() OVER (
--                PARTITION BY departmentId
--                ORDER BY salary DESC
--            ) AS rnk
--     FROM Employee
-- ) e
-- JOIN Department d
--     ON e.departmentId = d.id
-- WHERE e.rnk = 1;
