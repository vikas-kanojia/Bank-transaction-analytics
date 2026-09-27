-- Query 91: Total bank business KPI
SELECT SUM(transaction_amount) AS total_business FROM bank_transactions;

-- Query 92: Total deposits KPI
SELECT SUM(transaction_amount) AS total_deposits 
FROM bank_transactions 
WHERE transaction_type = 'Deposit';

-- Query 93: Total withdrawals KPI
SELECT SUM(transaction_amount) AS total_withdrawals 
FROM bank_transactions 
WHERE transaction_type = 'Withdrawal';

-- Query 94: Total customers KPI
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM bank_transactions;

-- Query 95: Total transactions KPI
SELECT COUNT(*) AS total_transactions FROM bank_transactions;

-- Query 96: Average transaction KPI
SELECT AVG(transaction_amount) AS avg_transaction FROM bank_transactions;

-- Query 97: Highest transaction KPI
SELECT MAX(transaction_amount) AS highest_transaction FROM bank_transactions;

-- Query 98: Lowest transaction KPI
SELECT MIN(transaction_amount) AS lowest_transaction FROM bank_transactions;

-- Query 99: Branch-wise KPI (business + customers)
SELECT branch_name, 
       SUM(transaction_amount) AS branch_business, 
       COUNT(DISTINCT customer_id) AS branch_customers
FROM bank_transactions
GROUP BY branch_name;

-- Query 100: Monthly KPI (business + transactions)
SELECT MONTH(transaction_date) AS month, 
       SUM(transaction_amount) AS monthly_business, 
       COUNT(*) AS monthly_transactions
FROM bank_transactions
GROUP BY MONTH(transaction_date)
ORDER BY month;
