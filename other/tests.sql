-- Sample SQL File to Test CRUD Procedures

-- Section 1: Branch Management
BEGIN
    -- Create Branches
    create_branch(101, 'Main Branch', 'Downtown', '555-1111');
    create_branch(102, 'East Branch', 'Eastside', '555-2222');

    -- Update Branch
    update_branch(102, 'East Branch', 'New Eastside', '555-3333');

    COMMIT;
END;
/

-- Section 2: Customer Management
BEGIN
    -- Create Customers
    create_customer(3, 'John Doe', '123 Main St', '555-1234', 'john@example.com', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Active', 'Male', '123456789', 101);
    create_customer(4, 'Jane Smith', '456 Elm St', '555-5678', 'jane@example.com', TO_DATE('1985-05-12', 'YYYY-MM-DD'), 'Active', 'Female', '987654321', 102);

    -- Update Customer
    update_customer(3, 'John Doe', '789 Oak St', '555-9999', 'john.doe@newmail.com', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Active', 'Male', '123456789', 101);
    
    COMMIT;
END;
/

-- Section 3: Account Management
BEGIN
    -- Create Accounts
    create_account(1, 'Savings', 1000.50, TO_DATE('2022-01-15', 'YYYY-MM-DD'), 1.5, 'Active', 1, 101);
    create_account(2, 'Checking', 2500.00, TO_DATE('2023-06-05', 'YYYY-MM-DD'), 0.5, 'Active', 2, 102);

    -- Update Account
    update_account(1, 'Savings', 1500.75, TO_DATE('2022-01-15', 'YYYY-MM-DD'), 1.5, 'Active', 1, 101);

    COMMIT;
END;
/

-- Section 4: Transaction Management
BEGIN
    -- Create Transactions
    create_transaction(1, 'Credit', 500.00, TO_DATE('2024-09-25', 'YYYY-MM-DD'), 'Online', 1);
    create_transaction(2, 'Debit', 200.00, TO_DATE('2024-10-01', 'YYYY-MM-DD'), 'Cash', 2);

    -- Update Transaction
    update_transaction(2, 'Debit', 250.00, TO_DATE('2024-10-01', 'YYYY-MM-DD'), 'Cash', 2);

    COMMIT;
END;
/

-- Section 5: Loan Management
-- Loan Guarantors
-- Test: Create Guarantors
BEGIN
    -- Create Guarantors
    create_guarantor(1, 'Active');
    create_guarantor(2, 'Inactive');

    COMMIT;
END;
/

-- Loans
BEGIN
    -- Create Loans
    create_loan(3, 'Home Loan', 100000.00, 20, 5.0, TO_DATE('2020-01-01', 'YYYY-MM-DD'), 'Active', 95000.00, TO_DATE('2040-01-01', 'YYYY-MM-DD'), 4, 1);
    create_loan(4, 'Car Loan', 25000.00, 5, 3.5, TO_DATE('2021-01-01', 'YYYY-MM-DD'), 'Active', 20000.00, TO_DATE('2026-01-01', 'YYYY-MM-DD'), 2, 1);

    -- Update Loan
    update_loan(1, 'Home Loan', 95000.00, 20, 5.0, TO_DATE('2020-01-01', 'YYYY-MM-DD'), 'Active', 90000.00, TO_DATE('2040-01-01', 'YYYY-MM-DD'), 3, 1);

    COMMIT;
END;
/


-- Section 6: Loan Payment Tracking
BEGIN
    -- Create Loan Payments
    create_loan_payment(3, 1, 5000.00, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'Online'); -- payment_id = 1
    create_loan_payment(4, 2, 3000.00, TO_DATE('2024-08-10', 'YYYY-MM-DD'), 'Card');  -- payment_id = 2

    -- Update Loan Payment
    update_loan_payment(1, 5500.00, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'Online'); -- Updated payment amount for payment ID 1
    update_loan_payment(2, 3500.00, TO_DATE('2024-08-10', 'YYYY-MM-DD'), 'Card');   -- Updated payment amount for payment ID 2

    -- Delete Loan Payment (Soft Delete)
    delete_loan_payment(1); -- Soft delete payment ID 1

    COMMIT;
END;
/




-- Section 7: Employee Management
BEGIN
    -- Create Employees
    create_employee(1, 'Alice Johnson', 'Manager', 8000.00, 101, TO_DATE('2015-06-15', 'YYYY-MM-DD'), 'Management');
    create_employee(2, 'Bob Williams', 'Teller', 4000.00, 102, TO_DATE('2019-09-10', 'YYYY-MM-DD'), 'Operations');

    -- Update Employee
    update_employee(2, 'Bob Williams', 'Senior Teller', 4500.00, 102, TO_DATE('2019-09-10', 'YYYY-MM-DD'), 'Operations');

    COMMIT;
END;
/


-- Section 8: Card Management
BEGIN
    -- Create Cards
    create_card(1, 1, 'Debit', 'Active', TO_DATE('2025-12-31', 'YYYY-MM-DD'));
    create_card(2, 2, 'Credit', 'Active', TO_DATE('2026-10-31', 'YYYY-MM-DD'));

    -- Update Card
    update_card(1, 'Debit', 'Blocked', TO_DATE('2025-12-31', 'YYYY-MM-DD'));

    COMMIT;
END;
/

SET SERVEROUTPUT ON;
SELECT * FROM customers;
SELECT * FROM loans;
EXECUTE customer_loan_summary_reports;