-- Create Account
CREATE OR REPLACE PROCEDURE create_account (
    p_AccountID IN NUMBER,
    p_AccountType IN VARCHAR2,
    p_Balance IN NUMBER,
    p_OpenDate IN DATE,
    p_InterestRate IN NUMBER,
    p_AccountStatus IN VARCHAR2,
    p_customerID IN NUMBER,
    p_BranchID IN NUMBER
) AS 
BEGIN
    INSERT INTO accounts (account_id, account_type, balance, open_date, interest_rate, account_status, customer_id, branch_id)
    VALUES (p_AccountID, p_AccountType, p_Balance, p_OpenDate, p_InterestRate, p_AccountStatus, p_customerID, p_BranchID);
    COMMIT;  -- Commit the transaction
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error creating account: ' || SQLERRM);
END create_account;


-- Read Account
CREATE OR REPLACE FUNCTION read_account (
    p_AccountID IN NUMBER
) RETURN accounts%ROWTYPE AS
    v_account accounts%ROWTYPE;
BEGIN
    SELECT *
    INTO v_account
    FROM accounts
    WHERE account_id = p_AccountID;

    RETURN v_account;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'Account not found.');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'Error reading account: ' || SQLERRM);
END read_account;


-- Update Account
CREATE OR REPLACE PROCEDURE update_account (
    p_AccountID IN NUMBER,
    p_AccountType IN VARCHAR2,
    p_Balance IN NUMBER,
    p_OpenDate IN DATE,
    p_InterestRate IN NUMBER,
    p_AccountStatus IN VARCHAR2,
    p_customerID IN NUMBER,
    p_BranchID IN NUMBER
) AS 
BEGIN
    UPDATE accounts
    SET account_type = p_AccountType,
        balance = p_Balance,
        open_date = p_OpenDate,
        interest_rate = p_InterestRate,
        account_status = p_AccountStatus,
        customer_id = p_customerID,
        branch_id = p_BranchID
    WHERE account_id = p_AccountID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Account not found for update.');
    END IF;

    COMMIT;  -- Commit the transaction
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error updating account: ' || SQLERRM);
END update_account;


-- Soft Delete Account
CREATE OR REPLACE PROCEDURE delete_account (
    p_AccountID IN NUMBER
) AS 
BEGIN
    UPDATE accounts
    SET account_status = 'Closed', is_deleted = 'Y'
    WHERE account_id = p_AccountID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'Account not found for closure.');
    END IF;

    COMMIT;  -- Commit the transaction
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error closing account: ' || SQLERRM);
END delete_account;
