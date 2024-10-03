-- Employee Management: CRUD Operations

-- Create Employee
CREATE OR REPLACE PROCEDURE create_employee (
    p_Employee_ID IN NUMBER,
    p_Name IN VARCHAR2,
    p_Position IN VARCHAR2,
    p_Salary IN NUMBER,
    p_Branch_ID IN NUMBER,
    p_Hire_Date IN DATE,
    p_Department IN VARCHAR2
) AS 
BEGIN
    INSERT INTO employees (employee_id, employee_name, position, salary, branch_id, hire_date, department)
    VALUES (p_Employee_ID, p_Name, p_Position, p_Salary, p_Branch_ID, p_Hire_Date, p_Department);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error creating employee: ' || SQLERRM);
END create_employee;

-- Read Employee by ID or Branch ID
CREATE OR REPLACE FUNCTION read_employee (
    p_Employee_ID IN NUMBER,
    p_Branch_ID IN NUMBER
) RETURN SYS_REFCURSOR AS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
        SELECT *
        FROM employees
        WHERE employee_id = p_Employee_ID OR branch_id = p_Branch_ID;
    RETURN v_cursor;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20001, 'Error retrieving employee: ' || SQLERRM);
END read_employee;

-- Update Employee
CREATE OR REPLACE PROCEDURE update_employee (
    p_Employee_ID IN NUMBER,
    p_Name IN VARCHAR2,
    p_Position IN VARCHAR2,
    p_Salary IN NUMBER,
    p_Branch_ID IN NUMBER,
    p_Hire_Date IN DATE,
    p_Department IN VARCHAR2
) AS 
BEGIN
    UPDATE employees
    SET employee_name = p_Name,
        position = p_Position,
        salary = p_Salary,
        branch_id = p_Branch_ID,
        hire_date = p_Hire_Date,
        department = p_Department
    WHERE employee_id = p_Employee_ID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Employee not found for update.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error updating employee: ' || SQLERRM);
END update_employee;

-- Delete Employee (Soft Delete)
CREATE OR REPLACE PROCEDURE delete_employee (
    p_Employee_ID IN NUMBER
) AS 
BEGIN
    UPDATE employees
    SET is_deleted = 'Y'  -- Assuming 'Y' indicates soft delete
    WHERE employee_id = p_Employee_ID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Employee not found for deletion.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error deleting employee: ' || SQLERRM);
END delete_employee;
