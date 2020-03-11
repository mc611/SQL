SELECT 
    e1.Id AS id, 
    e1.Month AS month, 
    SUM(e2.Salary) AS Salary
FROM Employee e1
LEFT JOIN Employee e2
ON e1.Id = e2.Id AND e1.Month >= e2.Month
WHERE (e1.Id, e1.Month) NOT IN(
    SELECT Id, MAX(Month)
    FROM Employee
    GROUP BY Id
)
GROUP BY e1.Id, e1.Month
ORDER BY e1.Id ASC, e1.Month DESC