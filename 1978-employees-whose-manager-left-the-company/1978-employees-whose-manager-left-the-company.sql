# Write your MySQL query statement below
SELECT employee_id 
FROM Employees e1
WHERE salary < 30000 
AND manager_id IS NOT NULL
AND NOT EXISTS (select * from Employees e2 where e2.employee_id = e1.manager_id)
ORDER BY e1.employee_id;