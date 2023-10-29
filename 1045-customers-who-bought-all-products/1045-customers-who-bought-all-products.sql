# Write your MySQL query statement below

# CREATE VIEW id as
# SELECT DISTINCT customer_id
# FROM Customer;

# CREATE VIEW expected AS
# SELECT *
# FROM id cross join Product;

# CREATE VIEW not_all AS
# (expected) - (Customer);

# CREATE VIEW all_product as 
# (expected) - (not all);

# select distinct customer_id from all_product;

SELECT DISTINCT customer_id
from customer
where customer_id not in(
SELECT DISTINCT c.customer_id
FROM Customer c
CROSS JOIN Product p
LEFT JOIN Customer pc ON c.customer_id = pc.customer_id 
AND p.product_key = pc.product_key
WHERE pc.customer_id IS NULL);