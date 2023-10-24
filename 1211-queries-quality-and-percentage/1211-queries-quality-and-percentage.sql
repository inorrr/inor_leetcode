# Write your MySQL query statement below
SELECT query_name, 
round(sum(rating/position)/count(*), 2) AS quality, 
round((count(case when rating<3 then query_name end)/count(*))*100, 2)  AS poor_query_percentage
FROM Queries
GROUP BY query_name;