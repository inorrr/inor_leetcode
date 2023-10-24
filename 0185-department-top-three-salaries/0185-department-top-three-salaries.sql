SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary 
FROM Department d JOIN Employee e ON e.DepartmentId=d.id 
WHERE 3 > (
    SELECT COUNT(DISTINCT e1.salary)
    FROM Employee e1 
    WHERE e1.salary > e.salary 
    AND e.departmentId = e1.departmentId
    )