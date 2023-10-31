# Write your MySQL query statement below
# SELECT count(CASE WHEN income < 20000 THEN account_id END) AS 'Low Salary',
# count(CASE WHEN 20000<= income <= 50000 THEN account_id END) AS 'Low Salary',
# count(CASE WHEN income > 50000 THEN account_id END) AS 'Low Salary'
# FROM Accounts;

SELECT 'High Salary' as category, count(*) AS accounts_count FROM Accounts WHERE income > 50000
UNION
SELECT 'Low Salary' as category, count(*) AS accounts_count FROM Accounts WHERE income < 20000
UNION
SELECT 'Average Salary' as category,count(*) AS accounts_count FROM Accounts WHERE 20000 <= income and income <= 50000;