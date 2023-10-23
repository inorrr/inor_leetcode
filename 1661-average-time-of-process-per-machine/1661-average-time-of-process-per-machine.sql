# Write your MySQL query statement below
select machine_id, round(avg(duration), 3) as processing_time 
FROM
    ( SELECT machine_id, process_id, max(timestamp) - min(timestamp) as duration 
      from Activity 
      group by machine_id, process_id ) temp
group by machine_id;