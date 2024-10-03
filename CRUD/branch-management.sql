-- Branch Management: CRUD Operations

-- Create Branch
CREATE OR REPLACE PROCEDURE create_branch (
    p_Branch_ID IN NUMBER,
    p_Name IN VARCHAR2,
    p_Location IN VARCHAR2,
    p_Contact_Number IN VARCHAR2
) AS 
BEGIN
    INSERT INTO branches (branch_id, branch_name, location, contact_number)
    VALUES (p_Branch_ID, p_Name, p_Location, p_Contact_Number);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error creating branch: ' || SQLERRM);
END create_branch;

-- Read Branch
CREATE OR REPLACE FUNCTION read_branch (
    p_Branch_ID IN NUMBER
) RETURN branches%ROWTYPE AS
    v_branch branches%ROWTYPE;
BEGIN
    SELECT *
    INTO v_branch
    FROM branches
    WHERE branch_id = p_Branch_ID;

    RETURN v_branch;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'Branch not found.');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'Error retrieving branch: ' || SQLERRM);
END read_branch;

-- Update Branch
CREATE OR REPLACE PROCEDURE update_branch (
    p_Branch_ID IN NUMBER,
    p_Name IN VARCHAR2,
    p_Location IN VARCHAR2,
    p_Contact_Number IN VARCHAR2
) AS 
BEGIN
    UPDATE branches
    SET branch_name = p_Name, 
    location = p_Location,
        contact_number = p_Contact_Number
    WHERE branch_id = p_Branch_ID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Branch not found for update.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error updating branch: ' || SQLERRM);
END update_branch;

-- Delete Branch (Soft Delete)
CREATE OR REPLACE PROCEDURE delete_branch (
    p_Branch_ID IN NUMBER
) AS 
BEGIN
    UPDATE branches
    SET is_deleted = 'Y'
    WHERE branch_id = p_Branch_ID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'Branch not found for deletion.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error deleting branch: ' || SQLERRM);
END delete_branch;
