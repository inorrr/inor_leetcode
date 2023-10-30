# # Write your MySQL query statement below
# SELECT employee_id, department_id
# FROM Employee w
# WHERE primary_flag = 'Y' OR (SELECT count(*) FROM Employee e1 WHERE e1.employee_id = w.employee_id) = 1;

SELECT employee_id,department_id from Employee
group by employee_id
having count(employee_id)=1 
UNION 
SELECT employee_id,department_id from Employee
where primary_flag='Y'