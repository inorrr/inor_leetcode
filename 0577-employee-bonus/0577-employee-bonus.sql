# Write your MySQL query statement below
select name, bonus 
FROM employee e left join bonus b on e.empId = b.empId
where bonus < 1000 or bonus is null;