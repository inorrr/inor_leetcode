# Write your MySQL query statement below
SELECT person_name
FROM Queue q1
WHERE 1000 >= (SELECT sum(weight) FROM Queue WHERE turn <= q1.turn)
ORDER BY turn DESC
LIMIT 1;

# SELECT 
#     q1.person_name
# FROM Queue q1 JOIN Queue q2 ON q1.turn >= q2.turn
# GROUP BY q1.turn
# HAVING SUM(q2.weight) <= 1000
# ORDER BY SUM(q2.weight) DESC
# LIMIT 1;