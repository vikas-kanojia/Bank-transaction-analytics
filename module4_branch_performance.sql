-- Query 61: Highest-performing branch
SELECT branch_name, SUM(transaction_amount) AS branch_business
FROM bank_transactions
GROUP BY branch_name
ORDER BY branch_business DESC
LIMIT 1;

-- Query 62: Lowest-performing branch
SELECT branch_name, SUM(transaction_amount) AS branch_business
FROM bank_transactions
GROUP BY branch_name
ORDER BY branch_business ASC
LIMIT 1;

-- Query 63: Branch with maximum deposits
SELECT branch_name, SUM(transaction_amount) AS total_deposits
FROM bank_transactions
WHERE transaction_type = 'Deposit'
GROUP BY branch_name
ORDER BY total_deposits DESC
LIMIT 1;

-- Query 64: Branch with maximum withdrawals
SELECT branch_name, SUM(transaction_amount) AS total_withdrawals
FROM bank_transactions
WHERE transaction_type = 'Withdrawal'
GROUP BY branch_name
ORDER BY total_withdrawals DESC
LIMIT 1;

-- Query 65: Average transaction by branch
SELECT branch_name, AVG(transaction_amount) AS avg_transaction
FROM bank_transactions
GROUP BY branch_name;

-- Query 66: Total customers by branch
SELECT branch_name, COUNT(DISTINCT customer_id) AS total_customers
FROM bank_transactions
GROUP BY branch_name;

-- Query 67: Branch-wise average balance
SELECT branch_name, AVG(balance_after_transaction) AS avg_balance
FROM bank_transactions
GROUP BY branch_name;

-- Query 68: Branch-wise credit score
SELECT branch_name, AVG(credit_score) AS avg_credit_score
FROM bank_transactions
GROUP BY branch_name;

-- Query 69: Branch-wise premium customers
SELECT branch_name, COUNT(DISTINCT customer_id) AS premium_customers
FROM bank_transactions
WHERE customer_segment = 'Premium'
GROUP BY branch_name;

-- Query 70: Branch-wise business growth (monthly)
SELECT branch_name, MONTH(transaction_date) AS month, SUM(transaction_amount) AS monthly_business
FROM bank_transactions
GROUP BY branch_name, MONTH(transaction_date)
ORDER BY branch_name, month;

-- Query 71: Branch-wise cash transactions
SELECT branch_name, COUNT(*) AS cash_transactions
FROM bank_transactions
WHERE payment_channel = 'Cash'
GROUP BY branch_name;

-- Query 72: Branch-wise digital transactions
SELECT branch_name, COUNT(*) AS digital_transactions
FROM bank_transactions
WHERE payment_channel IN ('UPI','Net Banking','ATM')
GROUP BY branch_name;

-- Query 73: Branch-wise customer segment analysis
SELECT branch_name, customer_segment, COUNT(DISTINCT customer_id) AS segment_count
FROM bank_transactions
GROUP BY branch_name, customer_segment;

-- Query 74: Branch-wise gender ratio
SELECT branch_name, gender, COUNT(DISTINCT customer_id) AS gender_count
FROM bank_transactions
GROUP BY branch_name, gender;

-- Query 75: Branch-wise occupation analysis
SELECT branch_name, occupation, COUNT(DISTINCT customer_id) AS occupation_count
FROM bank_transactions
GROUP BY branch_name, occupation;
