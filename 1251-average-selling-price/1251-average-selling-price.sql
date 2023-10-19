# Write your MySQL query statement below
SELECT p.product_id, ROUND(IFNULL(sum(units*price)/sum(units),0), 2) AS average_price
FROM prices p LEFT JOIN UnitsSold s ON p.product_id = s.product_id AND 
purchase_date BETWEEN start_date AND end_date
GROUP BY product_id;
