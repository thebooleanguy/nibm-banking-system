-- Account Monthly Statement
SELECT t.transaction_id, t.transaction_type, t.amount, t.transaction_date, t.transaction_mode, a.account_id, a.balance
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
WHERE a.account_id = :P_ACCOUNT_ID
AND t.transaction_date BETWEEN :P_START_DATE AND :P_END_DATE;


-- Customer Loan Summary Report
SELECT c.customer_id, c.name, COUNT(l.loan_id) AS total_loans, SUM(l.loan_amount) AS total_loan_amount
FROM customers c
LEFT JOIN loans l ON c.customer_id = l.customer_id
GROUP BY c.customer_id, c.name
HAVING SUM(l.loan_amount) > 0
ORDER BY total_loan_amount DESC;


-- Active Accounts with High Balances
SELECT a.account_id, a.balance, a.account_type
FROM accounts a
WHERE a.balance > :p_threshold
AND a.account_status = 'Active'
ORDER BY a.balance DESC;


-- Loan Payment Reports by Month
SELECT TO_CHAR(p.payment_date, 'YYYY-MM') AS payment_month, SUM(p.payment_amount) AS total_payments
FROM loan_payments p
WHERE p.payment_date >= ADD_MONTHS(SYSDATE, -12)  -- Last 12 months
GROUP BY TO_CHAR(p.payment_date, 'YYYY-MM')
HAVING SUM(p.payment_amount) > 0
ORDER BY payment_month DESC;


-- Branch Performance Report
SELECT b.branch_id, b.location, COUNT(c.customer_id) AS total_customers, SUM(l.loan_amount) AS total_loans
FROM branches b
JOIN customers c ON b.branch_id = c.branch_id
LEFT JOIN loans l ON c.customer_id = l.customer_id
GROUP BY b.branch_id, b.location
HAVING SUM(l.loan_amount) > 0
ORDER BY total_loans DESC;


-- Employe Salary Report by Position
SELECT e.position, COUNT(e.employee_id) AS total_employees, AVG(e.salary) AS avg_salary,
       CASE 
           WHEN AVG(e.salary) < 5000 THEN 'Low Salary'
           WHEN AVG(e.salary) BETWEEN 5000 AND 10000 THEN 'Medium Salary'
           ELSE 'High Salary'
       END AS salary_category
FROM employees e
WHERE e.salary IS NOT NULL
GROUP BY e.position
ORDER BY avg_salary DESC;
