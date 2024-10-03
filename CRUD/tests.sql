--- Test CRUD Procedures


-- Create Customer
BEGIN
    create_customer(1, 'John Doe', '123 Main St', '555-1234', 'john@example.com', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Active', 'Male', '123456789');
    DBMS_OUTPUT.PUT_LINE('Customer created successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;


SELECT * FROM Customer;