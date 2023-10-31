# Write your MySQL query statement below
SELECT person_name
FROM Queue q1
WHERE 1000 >= (SELECT sum(weight) FROM Queue WHERE turn <= q1.turn)
ORDER BY turn DESC
LIMIT 1;