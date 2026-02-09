SELECT
    u.NAME,
    SUM(t.AMOUNT) AS BALANCE
FROM users u
INNER JOIN Transactions t 
ON u.account = t.account
GROUP BY u.account
HAVING BALANCE > 10000