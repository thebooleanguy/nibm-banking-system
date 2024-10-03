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
    p_NationalID IN VARCHAR2
) AS 
BEGIN
    INSERT INTO Customer (customerID, Name, Address, ContactNumber, Email, DOB, CustomerStatus, Gender, NationalID)
    VALUES (p_customerID, p_Name, p_Address, p_ContactNumber, p_Email, p_DOB, p_CustomerStatus, p_Gender, p_NationalID);
    COMMIT;  -- Commit the transaction
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error creating customer: ' || SQLERRM);
END create_customer;


-- Read Customer
CREATE OR REPLACE FUNCTION read_customer (
    p_customerID IN NUMBER
) RETURN Customer%ROWTYPE AS
    v_customer Customer%ROWTYPE;
BEGIN
    SELECT *
    INTO v_customer
    FROM Customer
    WHERE customerID = p_customerID;
    
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
    p_NationalID IN VARCHAR2
) AS 
BEGIN
    UPDATE Customer
    SET Name = p_Name,
        Address = p_Address,
        ContactNumber = p_ContactNumber,
        Email = p_Email,
        DOB = p_DOB,
        CustomerStatus = p_CustomerStatus,
        Gender = p_Gender,
        NationalID = p_NationalID
    WHERE customerID = p_customerID;
    
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
    DELETE FROM Customer
    WHERE customerID = p_customerID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'Customer not found for deletion.');
    END IF;

    COMMIT;  -- Commit the transaction
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error deleting customer: ' || SQLERRM);
END delete_customer;