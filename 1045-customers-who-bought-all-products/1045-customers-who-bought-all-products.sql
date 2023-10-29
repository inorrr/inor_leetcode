# Write your MySQL query statement below

# SELECT DISTINCT customer_id
# FROM customer
# WHERE customer_id not in(
#     SELECT DISTINCT c.customer_id
#     FROM Customer c
#     CROSS JOIN Product p
#     LEFT JOIN Customer pc ON c.customer_id = pc.customer_id 
#     AND p.product_key = pc.product_key
#     WHERE pc.customer_id IS NULL
# );

SELECT customer_id
 FROM customer c
  GROUP BY customer_id
   HAVING count(distinct product_key)=(SELECT count(distinct product_key) 
    FROM product)