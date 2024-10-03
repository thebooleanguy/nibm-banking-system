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
    INSERT INTO Account (AccountID, AccountType, Balance, OpenDate, InterestRate, AccountStatus, customerID, BranchID)
    VALUES (p_AccountID, p_AccountType, p_Balance, p_OpenDate, p_InterestRate, p_AccountStatus, p_customerID, p_BranchID);
    COMMIT;  -- Commit the transaction
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error creating account: ' || SQLERRM);
END create_account;

-- Read Account
CREATE OR REPLACE FUNCTION read_account (
    p_AccountID IN NUMBER
) RETURN Account%ROWTYPE AS
    v_account Account%ROWTYPE;
BEGIN
    SELECT *
    INTO v_account
    FROM Account
    WHERE AccountID = p_AccountID;

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
    UPDATE Account
    SET AccountType = p_AccountType,
        Balance = p_Balance,
        OpenDate = p_OpenDate,
        InterestRate = p_InterestRate,
        AccountStatus = p_AccountStatus,
        customerID = p_customerID,
        BranchID = p_BranchID
    WHERE AccountID = p_AccountID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Account not found for update.');
    END IF;

    COMMIT;  -- Commit the transaction
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error updating account: ' || SQLERRM);
END update_account;

-- Delete Account
CREATE OR REPLACE PROCEDURE delete_account (
    p_AccountID IN NUMBER
) AS 
BEGIN
    DELETE FROM Account
    WHERE AccountID = p_AccountID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'Account not found for deletion.');
    END IF;

    COMMIT;  -- Commit the transaction
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error deleting account: ' || SQLERRM);
END delete_account;
