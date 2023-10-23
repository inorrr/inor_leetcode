# Write your MySQL query statement below
select contest_id, round((count(*)/(SELECT COUNT(DISTINCT user_id) FROM Users))*100, 2)
as percentage
from register
group by contest_id
order by percentage desc, contest_id asc;