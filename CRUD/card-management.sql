-- Card Management: CRUD Operations

-- Create Card
CREATE OR REPLACE PROCEDURE create_card (
    p_Card_ID IN NUMBER,
    p_Account_ID IN NUMBER,
    p_Card_Type IN VARCHAR2,
    p_Status IN VARCHAR2,
    p_Expiry_Date IN DATE
) AS 
BEGIN
    INSERT INTO cards (card_id, account_id, card_type, status, expiry_date)
    VALUES (p_Card_ID, p_Account_ID, p_Card_Type, p_Status, p_Expiry_Date);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error issuing card: ' || SQLERRM);
END create_card;

-- Read Card by Card ID or Account ID
CREATE OR REPLACE FUNCTION read_card (
    p_Card_ID IN NUMBER,
    p_Account_ID IN NUMBER
) RETURN SYS_REFCURSOR AS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
        SELECT *
        FROM cards
        WHERE card_id = p_Card_ID OR account_id = p_Account_ID;
    RETURN v_cursor;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20001, 'Error retrieving card: ' || SQLERRM);
END read_card;

-- Update Card
CREATE OR REPLACE PROCEDURE update_card (
    p_Card_ID IN NUMBER,
    p_Card_Type IN VARCHAR2,
    p_Status IN VARCHAR2,
    p_Expiry_Date IN DATE
) AS 
BEGIN
    UPDATE cards
    SET card_type = p_Card_Type,
        status = p_Status,
        expiry_date = p_Expiry_Date
    WHERE card_id = p_Card_ID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Card not found for update.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error updating card: ' || SQLERRM);
END update_card;

-- Delete Card (Soft Delete)
CREATE OR REPLACE PROCEDURE delete_card (
    p_Card_ID IN NUMBER
) AS 
BEGIN
    UPDATE cards
    SET is_deleted = 'Y'
    WHERE card_id = p_Card_ID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Card not found for deletion.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error blocking card: ' || SQLERRM);
END delete_card;
