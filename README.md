# 🏦 Bank Transaction Analytics (SQL Project)

## 📊 Project Overview
Global Trust Bank wants to analyze customer transactions to improve business decisions and detect risks.  
This project uses **100+ SQL queries** to answer business questions and generate KPIs such as deposits, withdrawals, branch performance, customer analytics, fraud detection, and dashboard metrics.  

It covers **beginner to advanced SQL concepts** applied to real-world banking analytics.

---

## 🗄️ Database Structure
**Database:** BankDB  
**Table:** bank_transactions  

**Columns:**
- transaction_id, transaction_date, customer_id, customer_name, gender, age  
- city, state, branch_name  
- account_type, customer_segment, occupation  
- transaction_type, transaction_amount, balance_after_transaction  
- payment_channel (UPI, ATM, Cheque, Net Banking, Cash)  
- credit_score, loan_status  

---

## 📂 Repository Contents
- `schema.sql` → Database & table creation + sample data  
- `module1_basic_reporting.sql` → Queries 1–20 (basic reporting)  
- `module2_business_kpis.sql` → Queries 21–40 (business KPIs)  
- `module3_customer_analytics.sql` → Queries 41–60 (customer analytics)  
- `module4_branch_performance.sql` → Queries 61–75 (branch performance)  
- `module5_risk_analytics.sql` → Queries 76–90 (fraud & risk analytics)  
- `module6_dashboard_kpis.sql` → Queries 91–100 (dashboard KPIs)  
- `report.pdf` → Insights and KPI results  

---

## 📈 Business Questions Answered
- Which branch generates the highest deposits?  
- Which customers are high-value (business above ₹5,00,000)?  
- Which customers are high-risk (low credit score + frequent withdrawals)?  
- Which city/state contributes most to business?  
- Which payment channel is most used (UPI, ATM, Net Banking)?  
- What are the monthly and quarterly transaction trends?  
- Which customer segments (Premium, Business, Salary) dominate?  
- Which branches show growth or decline in performance?  

---

## 🛠️ SQL Topics Covered
- Database creation & table design  
- SELECT, WHERE, ORDER BY, DISTINCT, LIMIT, LIKE, BETWEEN, IN  
- Aggregate functions (SUM, AVG, MAX, MIN, COUNT)  
- GROUP BY, HAVING  
- Date functions (MONTH(), QUARTER(), YEAR())  
- Business KPI reporting  
- Customer & branch analytics  
- Fraud detection queries  

---

## 📊 Business KPIs
- 💰 Total Business  
- 📥 Total Deposits  
- 📤 Total Withdrawals  
- 📈 Average Transaction Value  
- 🏆 Highest Transaction  
- 📉 Lowest Transaction  
- 🏙️ City-wise Business  
- 🏦 Branch-wise Performance  
- 👥 Customer Segment Analysis  
- 🔍 Fraud & Risk Flags  
- 📅 Monthly / Quarterly / Yearly Trends  

---

## 🚀 How to Use
1. Import `schema.sql` into MySQL to create the table and load sample data.  
2. Run queries from each module file (`module1_basic_reporting.sql`, etc.).  
3. Review insights in `report.pdf`.  
4. Use results to build dashboards in **Excel, Power BI, or Tableau**.  

---

## 📌 Skills Demonstrated
- SQL query writing and optimization  
- Business data analysis  
- KPI reporting  
- Fraud detection & risk analytics  
- Database design and management  
- Real-world application of SQL in banking analytics  


---


## 👨‍💻 Author
**Vikas**  

Passionate about SQL, Excel, Python, and analytics projects.  
Focused on building neat, structured, and professional portfolio projects.
