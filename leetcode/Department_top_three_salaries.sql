
-- SELECT 
--     d.Name AS Department,
--     T.Employee AS Employee,
--     T.Salary AS Salary
-- FROM (
--     SELECT 
--         e1.Name AS Employee,
--         e1.Salary AS Salary,
--         e1.DepartmentId AS Department,
--         COUNT(e2.Salary) AS num
--     FROM Employee e1 JOIN Employee e2
--     WHERE (e1.DepartmentId = e2.DepartmentId) AND (e1.Salary <= e2.Salary) 
-- ) AS T
-- LEFT JOIN Department d
-- ON T.Department = d.Id
-- WHERE num <= 3

SELECT
    d.Name AS 'Department', 
    e1.Name AS 'Employee', 
    e1.Salary
FROM Employee e1 JOIN Department d 
ON e1.DepartmentId = d.Id
WHERE
    3 > 
    (SELECT COUNT(DISTINCT(e2.Salary))
     FROM Employee e2
     WHERE e1.DepartmentId = e2.DepartmentId
     AND e2.Salary > e1.Salary
        )