-- Query 21: Total bank business
SELECT SUM(transaction_amount) AS total_business FROM bank_transactions;


-- Query 22: Total deposits
SELECT SUM(transaction_amount) AS total_deposits 
FROM bank_transactions 
WHERE transaction_type = 'Deposit';


-- Query 23: Total withdrawals
SELECT SUM(transaction_amount) AS total_withdrawals 
FROM bank_transactions 
WHERE transaction_type = 'Withdrawal';


-- Query 24: Average transaction
SELECT AVG(transaction_amount) AS average_transaction FROM bank_transactions;


-- Query 25: Highest transaction
SELECT MAX(transaction_amount) AS highest_transaction FROM bank_transactions;


-- Query 26: Lowest transaction
SELECT MIN(transaction_amount) AS lowest_transaction FROM bank_transactions;


-- Query 27: Branch-wise business
SELECT branch_name, SUM(transaction_amount) AS branch_business
FROM bank_transactions
GROUP BY branch_name;


-- Query 28: City-wise business
SELECT city, SUM(transaction_amount) AS city_business
FROM bank_transactions
GROUP BY city;


-- Query 29: State-wise business
SELECT state, SUM(transaction_amount) AS state_business
FROM bank_transactions
GROUP BY state;


-- Query 30: Account type-wise business
SELECT account_type, SUM(transaction_amount) AS account_business
FROM bank_transactions
GROUP BY account_type;


-- Query 31: Customer segment-wise business
SELECT customer_segment, SUM(transaction_amount) AS segment_business
FROM bank_transactions
GROUP BY customer_segment;


-- Query 32: Gender-wise business
SELECT gender, SUM(transaction_amount) AS gender_business
FROM bank_transactions
GROUP BY gender;


-- Query 33: Occupation-wise business
SELECT occupation, SUM(transaction_amount) AS occupation_business
FROM bank_transactions
GROUP BY occupation;


-- Query 34: Average balance
SELECT AVG(balance_after_transaction) AS average_balance FROM bank_transactions;


-- Query 35: Average credit score
SELECT AVG(credit_score) AS average_credit_score FROM bank_transactions;


-- Query 36: Maximum balance
SELECT MAX(balance_after_transaction) AS max_balance FROM bank_transactions;


-- Query 37: Minimum balance
SELECT MIN(balance_after_transaction) AS min_balance FROM bank_transactions;


-- Query 38: Monthly business
SELECT MONTH(transaction_date) AS month, SUM(transaction_amount) AS monthly_business
FROM bank_transactions
GROUP BY MONTH(transaction_date);


-- Query 39: Quarterly business
SELECT QUARTER(transaction_date) AS quarter, SUM(transaction_amount) AS quarterly_business
FROM bank_transactions
GROUP BY QUARTER(transaction_date);


-- Query 40: Yearly business
SELECT YEAR(transaction_date) AS year, SUM(transaction_amount) AS yearly_business
FROM bank_transactions
GROUP BY YEAR(transaction_date);
