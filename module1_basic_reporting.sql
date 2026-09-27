- Query 1: Display all customers
SELECT DISTINCT customer_name FROM bank_transactions;


-- Query 2: Display all transactions
SELECT * FROM bank_transactions;


-- Query 3: Show deposits only
SELECT * FROM bank_transactions WHERE transaction_type = 'Deposit';


-- Query 4: Show withdrawals only
SELECT * FROM bank_transactions WHERE transaction_type = 'Withdrawal';


-- Query 5: Find transactions above ₹50,000
SELECT * FROM bank_transactions WHERE transaction_amount > 50000;


-- Query 6: List customers from Delhi
SELECT DISTINCT customer_name FROM bank_transactions WHERE city = 'Delhi';


-- Query 7: Display Savings accounts
SELECT * FROM bank_transactions WHERE account_type = 'Savings';


-- Query 8: Display Current accounts
SELECT * FROM bank_transactions WHERE account_type = 'Current';


-- Query 9: Find female customers
SELECT DISTINCT customer_name FROM bank_transactions WHERE gender = 'Female';


-- Query 10: Find customers older than 60
SELECT DISTINCT customer_name FROM bank_transactions WHERE age > 60;


-- Query 11: Show all UPI transactions
SELECT * FROM bank_transactions WHERE payment_channel = 'UPI';


-- Query 12: Show ATM transactions
SELECT * FROM bank_transactions WHERE payment_channel = 'ATM';


-- Query 13: Show Cheque transactions
SELECT * FROM bank_transactions WHERE payment_channel = 'Cheque';


-- Query 14: Show Net Banking transactions
SELECT * FROM bank_transactions WHERE payment_channel = 'Net Banking';


-- Query 15: Display transactions in January
SELECT * FROM bank_transactions WHERE MONTH(transaction_date) = 1;


-- Query 16: Sort by transaction amount
SELECT * FROM bank_transactions ORDER BY transaction_amount DESC;


-- Query 17: Display unique cities
SELECT DISTINCT city FROM bank_transactions;


-- Query 18: Display unique branches
SELECT DISTINCT branch_name FROM bank_transactions;


-- Query 19: Count total customers
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM bank_transactions;


-- Query 20: Count total transactions
SELECT COUNT(*) AS total_transactions FROM bank_transactions;
