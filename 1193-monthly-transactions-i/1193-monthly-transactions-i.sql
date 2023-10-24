SELECT DATE_FORMAT(trans_date, '%Y-%m') AS month, country, count(*) AS trans_count, count(case when state = "approved" then id end) AS approved_count, sum(amount) AS trans_total_amount, sum(case when state = "approved" then amount else 0 end)AS approved_total_amount
FROM Transactions
GROUP BY DATE_FORMAT(trans_date, '%Y-%m'), country;