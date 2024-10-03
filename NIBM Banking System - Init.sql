--- SQL Table Creation Queries

-- 1. Customer
CREATE TABLE Customer (
    customerID NUMBER PRIMARY KEY,
    Name VARCHAR2(100) NOT NULL,
    Address VARCHAR2(255) NOT NULL,
    ContactNumber VARCHAR2(15) NOT NULL,
    Email VARCHAR2(100) NOT NULL,
    DOB DATE,
    CustomerStatus VARCHAR2(20) CHECK (CustomerStatus IN ('Active', 'Inactive')) NOT NULL,
    Gender VARCHAR2(10) CHECK (Gender IN ('Male', 'Female', 'Other')) NOT NULL,
    NationalID VARCHAR2(50) NOT NULL
);

-- Trigger to CHECK Customer DOB is in the past
CREATE OR REPLACE TRIGGER check_customer_dob
BEFORE INSERT OR UPDATE ON Customer
FOR EACH ROW
BEGIN
    IF :NEW.DOB >= SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20002, 'Date of Birth must be in the past.');
    END IF;
END;


-- 2. Branch
CREATE TABLE Branch (
    BranchID NUMBER PRIMARY KEY,
    BranchName VARCHAR2(100) NOT NULL,
    Location VARCHAR2(100) NOT NULL,
    ContactNumber VARCHAR2(15) NOT NULL,
    ManagerID NUMBER
);


-- 3. Employee
CREATE TABLE Employee (
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(100) NOT NULL,
    Position VARCHAR2(50) NOT NULL,
    BranchID_fk NUMBER NOT NULL,
    HireDate DATE NOT NULL,
    Salary NUMBER(10, 2) CHECK (Salary >= 0) NOT NULL,
    Department VARCHAR2(50) NOT NULL,
    FOREIGN KEY (BranchID_fk) REFERENCES Branch(BranchID)
);

-- Add Branch / Employee Foreign Key Constraint 
-- Need to do ALTER because of circular dependency
ALTER TABLE Branch
    ADD CONSTRAINT fk_ManagerID
    FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID);


-- 4. Account
CREATE TABLE Account (
    AccountID NUMBER PRIMARY KEY,
    AccountType VARCHAR2(50) NOT NULL,
    Balance NUMBER(15, 2) CHECK (Balance >= 0) NOT NULL, -- Ensure balance is non-negative
    OpenDate DATE NOT NULL,
    InterestRate NUMBER(5, 2) CHECK (InterestRate >= 0) NOT NULL,
    AccountStatus VARCHAR2(20) CHECK (AccountStatus IN ('Active', 'Closed', 'Frozen')) NOT NULL,
    customerID NUMBER NOT NULL,
    BranchID NUMBER NOT NULL,
    FOREIGN KEY (customerID) REFERENCES Customer(customerID),
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);


-- 5. LoanGuarantor
CREATE TABLE LoanGuarantor (
    GuarantorID NUMBER PRIMARY KEY,
    GuarantorStatus VARCHAR2(20) CHECK (GuarantorStatus IN ('Active', 'Inactive')) NOT NULL
);


-- 6. Loan
CREATE TABLE Loan (
    LoanID NUMBER PRIMARY KEY,
    LoanType VARCHAR2(50) NOT NULL,
    LoanAmount NUMBER(15, 2) CHECK (LoanAmount > 0) NOT NULL,
    LoanTerm NUMBER(5) CHECK (LoanTerm > 0) NOT NULL,
    InterestRate NUMBER(5, 2) CHECK (InterestRate >= 0) NOT NULL,
    StartDate DATE NOT NULL,
    LoanStatus VARCHAR2(20) CHECK (LoanStatus IN ('Active', 'Closed', 'Defaulted')) NOT NULL,
    RemainingBalance NUMBER(15, 2) CHECK (RemainingBalance >= 0) NOT NULL,
    EndDate DATE,
    AccountID NUMBER NOT NULL,
    GuarantorID NUMBER,
    FOREIGN KEY (AccountID) REFERENCES Account(AccountID),
    FOREIGN KEY (GuarantorID) REFERENCES LoanGuarantor(GuarantorID)
);


-- 7. Loan Payment
CREATE TABLE LoanPayment (
    TransactionID NUMBER PRIMARY KEY,
    TransactionType VARCHAR2(50) CHECK (TransactionType IN ('Credit', 'Debit')) NOT NULL,
    Amount NUMBER(15, 2) CHECK (Amount > 0) NOT NULL,
    TransactionDate DATE NOT NULL,
    TransactionMode VARCHAR2(50) CHECK (TransactionMode IN ('Online', 'Cash', 'Card')) NOT NULL,
    LoanID NUMBER NOT NULL,
    FOREIGN KEY (LoanID) REFERENCES Loan(LoanID)
);


-- 8. Card
CREATE TABLE Card (
    CardID NUMBER PRIMARY KEY,
    CardType VARCHAR2(50) CHECK (CardType IN ('Debit', 'Credit', 'Prepaid')) NOT NULL,
    ExpiryDate DATE, -- Card expiry must be in the future
    Status VARCHAR2(20) CHECK (Status IN ('Active', 'Blocked', 'Expired')) NOT NULL,
    AccountID NUMBER NOT NULL,
    FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
);

-- Trigger to CHECK Card Expiry Date is in the past
CREATE OR REPLACE TRIGGER check_card_expiry_date
BEFORE INSERT OR UPDATE ON Card
FOR EACH ROW
BEGIN
    IF :NEW.ExpiryDate <= SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20001, 'Expiry date must be in the future.');
    END IF;
END;


-- 9. Transaction
CREATE TABLE Transaction (
    TransactionID NUMBER PRIMARY KEY,
    TransactionType VARCHAR2(50) CHECK (TransactionType IN ('Credit', 'Debit')) NOT NULL,
    Amount NUMBER(15, 2) CHECK (Amount > 0) NOT NULL,
    TransactionDate DATE NOT NULL,
    TransactionMode VARCHAR2(50) CHECK (TransactionMode IN ('Online', 'Cash', 'Card')) NOT NULL,
    AccountID NUMBER NOT NULL,
    FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
);

