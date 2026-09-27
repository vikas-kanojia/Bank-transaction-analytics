-- Query 41: Top 10 customers by business
SELECT customer_id, customer_name, SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY customer_id, customer_name
ORDER BY total_business DESC
LIMIT 10;

-- Query 42: Customers with more than five transactions
SELECT customer_id, customer_name, COUNT(*) AS transaction_count
FROM bank_transactions
GROUP BY customer_id, customer_name
HAVING COUNT(*) > 5;

-- Query 43: Customers having business above ₹5,00,000
SELECT customer_id, customer_name, SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY customer_id, customer_name
HAVING SUM(transaction_amount) > 500000;

-- Query 44: Customers with low credit score
SELECT DISTINCT customer_id, customer_name, credit_score
FROM bank_transactions
WHERE credit_score < 600;

-- Query 45: Customers with high credit score
SELECT DISTINCT customer_id, customer_name, credit_score
FROM bank_transactions
WHERE credit_score > 750;

-- Query 46: Senior citizen customers
SELECT DISTINCT customer_id, customer_name, age
FROM bank_transactions
WHERE age >= 60;

-- Query 47: Young customers
SELECT DISTINCT customer_id, customer_name, age
FROM bank_transactions
WHERE age <= 25;

-- Query 48: Premium customers
SELECT DISTINCT customer_id, customer_name
FROM bank_transactions
WHERE customer_segment = 'Premium';

-- Query 49: Salary account customers
SELECT DISTINCT customer_id, customer_name
FROM bank_transactions
WHERE account_type = 'Savings' AND occupation = 'Employee';

-- Query 50: Business account customers
SELECT DISTINCT customer_id, customer_name
FROM bank_transactions
WHERE account_type = 'Current' AND customer_segment = 'Business';

-- Query 51: Average customer age
SELECT AVG(age) AS average_age FROM bank_transactions;

-- Query 52: Age-group analysis
SELECT CASE
           WHEN age < 25 THEN 'Young'
           WHEN age BETWEEN 25 AND 40 THEN 'Adult'
           WHEN age BETWEEN 41 AND 60 THEN 'Middle-aged'
           ELSE 'Senior'
       END AS age_group,
       COUNT(*) AS customer_count
FROM bank_transactions
GROUP BY age_group;

-- Query 53: City-wise customer count
SELECT city, COUNT(DISTINCT customer_id) AS customer_count
FROM bank_transactions
GROUP BY city;

-- Query 54: State-wise customer count
SELECT state, COUNT(DISTINCT customer_id) AS customer_count
FROM bank_transactions
GROUP BY state;

-- Query 55: Customer segment distribution
SELECT customer_segment, COUNT(DISTINCT customer_id) AS segment_count
FROM bank_transactions
GROUP BY customer_segment;

-- Query 56: Occupation distribution
SELECT occupation, COUNT(DISTINCT customer_id) AS occupation_count
FROM bank_transactions
GROUP BY occupation;

-- Query 57: Customers using only UPI
SELECT customer_id, customer_name
FROM bank_transactions
GROUP BY customer_id, customer_name
HAVING COUNT(DISTINCT payment_channel) = 1 AND MAX(payment_channel) = 'UPI';

-- Query 58: Customers using only ATM
SELECT customer_id, customer_name
FROM bank_transactions
GROUP BY customer_id, customer_name
HAVING COUNT(DISTINCT payment_channel) = 1 AND MAX(payment_channel) = 'ATM';

-- Query 59: Customers using Net Banking
SELECT DISTINCT customer_id, customer_name
FROM bank_transactions
WHERE payment_channel = 'Net Banking';

-- Query 60: Customers with highest balance
SELECT customer_id, customer_name, MAX(balance_after_transaction) AS highest_balance
FROM bank_transactions
GROUP BY customer_id, customer_name
ORDER BY highest_balance DESC
LIMIT 1;
