-- Create Loan Payment
CREATE OR REPLACE PROCEDURE create_loan_payment (
    p_payment_id IN NUMBER,
    p_loan_id IN NUMBER,
    p_payment_amount IN NUMBER,
    p_payment_date IN DATE,
    p_payment_mode IN VARCHAR2
) AS 
BEGIN
    INSERT INTO loan_payments (payment_id, loan_id, payment_amount, payment_date, payment_mode)
    VALUES (p_payment_id, p_loan_id, p_payment_amount, p_payment_date, p_payment_mode);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error creating loan payment: ' || SQLERRM);
END create_loan_payment;


-- Read Loan Payment History by Loan ID
CREATE OR REPLACE FUNCTION read_loan_payment_history (
    p_loan_id IN NUMBER
) RETURN SYS_REFCURSOR AS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
        SELECT *
        FROM loan_payments lp
        JOIN loans l ON lp.loan_id = l.loan_id
        WHERE lp.loan_id = p_loan_id;
    RETURN v_cursor;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20001, 'Error retrieving loan payment history: ' || SQLERRM);
END read_loan_payment_history;


-- Update Loan Payment
CREATE OR REPLACE PROCEDURE update_loan_payment (
    p_payment_id IN NUMBER,
    p_payment_amount IN NUMBER,
    p_payment_date IN DATE,
    p_payment_mode IN VARCHAR2
) AS 
BEGIN
    UPDATE loan_payments
    SET payment_amount = p_payment_amount,
        payment_date = p_payment_date,
        payment_mode = p_payment_mode
    WHERE payment_id = p_payment_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Loan payment not found for update.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error updating loan payment: ' || SQLERRM);
END update_loan_payment;


-- Delete Loan Payment (Soft Delete)
CREATE OR REPLACE PROCEDURE delete_loan_payment (
    p_payment_id IN NUMBER
) AS 
BEGIN
    UPDATE loan_payments
    SET is_deleted = 'Y'
    WHERE payment_id = p_payment_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Loan payment not found for deletion.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error deleting loan payment: ' || SQLERRM);
END delete_loan_payment;
