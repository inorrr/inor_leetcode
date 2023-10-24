# Write your MySQL query statement below
SELECT round((count(case when d.order_date = d.customer_pref_delivery_date then d.delivery_id end )/count(*))*100, 2) AS immediate_percentage
FROM Delivery d
WHERE NOT EXISTS (
    SELECT * FROM Delivery d1
    WHERE d.customer_id = d1.customer_id 
    and d.order_date > d1.order_date
);
