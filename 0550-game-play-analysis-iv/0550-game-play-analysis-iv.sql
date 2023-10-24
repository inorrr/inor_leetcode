# Write your MySQL query statement below

# create view first_date AS 
# select player_id, min(event_date) AS first from acticity table group by player_id;

# SELECT round((<some expression>/count(distinct player_id)), 2) AS fraction
# FROM acticity join first_date using (player_id)
# WHERE activity.event_date = first_date.date

SELECT ROUND(COUNT(A1.player_id)/ (SELECT COUNT(DISTINCT A3.player_id) FROM Activity A3), 2) AS fraction
FROM
  Activity A1
WHERE
  (A1.player_id, DATE_SUB(A1.event_date, INTERVAL 1 DAY)) IN (
    SELECT A2.player_id, MIN(A2.event_date) FROM Activity A2 GROUP BY A2.player_id
  );
