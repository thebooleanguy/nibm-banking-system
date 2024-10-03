--- SQL Table Creation Queries

-- 1. branches
CREATE TABLE branches (
    branch_id NUMBER PRIMARY KEY,
    branch_name VARCHAR2(100) NOT NULL,
    location VARCHAR2(100) NOT NULL,
    contact_number VARCHAR2(15) NOT NULL,
    manager_id NUMBER,
    is_deleted CHAR(1) DEFAULT 'N' CHECK (is_deleted IN ('Y', 'N')) -- Soft delete indicator
);


-- 2. customers
CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    address VARCHAR2(255) NOT NULL,
    contact_number VARCHAR2(15) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    dob DATE,
    customer_status VARCHAR2(20) CHECK (customer_status IN ('Active', 'Inactive')) NOT NULL,
    gender VARCHAR2(10) CHECK (gender IN ('Male', 'Female', 'Other')) NOT NULL,
    national_id VARCHAR2(50) NOT NULL,
    branch_id NUMBER,
    CONSTRAINT fk_branch FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

-- Trigger to CHECK customer DOB is in the past
CREATE OR REPLACE TRIGGER check_customer_dob
BEFORE INSERT OR UPDATE ON customers
FOR EACH ROW
BEGIN
    IF :NEW.dob >= SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20002, 'Date of Birth must be in the past.');
    END IF;
END;


-- 3. employees
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(100) NOT NULL,
    position VARCHAR2(50) NOT NULL,
    branch_id NUMBER NOT NULL,
    hire_date DATE NOT NULL,
    salary NUMBER(10, 2) CHECK (salary >= 0) NOT NULL,
    department VARCHAR2(50) NOT NULL,
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

-- Add branch / employee foreign key constraint 
-- Need to do ALTER because of circular dependency
ALTER TABLE branches
    ADD CONSTRAINT fk_manager_id
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id);


-- 4. accounts
CREATE TABLE accounts (
    account_id NUMBER PRIMARY KEY,
    account_type VARCHAR2(50) NOT NULL,
    balance NUMBER(15, 2) CHECK (balance >= 0) NOT NULL, -- Ensure balance is non-negative
    open_date DATE NOT NULL,
    interest_rate NUMBER(5, 2) CHECK (interest_rate >= 0) NOT NULL,
    account_status VARCHAR2(20) CHECK (account_status IN ('Active', 'Closed', 'Frozen')) NOT NULL,
    customer_id NUMBER NOT NULL,
    branch_id NUMBER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id),
    is_deleted CHAR(1) DEFAULT 'N' CHECK (is_deleted IN ('Y', 'N'))
);


-- 5. loan_guarantors
CREATE TABLE loan_guarantors (
    guarantor_id NUMBER PRIMARY KEY,
    guarantor_status VARCHAR2(20) CHECK (guarantor_status IN ('Active', 'Inactive')) NOT NULL
);


-- 6. loans
CREATE TABLE loans (
    loan_id NUMBER PRIMARY KEY,
    loan_type VARCHAR2(50) NOT NULL,
    loan_amount NUMBER(15, 2) CHECK (loan_amount > 0) NOT NULL,
    loan_term NUMBER(5) CHECK (loan_term > 0) NOT NULL,
    interest_rate NUMBER(5, 2) CHECK (interest_rate >= 0) NOT NULL,
    start_date DATE NOT NULL,
    loan_status VARCHAR2(20) CHECK (loan_status IN ('Active', 'Closed', 'Defaulted')) NOT NULL,
    remaining_balance NUMBER(15, 2) CHECK (remaining_balance >= 0) NOT NULL,
    end_date DATE,
    customer_id NUMBER NOT NULL,
    guarantor_id NUMBER,
    is_deleted CHAR(1) DEFAULT 'N' CHECK (is_deleted IN ('Y', 'N')), -- Soft delete indicator
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id), 
    FOREIGN KEY (guarantor_id) REFERENCES loan_guarantors(guarantor_id)
);


-- 7. loan_payments
CREATE TABLE loan_payments (
    payment_id NUMBER PRIMARY KEY,  -- Unique identifier for the loan payment
    payment_type VARCHAR2(50) CHECK (payment_type IN ('Credit', 'Debit')) NOT NULL, -- Type of payment (credit or debit)
    payment_amount NUMBER(15, 2) CHECK (payment_amount > 0) NOT NULL, -- Payment amount, must be positive
    payment_date DATE NOT NULL, -- Date the payment was made
    payment_mode VARCHAR2(50) CHECK (payment_mode IN ('Online', 'Cash', 'Card')) NOT NULL, -- Mode of payment (e.g., Online, Cash, Card)
    loan_id NUMBER NOT NULL, -- Foreign key reference to the loan table
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id), -- Ensures loan_id exists in loan table
    is_deleted CHAR(1) DEFAULT 'N' CHECK (is_deleted IN ('Y', 'N'))
);


-- 8. cards
CREATE TABLE cards (
    card_id NUMBER PRIMARY KEY,
    card_type VARCHAR2(50) CHECK (card_type IN ('Debit', 'Credit', 'Prepaid')) NOT NULL,
    expiry_date DATE, -- Card expiry must be in the future
    status VARCHAR2(20) CHECK (status IN ('Active', 'Blocked', 'Expired')) NOT NULL,
    account_id NUMBER NOT NULL,
    is_deleted CHAR(1) DEFAULT 'N' CHECK (is_deleted IN ('Y', 'N')), -- Soft delete indicator
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

-- Trigger to CHECK card expiry date is in the past
CREATE OR REPLACE TRIGGER check_card_expiry_date
BEFORE INSERT OR UPDATE ON cards
FOR EACH ROW
BEGIN
    IF :NEW.expiry_date <= SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20001, 'Expiry date must be in the future.');
    END IF;
END;


-- 9. transactions
CREATE TABLE transactions (
    transaction_id NUMBER PRIMARY KEY,
    transaction_type VARCHAR2(50) CHECK (transaction_type IN ('Credit', 'Debit')) NOT NULL,
    amount NUMBER(15, 2) CHECK (amount > 0) NOT NULL,
    transaction_date DATE NOT NULL,
    transaction_mode VARCHAR2(50) CHECK (transaction_mode IN ('Online', 'Cash', 'Card')) NOT NULL,
    account_id NUMBER NOT NULL,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
