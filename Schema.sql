CREATE TABLE bank_transactions
(
transaction_id INT PRIMARY KEY AUTO_INCREMENT,

transaction_date DATE,

customer_id INT,

customer_name VARCHAR(50),

gender VARCHAR(10),

age INT,

city VARCHAR(40),

state VARCHAR(40),

branch_name VARCHAR(50),

account_number VARCHAR(20),

account_type VARCHAR(20),

customer_segment VARCHAR(20),

transaction_type VARCHAR(20),

payment_channel VARCHAR(30),

transaction_amount DECIMAL(12,2),

balance_after_transaction DECIMAL(12,2),

loan_status VARCHAR(20),

credit_score INT,

occupation VARCHAR(40)
);











INSERT INTO bank_transactions




(transaction_date, customer_id, customer_name, gender, age, city, state, branch_name, account_number, account_type, customer_segment, transaction_type, payment_channel, transaction_amount, balance_after_transaction, loan_status, credit_score, occupation)







VALUES





('2026-09-01', 101, 'Ravi Kumar', 'Male', 35, 'Delhi', 'Delhi', 'Connaught Place', 'ACC1001', 'Savings', 'Premium', 'Deposit', 'UPI', 50000.00, 150000.00, 'Active', 720, 'Engineer'),

('2026-09-02', 102, 'Neha Sharma', 'Female', 29, 'Mumbai', 'Maharashtra', 'Andheri', 'ACC1002', 'Current', 'Business', 'Withdrawal', 'ATM', 20000.00, 80000.00, 'Active', 680, 'Entrepreneur'),

('2026-09-03', 103, 'Amit Patel', 'Male', 62, 'Ahmedabad', 'Gujarat', 'Navrangpura', 'ACC1003', 'Savings', 'Retail', 'Deposit', 'Cheque', 150000.00, 250000.00, 'Active', 650, 'Retired'),

('2026-09-04', 104, 'Priya Singh', 'Female', 24, 'Bengaluru', 'Karnataka', 'MG Road', 'ACC1004', 'Savings', 'Young', 'Withdrawal', 'Net Banking', 10000.00, 40000.00, 'Active', 710, 'Student'),

('2026-09-05', 105, 'Suresh Iyer', 'Male', 45, 'Chennai', 'Tamil Nadu', 'T Nagar', 'ACC1005', 'Current', 'Business', 'Deposit', 'Cash', 250000.00, 500000.00, 'Active', 600, 'Trader'),

('2026-09-06', 106, 'Anjali Mehta', 'Female', 55, 'Pune', 'Maharashtra', 'Shivaji Nagar', 'ACC1006', 'Savings', 'Premium', 'Withdrawal', 'ATM', 5000.00, 95000.00, 'Active', 750, 'Teacher'),

('2026-09-07', 107, 'Karan Verma', 'Male', 40, 'Jaipur', 'Rajasthan', 'MI Road', 'ACC1007', 'Savings', 'Retail', 'Deposit', 'Net Banking', 30000.00, 120000.00, 'Active', 690, 'Banker'),

('2026-09-08', 108, 'Meena Gupta', 'Female', 33, 'Lucknow', 'Uttar Pradesh', 'Hazratganj', 'ACC1008', 'Current', 'Business', 'Withdrawal', 'Cheque', 15000.00, 85000.00, 'Active', 710, 'Doctor'),

('2026-09-09', 109, 'Deepak Joshi', 'Male', 28, 'Indore', 'Madhya Pradesh', 'Rajwada', 'ACC1009', 'Savings', 'Young', 'Deposit', 'UPI', 12000.00, 60000.00, 'Active', 730, 'Software Engineer'),

('2026-09-10', 110, 'Shweta Rao', 'Female', 38, 'Hyderabad', 'Telangana', 'Banjara Hills', 'ACC1010', 'Savings', 'Premium', 'Withdrawal', 'ATM', 25000.00, 100000.00, 'Active', 700, 'Manager'),

('2026-09-11', 111, 'Arjun Desai', 'Male', 50, 'Surat', 'Gujarat', 'Ring Road', 'ACC1011', 'Current', 'Business', 'Deposit', 'Cash', 180000.00, 400000.00, 'Active', 640, 'Merchant'),

('2026-09-12', 112, 'Ritika Kapoor', 'Female', 27, 'Delhi', 'Delhi', 'Karol Bagh', 'ACC1012', 'Savings', 'Young', 'Withdrawal', 'UPI', 8000.00, 35000.00, 'Active', 720, 'Designer'),

('2026-09-13', 113, 'Mohit Jain', 'Male', 34, 'Mumbai', 'Maharashtra', 'Borivali', 'ACC1013', 'Savings', 'Retail', 'Deposit', 'Net Banking', 45000.00, 120000.00, 'Active', 710, 'Consultant'),

('2026-09-14', 114, 'Sneha Nair', 'Female', 42, 'Kochi', 'Kerala', 'Marine Drive', 'ACC1014', 'Savings', 'Premium', 'Withdrawal', 'ATM', 12000.00, 88000.00, 'Active', 690, 'Nurse'),

('2026-09-15', 115, 'Rahul Yadav', 'Male', 31, 'Patna', 'Bihar', 'Fraser Road', 'ACC1015', 'Current', 'Business', 'Deposit', 'Cheque', 95000.00, 210000.00, 'Active', 670, 'Contractor'),

('2026-09-16', 116, 'Pooja Malhotra', 'Female', 36, 'Delhi', 'Delhi', 'Dwarka', 'ACC1016', 'Savings', 'Premium', 'Withdrawal', 'Net Banking', 20000.00, 95000.00, 'Active', 740, 'HR Manager'),

('2026-09-17', 117, 'Vivek Reddy', 'Male', 48, 'Hyderabad', 'Telangana', 'Secunderabad', 'ACC1017', 'Savings', 'Retail', 'Deposit', 'Cash', 60000.00, 180000.00, 'Active', 710, 'Lawyer'),

('2026-09-18', 118, 'Alka Mishra', 'Female', 60, 'Lucknow', 'Uttar Pradesh', 'Alambagh', 'ACC1018', 'Savings', 'Senior', 'Withdrawal', 'ATM', 10000.00, 70000.00, 'Active', 650, 'Retired'),

('2026-09-19', 119, 'Nikhil Saxena', 'Male', 26, 'Indore', 'Madhya Pradesh', 'Vijay Nagar', 'ACC1019', 'Savings', 'Young', 'Deposit', 'UPI', 15000.00, 55000.00, 'Active', 730, 'Analyst'),

('2026-09-20', 120, 'Divya Bhatia', 'Female', 32, 'Chandigarh', 'Punjab', 'Sector 17', 'ACC1020', 'Savings', 'Premium', 'Withdrawal', 'Net Banking', 18000.00, 92000.00, 'Active', 720, 'Architect'),

('2026-09-21', 121, 'Sanjay Kulkarni', 'Male', 44, 'Nagpur', 'Maharashtra', 'Sitabuldi', 'ACC1021', 'Current', 'Business', 'Deposit', 'Cheque', 120000.00, 300000.00, 'Active', 670, 'Contractor'),

('2026-09-22', 122, 'Kavita Rani', 'Female', 39, 'Delhi', 'Delhi', 'Lajpat Nagar', 'ACC1022', 'Savings', 'Premium', 'Withdrawal', 'ATM', 15000.00, 85000.00, 'Active', 710, 'Teacher'),

('2026-09-23', 123, 'Manish Gupta', 'Male', 30, 'Mumbai', 'Maharashtra', 'Dadar', 'ACC1023', 'Savings', 'Retail', 'Deposit', 'UPI', 25000.00, 100000.00, 'Active', 720, 'Engineer'),

('2026-09-24', 124, 'Aarti Joshi', 'Female', 28, 'Bhopal', 'Madhya Pradesh', 'New Market', 'ACC1024', 'Savings', 'Young', 'Withdrawal', 'Net Banking', 12000.00, 60000.00, 'Active', 730, 'Student'),

('2026-09-25', 125, 'Rajesh Kumar', 'Male', 52, 'Kolkata', 'West Bengal', 'Park Street', 'ACC1025', 'Current', 'Business', 'Deposit', 'Cash', 200000.00, 450000.00, 'Active', 650, 'Trader'),

('2026-09-26', 126, 'Sunita Mishra', 'Female', 47, 'Delhi', 'Delhi', 'South Ex', 'ACC1026', 'Savings', 'Premium', 'Withdrawal', 'ATM', 18000.00, 95000.);

('2026-09-27', 127, 'Vikas Sharma', 'Male', 34, 'Delhi', 'Delhi', 'Connaught Place', 'ACC1027', 'Savings', 'Premium', 'Deposit', 'UPI', 40000.00, 120000.00, 'Active', 710, 'Analyst'),

('2026-09-28', 128, 'Sneha Gupta', 'Female', 29, 'Mumbai', 'Maharashtra', 'Andheri', 'ACC1028', 'Current', 'Business', 'Withdrawal', 'ATM', 15000.00, 75000.00, 'Active', 690, 'Consultant'),

('2026-09-29', 129, 'Rohan Mehta', 'Male', 41, 'Bengaluru', 'Karnataka', 'MG Road', 'ACC1029', 'Savings', 'Retail', 'Deposit', 'Cheque', 60000.00, 180000.00, 'Active', 720, 'Manager'),

('2026-09-30', 130, 'Anita Desai', 'Female', 52, 'Chennai', 'Tamil Nadu', 'T Nagar', 'ACC1030', 'Savings', 'Senior', 'Withdrawal', 'Net Banking', 12000.00, 65000.00, 'Active', 650, 'Teacher'),



