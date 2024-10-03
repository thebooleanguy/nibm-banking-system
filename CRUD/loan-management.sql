--- Create

-- Create Loan
CREATE OR REPLACE PROCEDURE create_loan (
    p_loan_id IN NUMBER,
    p_loan_type IN VARCHAR2,
    p_loan_amount IN NUMBER,
    p_loan_term IN NUMBER,
    p_interest_rate IN NUMBER,
    p_start_date IN DATE,
    p_loan_status IN VARCHAR2,
    p_remaining_balance IN NUMBER,
    p_end_date IN DATE,
    p_customer_id IN NUMBER,
    p_guarantor_id IN NUMBER
) AS 
BEGIN
    INSERT INTO loans (loan_id, loan_type, loan_amount, loan_term, interest_rate, start_date, loan_status, remaining_balance, end_date, customer_id, guarantor_id)
    VALUES (p_loan_id, p_loan_type, p_loan_amount, p_loan_term, p_interest_rate, p_start_date, p_loan_status, p_remaining_balance, p_end_date, p_customer_id, p_guarantor_id);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error creating loan: ' || SQLERRM);
END create_loan;

-- Create Guarantor
CREATE OR REPLACE PROCEDURE create_guarantor (
    p_guarantor_id IN NUMBER,
    p_guarantor_status IN VARCHAR2
) AS 
BEGIN
    INSERT INTO loan_guarantors (guarantor_id, guarantor_status)
    VALUES (p_guarantor_id, p_guarantor_status);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error creating guarantor: ' || SQLERRM);
END create_guarantor;



--- Read

-- Read Loan
CREATE OR REPLACE FUNCTION read_loan (
    p_loan_id IN NUMBER
) RETURN loans%ROWTYPE AS
    v_loan loans%ROWTYPE;
BEGIN
    SELECT *
    INTO v_loan
    FROM loans
    WHERE loan_id = p_loan_id;

    RETURN v_loan;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'Loan not found.');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'Error reading loan: ' || SQLERRM);
END read_loan;

-- Read Guarantor
CREATE OR REPLACE FUNCTION read_guarantor (
    p_guarantor_id IN NUMBER
) RETURN loan_guarantors%ROWTYPE AS
    v_guarantor loan_guarantors%ROWTYPE;
BEGIN
    SELECT *
    INTO v_guarantor
    FROM loan_guarantors
    WHERE guarantor_id = p_guarantor_id;

    RETURN v_guarantor;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'Guarantor not found.');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'Error retrieving guarantor: ' || SQLERRM);
END read_guarantor;


--- Update

-- Update Loan
CREATE OR REPLACE PROCEDURE update_loan (
    p_loan_id IN NUMBER,
    p_loan_type IN VARCHAR2,
    p_loan_amount IN NUMBER,
    p_loan_term IN NUMBER,
    p_interest_rate IN NUMBER,
    p_start_date IN DATE,
    p_loan_status IN VARCHAR2,
    p_remaining_balance IN NUMBER,
    p_end_date IN DATE,
    p_customer_id IN NUMBER,
    p_guarantor_id IN NUMBER
) AS 
BEGIN
    UPDATE loans
    SET loan_type = p_loan_type,
        loan_amount = p_loan_amount,
        loan_term = p_loan_term,
        interest_rate = p_interest_rate,
        start_date = p_start_date,
        loan_status = p_loan_status,
        remaining_balance = p_remaining_balance,
        end_date = p_end_date,
        customer_id = p_customer_id,
        guarantor_id = p_guarantor_id
    WHERE loan_id = p_loan_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Loan not found for update.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error updating loan: ' || SQLERRM);
END update_loan;

-- Update Guarantor
CREATE OR REPLACE PROCEDURE update_guarantor (
    p_guarantor_id IN NUMBER,
    p_guarantor_status IN VARCHAR2
) AS 
BEGIN
    UPDATE loan_guarantors
    SET guarantor_status = p_guarantor_status
    WHERE guarantor_id = p_guarantor_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Guarantor not found for update.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error updating guarantor: ' || SQLERRM);
END update_guarantor;



--- Delete

-- Delete Loan
CREATE OR REPLACE PROCEDURE delete_loan (
    p_loan_id IN NUMBER
) AS 
BEGIN
    DELETE FROM loans
    WHERE loan_id = p_loan_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'Loan not found for deletion.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error deleting loan: ' || SQLERRM);
END delete_loan;

-- Delete Guarantor
CREATE OR REPLACE PROCEDURE delete_guarantor (
    p_guarantor_id IN NUMBER
) AS 
BEGIN
    DELETE FROM loan_guarantors
    WHERE guarantor_id = p_guarantor_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'Guarantor not found for deletion.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error deleting guarantor: ' || SQLERRM);
END delete_guarantor;

