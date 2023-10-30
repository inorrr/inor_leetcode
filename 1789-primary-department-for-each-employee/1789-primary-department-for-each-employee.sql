# Write your MySQL query statement below
SELECT employee_id, department_id
FROM Employee w
WHERE primary_flag = 'Y' OR (SELECT count(*) FROM Employee e1 WHERE e1.employee_id = w.employee_id) = 1;