select Signups.user_id, ifnull(round(sum(action="confirmed")/count(*),2), 0.00) AS confirmation_rate
from signups 
left join confirmations 
on signups.user_id = confirmations.user_id
group by signups.user_id;
