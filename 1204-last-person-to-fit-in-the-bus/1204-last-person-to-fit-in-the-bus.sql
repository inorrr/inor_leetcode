# Write your MySQL query statement below
SELECT person_name FROM
(SELECT * FROM Queue ORDER BY turn) AS ordered
WHERE 1000 >= (SELECT sum(weight) FROM queue WHERE turn <= ordered.turn)
ORDER BY turn DESC
LIMIT 1;