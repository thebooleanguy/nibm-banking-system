-- Create Transaction
CREATE OR REPLACE PROCEDURE create_transaction (
    p_transaction_id IN NUMBER,
    p_transaction_type IN VARCHAR2,
    p_amount IN NUMBER,
    p_transaction_date IN DATE,
    p_transaction_mode IN VARCHAR2,
    p_account_id IN NUMBER
) AS 
BEGIN
    INSERT INTO transactions (transaction_id, transaction_type, amount, transaction_date, transaction_mode, account_id)
    VALUES (p_transaction_id, p_transaction_type, p_amount, p_transaction_date, p_transaction_mode, p_account_id);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error creating transaction: ' || SQLERRM);
END create_transaction;


-- Read Transaction
CREATE OR REPLACE FUNCTION read_transaction (
    p_transaction_id IN NUMBER
) RETURN transactions%ROWTYPE AS
    v_transaction transactions%ROWTYPE;
BEGIN
    SELECT *
    INTO v_transaction
    FROM transactions
    WHERE transaction_id = p_transaction_id;

    RETURN v_transaction;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'Transaction not found.');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'Error reading transaction: ' || SQLERRM);
END read_transaction;


-- Update Transaction
CREATE OR REPLACE PROCEDURE update_transaction (
    p_transaction_id IN NUMBER,
    p_transaction_type IN VARCHAR2,
    p_amount IN NUMBER,
    p_transaction_date IN DATE,
    p_transaction_mode IN VARCHAR2,
    p_account_id IN NUMBER
) AS 
BEGIN
    UPDATE transactions
    SET transaction_type = p_transaction_type,
        amount = p_amount,
        transaction_date = p_transaction_date,
        transaction_mode = p_transaction_mode,
        account_id = p_account_id
    WHERE transaction_id = p_transaction_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Transaction not found for update.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error updating transaction: ' || SQLERRM);
END update_transaction;


-- Delete Transaction
CREATE OR REPLACE PROCEDURE delete_transaction (
    p_transaction_id IN NUMBER
) AS 
BEGIN
    DELETE FROM transactions
    WHERE transaction_id = p_transaction_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'Transaction not found for deletion.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error deleting transaction: ' || SQLERRM);
END delete_transaction;
