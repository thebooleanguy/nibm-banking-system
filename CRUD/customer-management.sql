-- Create Customer
CREATE OR REPLACE PROCEDURE create_customer (
    p_customerID IN NUMBER,
    p_Name IN VARCHAR2,
    p_Address IN VARCHAR2,
    p_ContactNumber IN VARCHAR2,
    p_Email IN VARCHAR2,
    p_DOB IN DATE,
    p_CustomerStatus IN VARCHAR2,
    p_Gender IN VARCHAR2,
    p_NationalID IN VARCHAR2,
    p_BranchID IN NUMBER  -- New parameter for branch ID
) AS 
BEGIN
    INSERT INTO customers (customer_id, name, address, contact_number, email, dob, customer_status, gender, national_id, branch_id)
    VALUES (p_customerID, p_Name, p_Address, p_ContactNumber, p_Email, p_DOB, p_CustomerStatus, p_Gender, p_NationalID, p_BranchID);
    COMMIT;  -- Commit the transaction
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error creating customer: ' || SQLERRM);
END create_customer;

-- Read Customer
CREATE OR REPLACE FUNCTION read_customer (
    p_customerID IN NUMBER
) RETURN customers%ROWTYPE AS
    v_customer customers%ROWTYPE;
BEGIN
    SELECT *
    INTO v_customer
    FROM customers
    WHERE customer_id = p_customerID;
    
    RETURN v_customer;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'Customer not found.');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'Error reading customer: ' || SQLERRM);
END read_customer;

-- Update Customer
CREATE OR REPLACE PROCEDURE update_customer (
    p_customerID IN NUMBER,
    p_Name IN VARCHAR2,
    p_Address IN VARCHAR2,
    p_ContactNumber IN VARCHAR2,
    p_Email IN VARCHAR2,
    p_DOB IN DATE,
    p_CustomerStatus IN VARCHAR2,
    p_Gender IN VARCHAR2,
    p_NationalID IN VARCHAR2,
    p_BranchID IN NUMBER  -- New parameter for branch ID
) AS 
BEGIN
    UPDATE customers
    SET name = p_Name,
        address = p_Address,
        contact_number = p_ContactNumber,
        email = p_Email,
        dob = p_DOB,
        customer_status = p_CustomerStatus,
        gender = p_Gender,
        national_id = p_NationalID,
        branch_id = p_BranchID  -- Update branch ID
    WHERE customer_id = p_customerID;
    
    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Customer not found for update.');
    END IF;

    COMMIT;  -- Commit the transaction
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error updating customer: ' || SQLERRM);
END update_customer;

-- Delete Customer
CREATE OR REPLACE PROCEDURE delete_customer (
    p_customerID IN NUMBER
) AS 
BEGIN
    DELETE FROM customers
    WHERE customer_id = p_customerID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'Customer not found for deletion.');
    END IF;

    COMMIT;  -- Commit the transaction
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error deleting customer: ' || SQLERRM);
END delete_customer;
