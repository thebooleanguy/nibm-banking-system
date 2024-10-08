-- Monthly Account Statement Report
CREATE OR REPLACE PROCEDURE monthly_account_statement (
    p_account_id IN NUMBER,
    p_start_date IN DATE,
    p_end_date IN DATE
) AS
BEGIN
    FOR rec IN (
        SELECT t.transaction_id, t.transaction_type, t.amount, t.transaction_date, t.transaction_mode, a.balance
        FROM transactions t
        JOIN accounts a ON t.account_id = a.account_id
        WHERE t.account_id = p_account_id
        AND t.transaction_date BETWEEN p_start_date AND p_end_date
        ORDER BY t.transaction_date
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Transaction ID: ' || rec.transaction_id || 
                             ', Type: ' || rec.transaction_type || 
                             ', Amount: ' || rec.amount || 
                             ', Date: ' || rec.transaction_date || 
                             ', Mode: ' || rec.transaction_mode || 
                             ', Balance: ' || rec.balance);
    END LOOP;
END monthly_account_statement;
/




-- Customer Loan Summary Report
CREATE OR REPLACE PROCEDURE customer_loan_summary_reports AS
    CURSOR customer_loan_cursor IS
        SELECT c.customer_id, c.name, COUNT(l.loan_id) AS total_loans, SUM(l.loan_amount) AS total_loan_amount
        FROM customers c
        LEFT JOIN loans l ON c.customer_id = l.customer_id
        GROUP BY c.customer_id, c.name
        HAVING SUM(l.loan_amount) > 0
        ORDER BY total_loan_amount DESC;
    
    rec customer_loan_cursor%ROWTYPE;
BEGIN
    FOR rec IN customer_loan_cursor LOOP
        DBMS_OUTPUT.PUT_LINE('Customer ID: ' || rec.customer_id || ', Name: ' || rec.name || ', Total Loans: ' || rec.total_loans || ', Total Loan Amount: ' || rec.total_loan_amount);
    END LOOP;
END customer_loan_summary_reports;


-- Active Accounts with High Balances
CREATE OR REPLACE PROCEDURE high_balance_accounts_reports (
    p_threshold IN NUMBER
) AS
BEGIN
    FOR rec IN (
        SELECT a.account_id, a.balance, a.account_type
        FROM accounts a
        WHERE a.balance > p_threshold
        AND a.account_status = 'Active'
        ORDER BY a.balance DESC
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Account ID: ' || rec.account_id || ', Account Type: ' || rec.account_type || ', Balance: ' || rec.balance);
    END LOOP;
END high_balance_accounts_reports;


-- Loan Payments Report by Month
CREATE OR REPLACE PROCEDURE loan_payments_reports_by_month AS
BEGIN
    FOR rec IN (
        SELECT TO_CHAR(p.payment_date, 'YYYY-MM') AS payment_month, SUM(p.payment_amount) AS total_payments
        FROM loan_payments p
        WHERE p.payment_date >= ADD_MONTHS(SYSDATE, -12)  -- Last 12 months
        GROUP BY TO_CHAR(p.payment_date, 'YYYY-MM')
        HAVING SUM(p.payment_amount) > 0
        ORDER BY payment_month DESC
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Month: ' || rec.payment_month || ', Total Payments: ' || rec.total_payments);
    END LOOP;
END loan_payments_reports_by_month;


-- Branch Performance Report
CREATE OR REPLACE PROCEDURE branch_performance_reports AS
BEGIN
    FOR rec IN (
        SELECT b.branch_id, b.location, COUNT(c.customer_id) AS total_customers, SUM(l.loan_amount) AS total_loans
        FROM branches b
        JOIN customers c ON b.branch_id = c.branch_id
        LEFT JOIN loans l ON c.customer_id = l.customer_id
        GROUP BY b.branch_id, b.location
        HAVING SUM(l.loan_amount) > 0
        ORDER BY total_loans DESC
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Branch ID: ' || rec.branch_id || ', Location: ' || rec.location || ', Total Customers: ' || rec.total_customers || ', Total Loan Amount: ' || rec.total_loans);
    END LOOP;
END branch_performance_reports;


-- Employee Salary Report by Position
CREATE OR REPLACE PROCEDURE employee_salary_reports AS
BEGIN
    FOR rec IN (
        SELECT e.position, COUNT(e.employee_id) AS total_employees, AVG(e.salary) AS avg_salary,
               CASE 
                   WHEN AVG(e.salary) < 5000 THEN 'Low Salary'
                   WHEN AVG(e.salary) BETWEEN 5000 AND 10000 THEN 'Medium Salary'
                   ELSE 'High Salary'
               END AS salary_category
        FROM employees e
        WHERE e.salary IS NOT NULL
        GROUP BY e.position
        ORDER BY avg_salary DESC
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Position: ' || rec.position || ', Total Employees: ' || rec.total_employees || ', Average Salary: ' || rec.avg_salary || ', Salary Category: ' || rec.salary_category);
    END LOOP;
END employee_salary_reports;
