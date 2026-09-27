-- Query 76: High-value transactions (above ₹1,00,000)
SELECT * 
FROM bank_transactions
WHERE transaction_amount > 100000;


-- Query 77: Suspicious transactions (above ₹2,00,000)
SELECT * 
FROM bank_transactions
WHERE transaction_amount > 200000;


-- Query 78: Customers with frequent withdrawals (more than 10)
SELECT customer_id, customer_name, COUNT(*) AS withdrawal_count
FROM bank_transactions
WHERE transaction_type = 'Withdrawal'
GROUP BY customer_id, customer_name
HAVING COUNT(*) > 10;


-- Query 79: Customers with frequent deposits (more than 10)
SELECT customer_id, customer_name, COUNT(*) AS deposit_count
FROM bank_transactions
WHERE transaction_type = 'Deposit'
GROUP BY customer_id, customer_name
HAVING COUNT(*) > 10;


-- Query 80: Customers with negative or zero balance
SELECT DISTINCT customer_id, customer_name, balance_after_transaction
FROM bank_transactions
WHERE balance_after_transaction <= 0;


-- Query 81: Customers with loan status 'Default'
SELECT DISTINCT customer_id, customer_name, loan_status
FROM bank_transactions
WHERE loan_status = 'Default';


-- Query 82: Customers with loan status 'Overdue'
SELECT DISTINCT customer_id, customer_name, loan_status
FROM bank_transactions
WHERE loan_status = 'Overdue';


-- Query 83: Customers with credit score below 550
SELECT DISTINCT customer_id, customer_name, credit_score
FROM bank_transactions
WHERE credit_score < 550;


-- Query 84: Customers with credit score above 800
SELECT DISTINCT customer_id, customer_name, credit_score
FROM bank_transactions
WHERE credit_score > 800;


-- Query 85: Customers with sudden large withdrawals (above ₹1,50,000)
SELECT * 
FROM bank_transactions
WHERE transaction_type = 'Withdrawal' AND transaction_amount > 150000;


-- Query 86: Customers with sudden large deposits (above ₹2,00,000)
SELECT * 
FROM bank_transactions
WHERE transaction_type = 'Deposit' AND transaction_amount > 200000;


-- Query 87: Customers with multiple payment channels (possible fraud risk)
SELECT customer_id, customer_name, COUNT(DISTINCT payment_channel) AS channels_used
FROM bank_transactions
GROUP BY customer_id, customer_name
HAVING COUNT(DISTINCT payment_channel) > 3;


-- Query 88: Customers with inconsistent balances (balance < transaction_amount)
SELECT * 
FROM bank_transactions
WHERE balance_after_transaction < transaction_amount;


-- Query 89: RBI threshold check (transactions above ₹10,00,000)
SELECT * 
FROM bank_transactions
WHERE transaction_amount > 1000000;


-- Query 90: Customers flagged for risk (low credit score + high withdrawals)
SELECT customer_id, customer_name, SUM(transaction_amount) AS total_withdrawals, MIN(credit_score) AS min_credit_score
FROM bank_transactions
WHERE transaction_type = 'Withdrawal'
GROUP BY customer_id, customer_name
HAVING total_withdrawals > 200000 AND min_credit_score < 600;
