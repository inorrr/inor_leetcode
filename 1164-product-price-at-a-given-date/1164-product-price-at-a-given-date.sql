# Write your MySQL query statement below
(SELECT product_id, new_price as price
FROM Products p1
WHERE change_date <= '2019-08-16' 
AND NOT EXISTS (
    SELECT * FROM Products p2 
    WHERE p1.product_id = p2.product_id 
    AND p2.change_date <= '2019-08-16' 
    AND p2.change_date > p1.change_date))
    
UNION 

(SELECT product_id, 10 as price
FROM products p3
WHERE NOT EXISTS(
    SELECT * FROM Products p4 
    WHERE p3.product_id = p4.product_id 
    AND p4.change_date <= '2019-08-16' ));