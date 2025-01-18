SELECT 'Low Salary' AS category, SUM(INCOME<20000) AS accounts_count
FROM Accounts UNION
SELECT 'Average Salary' AS category, SUM(INCOME>=20000 AND INCOME<=50000) AS accounts_count
FROM Accounts UNION
SELECT 'High Salary' AS category, SUM(INCOME>50000) AS accounts_count
FROM Accounts;