--------------------------------------------------------
--  File created - Friday-October-04-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_GENERIC
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MVIEW$_ADVSEQ_GENERIC"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 50 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MVIEW$_ADVSEQ_ID"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table ACCOUNTS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ACCOUNTS" 
   (	"ACCOUNT_ID" NUMBER, 
	"ACCOUNT_TYPE" VARCHAR2(50 BYTE), 
	"BALANCE" NUMBER(15,2), 
	"OPEN_DATE" DATE, 
	"INTEREST_RATE" NUMBER(5,2), 
	"ACCOUNT_STATUS" VARCHAR2(20 BYTE), 
	"CUSTOMER_ID" NUMBER, 
	"BRANCH_ID" NUMBER, 
	"IS_DELETED" CHAR(1 BYTE) DEFAULT 'N'
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table AQ$_SCHEDULES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."AQ$_SCHEDULES" SHARING=METADATA 
   (	"OID" RAW(16), 
	"DESTINATION" VARCHAR2(390 BYTE), 
	"START_TIME" DATE, 
	"DURATION" VARCHAR2(8 BYTE), 
	"NEXT_TIME" VARCHAR2(128 BYTE), 
	"LATENCY" VARCHAR2(8 BYTE), 
	"LAST_TIME" DATE, 
	"JOBNO" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BRANCHES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."BRANCHES" 
   (	"BRANCH_ID" NUMBER, 
	"BRANCH_NAME" VARCHAR2(100 BYTE), 
	"LOCATION" VARCHAR2(100 BYTE), 
	"CONTACT_NUMBER" VARCHAR2(15 BYTE), 
	"MANAGER_ID" NUMBER, 
	"IS_DELETED" CHAR(1 BYTE) DEFAULT 'N'
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CARDS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CARDS" 
   (	"CARD_ID" NUMBER, 
	"CARD_TYPE" VARCHAR2(50 BYTE), 
	"EXPIRY_DATE" DATE, 
	"STATUS" VARCHAR2(20 BYTE), 
	"ACCOUNT_ID" NUMBER, 
	"IS_DELETED" CHAR(1 BYTE) DEFAULT 'N'
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CUSTOMERS" 
   (	"CUSTOMER_ID" NUMBER, 
	"NAME" VARCHAR2(100 BYTE), 
	"ADDRESS" VARCHAR2(255 BYTE), 
	"CONTACT_NUMBER" VARCHAR2(15 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"DOB" DATE, 
	"CUSTOMER_STATUS" VARCHAR2(20 BYTE), 
	"GENDER" VARCHAR2(10 BYTE), 
	"NATIONAL_ID" VARCHAR2(50 BYTE), 
	"BRANCH_ID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."EMPLOYEES" 
   (	"EMPLOYEE_ID" NUMBER, 
	"EMPLOYEE_NAME" VARCHAR2(100 BYTE), 
	"POSITION" VARCHAR2(50 BYTE), 
	"BRANCH_ID" NUMBER, 
	"HIRE_DATE" DATE, 
	"SALARY" NUMBER(10,2), 
	"DEPARTMENT" VARCHAR2(50 BYTE), 
	"IS_DELETED" CHAR(1 BYTE) DEFAULT 'N'
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HELP
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."HELP" SHARING=METADATA 
   (	"TOPIC" VARCHAR2(50 BYTE), 
	"SEQ" NUMBER, 
	"INFO" VARCHAR2(80 BYTE)
   ) PCTFREE 0 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 49152 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
  GRANT SELECT ON "SYSTEM"."HELP" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table LOANS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOANS" 
   (	"LOAN_ID" NUMBER, 
	"LOAN_TYPE" VARCHAR2(50 BYTE), 
	"LOAN_AMOUNT" NUMBER(15,2), 
	"LOAN_TERM" NUMBER(5,0), 
	"INTEREST_RATE" NUMBER(5,2), 
	"START_DATE" DATE, 
	"LOAN_STATUS" VARCHAR2(20 BYTE), 
	"REMAINING_BALANCE" NUMBER(15,2), 
	"END_DATE" DATE, 
	"GUARANTOR_ID" NUMBER, 
	"IS_DELETED" CHAR(1 BYTE) DEFAULT 'N', 
	"CUSTOMER_ID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LOAN_GUARANTORS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOAN_GUARANTORS" 
   (	"GUARANTOR_ID" NUMBER, 
	"GUARANTOR_STATUS" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LOAN_PAYMENTS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOAN_PAYMENTS" 
   (	"PAYMENT_ID" NUMBER, 
	"PAYMENT_AMOUNT" NUMBER(15,2), 
	"PAYMENT_DATE" DATE, 
	"PAYMENT_MODE" VARCHAR2(50 BYTE), 
	"LOAN_ID" NUMBER, 
	"IS_DELETED" CHAR(1 BYTE) DEFAULT 'N'
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table OL$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SYSTEM"."OL$" SHARING=METADATA 
   (	"OL_NAME" VARCHAR2(128 BYTE), 
	"SQL_TEXT" LONG, 
	"TEXTLEN" NUMBER, 
	"SIGNATURE" RAW(16), 
	"HASH_VALUE" NUMBER, 
	"HASH_VALUE2" NUMBER, 
	"CATEGORY" VARCHAR2(128 BYTE), 
	"VERSION" VARCHAR2(64 BYTE), 
	"CREATOR" VARCHAR2(128 BYTE), 
	"TIMESTAMP" DATE, 
	"FLAGS" NUMBER, 
	"HINTCOUNT" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" VARCHAR2(1000 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
  GRANT DELETE ON "SYSTEM"."OL$" TO PUBLIC;
  GRANT INSERT ON "SYSTEM"."OL$" TO PUBLIC;
  GRANT SELECT ON "SYSTEM"."OL$" TO PUBLIC;
  GRANT UPDATE ON "SYSTEM"."OL$" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table OL$HINTS
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SYSTEM"."OL$HINTS" SHARING=METADATA 
   (	"OL_NAME" VARCHAR2(128 BYTE), 
	"HINT#" NUMBER, 
	"CATEGORY" VARCHAR2(128 BYTE), 
	"HINT_TYPE" NUMBER, 
	"HINT_TEXT" VARCHAR2(512 BYTE), 
	"STAGE#" NUMBER, 
	"NODE#" NUMBER, 
	"TABLE_NAME" VARCHAR2(128 BYTE), 
	"TABLE_TIN" NUMBER, 
	"TABLE_POS" NUMBER, 
	"REF_ID" NUMBER, 
	"USER_TABLE_NAME" VARCHAR2(260 BYTE), 
	"COST" FLOAT(126), 
	"CARDINALITY" FLOAT(126), 
	"BYTES" FLOAT(126), 
	"HINT_TEXTOFF" NUMBER, 
	"HINT_TEXTLEN" NUMBER, 
	"JOIN_PRED" VARCHAR2(2000 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"HINT_STRING" CLOB
   ) ON COMMIT PRESERVE ROWS 
 LOB ("HINT_STRING") STORE AS BASICFILE (ENABLE STORAGE IN ROW 4000 CHUNK 8192 RETENTION 
  NOCACHE ) ;
  GRANT DELETE ON "SYSTEM"."OL$HINTS" TO PUBLIC;
  GRANT INSERT ON "SYSTEM"."OL$HINTS" TO PUBLIC;
  GRANT SELECT ON "SYSTEM"."OL$HINTS" TO PUBLIC;
  GRANT UPDATE ON "SYSTEM"."OL$HINTS" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table OL$NODES
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SYSTEM"."OL$NODES" SHARING=METADATA 
   (	"OL_NAME" VARCHAR2(128 BYTE), 
	"CATEGORY" VARCHAR2(128 BYTE), 
	"NODE_ID" NUMBER, 
	"PARENT_ID" NUMBER, 
	"NODE_TYPE" NUMBER, 
	"NODE_TEXTLEN" NUMBER, 
	"NODE_TEXTOFF" NUMBER, 
	"NODE_NAME" VARCHAR2(64 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
  GRANT DELETE ON "SYSTEM"."OL$NODES" TO PUBLIC;
  GRANT INSERT ON "SYSTEM"."OL$NODES" TO PUBLIC;
  GRANT SELECT ON "SYSTEM"."OL$NODES" TO PUBLIC;
  GRANT UPDATE ON "SYSTEM"."OL$NODES" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table REDO_DB
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."REDO_DB" SHARING=METADATA 
   (	"DBID" NUMBER, 
	"GLOBAL_DBNAME" VARCHAR2(129 BYTE), 
	"DBUNAME" VARCHAR2(32 BYTE), 
	"VERSION" VARCHAR2(32 BYTE), 
	"THREAD#" NUMBER, 
	"RESETLOGS_SCN_BAS" NUMBER, 
	"RESETLOGS_SCN_WRP" NUMBER, 
	"RESETLOGS_TIME" NUMBER, 
	"PRESETLOGS_SCN_BAS" NUMBER, 
	"PRESETLOGS_SCN_WRP" NUMBER, 
	"PRESETLOGS_TIME" NUMBER, 
	"SEQNO_RCV_CUR" NUMBER, 
	"SEQNO_RCV_LO" NUMBER, 
	"SEQNO_RCV_HI" NUMBER, 
	"SEQNO_DONE_CUR" NUMBER, 
	"SEQNO_DONE_LO" NUMBER, 
	"SEQNO_DONE_HI" NUMBER, 
	"GAP_SEQNO" NUMBER, 
	"GAP_RET" NUMBER, 
	"GAP_DONE" NUMBER, 
	"APPLY_SEQNO" NUMBER, 
	"APPLY_DONE" NUMBER, 
	"PURGE_DONE" NUMBER, 
	"HAS_CHILD" NUMBER, 
	"ERROR1" NUMBER, 
	"STATUS" NUMBER, 
	"CREATE_DATE" DATE, 
	"TS1" NUMBER, 
	"TS2" NUMBER, 
	"GAP_NEXT_SCN" NUMBER, 
	"GAP_NEXT_TIME" NUMBER, 
	"CURSCN_TIME" NUMBER, 
	"RESETLOGS_SCN" NUMBER, 
	"PRESETLOGS_SCN" NUMBER, 
	"GAP_RET2" NUMBER, 
	"CURLOG" NUMBER, 
	"ENDIAN" NUMBER, 
	"ENQIDX" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" DATE, 
	"SPARE6" VARCHAR2(65 BYTE), 
	"SPARE7" VARCHAR2(129 BYTE), 
	"TS3" NUMBER, 
	"CURBLKNO" NUMBER, 
	"SPARE8" NUMBER, 
	"SPARE9" NUMBER, 
	"SPARE10" NUMBER, 
	"SPARE11" NUMBER, 
	"SPARE12" NUMBER, 
	"TENANT_KEY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table REDO_LOG
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."REDO_LOG" SHARING=METADATA 
   (	"DBID" NUMBER, 
	"GLOBAL_DBNAME" VARCHAR2(129 BYTE), 
	"DBUNAME" VARCHAR2(32 BYTE), 
	"VERSION" VARCHAR2(32 BYTE), 
	"THREAD#" NUMBER, 
	"RESETLOGS_SCN_BAS" NUMBER, 
	"RESETLOGS_SCN_WRP" NUMBER, 
	"RESETLOGS_TIME" NUMBER, 
	"PRESETLOGS_SCN_BAS" NUMBER, 
	"PRESETLOGS_SCN_WRP" NUMBER, 
	"PRESETLOGS_TIME" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"DUPID" NUMBER, 
	"STATUS1" NUMBER, 
	"STATUS2" NUMBER, 
	"CREATE_TIME" VARCHAR2(32 BYTE), 
	"CLOSE_TIME" VARCHAR2(32 BYTE), 
	"DONE_TIME" VARCHAR2(32 BYTE), 
	"FIRST_SCN_BAS" NUMBER, 
	"FIRST_SCN_WRP" NUMBER, 
	"FIRST_TIME" NUMBER, 
	"NEXT_SCN_BAS" NUMBER, 
	"NEXT_SCN_WRP" NUMBER, 
	"NEXT_TIME" NUMBER, 
	"FIRST_SCN" NUMBER, 
	"NEXT_SCN" NUMBER, 
	"RESETLOGS_SCN" NUMBER, 
	"BLOCKS" NUMBER, 
	"BLOCK_SIZE" NUMBER, 
	"OLD_BLOCKS" NUMBER, 
	"CREATE_DATE" DATE, 
	"ERROR1" NUMBER, 
	"ERROR2" NUMBER, 
	"FILENAME" VARCHAR2(513 BYTE), 
	"TS1" NUMBER, 
	"TS2" NUMBER, 
	"ENDIAN" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" DATE, 
	"SPARE6" VARCHAR2(65 BYTE), 
	"SPARE7" VARCHAR2(129 BYTE), 
	"TS3" NUMBER, 
	"PRESETLOGS_SCN" NUMBER, 
	"SPARE8" NUMBER, 
	"SPARE9" NUMBER, 
	"SPARE10" NUMBER, 
	"OLD_STATUS1" NUMBER, 
	"OLD_STATUS2" NUMBER, 
	"OLD_FILENAME" VARCHAR2(513 BYTE), 
	"TENANT_KEY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table SCHEDULER_JOB_ARGS_TBL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SCHEDULER_JOB_ARGS_TBL" SHARING=METADATA 
   (	"OWNER" VARCHAR2(128 BYTE), 
	"JOB_NAME" VARCHAR2(128 BYTE), 
	"ARGUMENT_NAME" VARCHAR2(128 BYTE), 
	"ARGUMENT_POSITION" NUMBER, 
	"ARGUMENT_TYPE" VARCHAR2(257 BYTE), 
	"VALUE" VARCHAR2(4000 BYTE), 
	"ANYDATA_VALUE" "SYS"."ANYDATA" , 
	"OUT_ARGUMENT" VARCHAR2(5 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" 
 OPAQUE TYPE ("ANYDATA_VALUE") STORE AS BASICFILE LOB (
  ENABLE STORAGE IN ROW 4000 CHUNK 8192 RETENTION 
  CACHE ) ;
  GRANT SELECT ON "SYSTEM"."SCHEDULER_JOB_ARGS_TBL" TO "SELECT_CATALOG_ROLE";
--------------------------------------------------------
--  DDL for Table SCHEDULER_PROGRAM_ARGS_TBL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SCHEDULER_PROGRAM_ARGS_TBL" SHARING=METADATA 
   (	"OWNER" VARCHAR2(128 BYTE), 
	"PROGRAM_NAME" VARCHAR2(128 BYTE), 
	"ARGUMENT_NAME" VARCHAR2(128 BYTE), 
	"ARGUMENT_POSITION" NUMBER, 
	"ARGUMENT_TYPE" VARCHAR2(257 BYTE), 
	"METADATA_ATTRIBUTE" VARCHAR2(19 BYTE), 
	"DEFAULT_VALUE" VARCHAR2(4000 BYTE), 
	"DEFAULT_ANYDATA_VALUE" "SYS"."ANYDATA" , 
	"OUT_ARGUMENT" VARCHAR2(5 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" 
 OPAQUE TYPE ("DEFAULT_ANYDATA_VALUE") STORE AS BASICFILE LOB (
  ENABLE STORAGE IN ROW 4000 CHUNK 8192 RETENTION 
  CACHE ) ;
  GRANT SELECT ON "SYSTEM"."SCHEDULER_PROGRAM_ARGS_TBL" TO "SELECT_CATALOG_ROLE";
--------------------------------------------------------
--  DDL for Table SQLPLUS_PRODUCT_PROFILE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SQLPLUS_PRODUCT_PROFILE" SHARING=METADATA 
   (	"PRODUCT" VARCHAR2(30 BYTE), 
	"USERID" VARCHAR2(128 BYTE), 
	"ATTRIBUTE" VARCHAR2(240 BYTE), 
	"SCOPE" VARCHAR2(240 BYTE), 
	"NUMERIC_VALUE" NUMBER(15,2), 
	"CHAR_VALUE" VARCHAR2(240 BYTE), 
	"DATE_VALUE" DATE, 
	"LONG_VALUE" LONG
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TRANSACTIONS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TRANSACTIONS" 
   (	"TRANSACTION_ID" NUMBER, 
	"TRANSACTION_TYPE" VARCHAR2(50 BYTE), 
	"AMOUNT" NUMBER(15,2), 
	"TRANSACTION_DATE" DATE, 
	"TRANSACTION_MODE" VARCHAR2(50 BYTE), 
	"ACCOUNT_ID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for View PRODUCT_PRIVS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."PRODUCT_PRIVS" ("PRODUCT", "USERID", "ATTRIBUTE", "SCOPE", "NUMERIC_VALUE", "CHAR_VALUE", "DATE_VALUE", "LONG_VALUE") AS 
  SELECT PRODUCT, USERID, ATTRIBUTE, SCOPE,
         NUMERIC_VALUE, CHAR_VALUE, DATE_VALUE, LONG_VALUE
  FROM SQLPLUS_PRODUCT_PROFILE
  WHERE USERID = 'PUBLIC' OR
        USERID LIKE SYS_CONTEXT('USERENV','CURRENT_USER')
;
  GRANT READ ON "SYSTEM"."PRODUCT_PRIVS" TO PUBLIC;
GRANT SELECT ON "SYSTEM"."SCHEDULER_JOB_ARGS" TO "SELECT_CATALOG_ROLE";
GRANT SELECT ON "SYSTEM"."SCHEDULER_PROGRAM_ARGS" TO "SELECT_CATALOG_ROLE";
REM INSERTING into SYSTEM.ACCOUNTS
SET DEFINE OFF;
Insert into SYSTEM.ACCOUNTS (ACCOUNT_ID,ACCOUNT_TYPE,BALANCE,OPEN_DATE,INTEREST_RATE,ACCOUNT_STATUS,CUSTOMER_ID,BRANCH_ID,IS_DELETED) values (1,'Savings',1500.75,to_date('15-JAN-22','DD-MON-RR'),1.5,'Active',1,101,'N');
Insert into SYSTEM.ACCOUNTS (ACCOUNT_ID,ACCOUNT_TYPE,BALANCE,OPEN_DATE,INTEREST_RATE,ACCOUNT_STATUS,CUSTOMER_ID,BRANCH_ID,IS_DELETED) values (2,'Checking',2500,to_date('05-JUN-23','DD-MON-RR'),0.5,'Active',2,102,'N');
REM INSERTING into SYSTEM.AQ$_SCHEDULES
SET DEFINE OFF;
REM INSERTING into SYSTEM.BRANCHES
SET DEFINE OFF;
Insert into SYSTEM.BRANCHES (BRANCH_ID,BRANCH_NAME,LOCATION,CONTACT_NUMBER,MANAGER_ID,IS_DELETED) values (101,'Main Branch','Downtown','555-1111',null,'N');
Insert into SYSTEM.BRANCHES (BRANCH_ID,BRANCH_NAME,LOCATION,CONTACT_NUMBER,MANAGER_ID,IS_DELETED) values (102,'East Branch','New Eastside','555-3333',null,'N');
REM INSERTING into SYSTEM.CARDS
SET DEFINE OFF;
Insert into SYSTEM.CARDS (CARD_ID,CARD_TYPE,EXPIRY_DATE,STATUS,ACCOUNT_ID,IS_DELETED) values (1,'Debit',to_date('31-DEC-25','DD-MON-RR'),'Blocked',1,'N');
Insert into SYSTEM.CARDS (CARD_ID,CARD_TYPE,EXPIRY_DATE,STATUS,ACCOUNT_ID,IS_DELETED) values (2,'Credit',to_date('31-OCT-26','DD-MON-RR'),'Active',2,'N');
REM INSERTING into SYSTEM.CUSTOMERS
SET DEFINE OFF;
Insert into SYSTEM.CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CONTACT_NUMBER,EMAIL,DOB,CUSTOMER_STATUS,GENDER,NATIONAL_ID,BRANCH_ID) values (1,'John Doe','789 Oak St','555-9999','john.doe@newmail.com',to_date('01-JAN-90','DD-MON-RR'),'Active','Male','123456789',101);
Insert into SYSTEM.CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CONTACT_NUMBER,EMAIL,DOB,CUSTOMER_STATUS,GENDER,NATIONAL_ID,BRANCH_ID) values (2,'Jane Smith','456 Elm St','555-5678','jane@example.com',to_date('12-MAY-85','DD-MON-RR'),'Active','Female','987654321',102);
Insert into SYSTEM.CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CONTACT_NUMBER,EMAIL,DOB,CUSTOMER_STATUS,GENDER,NATIONAL_ID,BRANCH_ID) values (3,'John Doe','789 Oak St','555-9999','john.doe@newmail.com',to_date('01-JAN-90','DD-MON-RR'),'Active','Male','123456789',101);
Insert into SYSTEM.CUSTOMERS (CUSTOMER_ID,NAME,ADDRESS,CONTACT_NUMBER,EMAIL,DOB,CUSTOMER_STATUS,GENDER,NATIONAL_ID,BRANCH_ID) values (4,'Jane Smith','456 Elm St','555-5678','jane@example.com',to_date('12-MAY-85','DD-MON-RR'),'Active','Female','987654321',102);
REM INSERTING into SYSTEM.EMPLOYEES
SET DEFINE OFF;
Insert into SYSTEM.EMPLOYEES (EMPLOYEE_ID,EMPLOYEE_NAME,POSITION,BRANCH_ID,HIRE_DATE,SALARY,DEPARTMENT,IS_DELETED) values (1,'Alice Johnson','Manager',101,to_date('15-JUN-15','DD-MON-RR'),8000,'Management','N');
Insert into SYSTEM.EMPLOYEES (EMPLOYEE_ID,EMPLOYEE_NAME,POSITION,BRANCH_ID,HIRE_DATE,SALARY,DEPARTMENT,IS_DELETED) values (2,'Bob Williams','Senior Teller',102,to_date('10-SEP-19','DD-MON-RR'),4500,'Operations','N');
REM INSERTING into SYSTEM.HELP
SET DEFINE OFF;
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',2,' @ ("at" sign)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',3,' -------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',4,' Runs the SQL*Plus statements in the specified script. The script can be');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',5,' called from the local file system or a web server.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',7,' @ {url|file_name[.ext]} [arg ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',9,' where url supports HTTP and FTP protocols in the form:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',11,'    http://host.domain/script.sql');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',2,' @@ (double "at" sign)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',3,' ---------------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',5,' Runs the specified script. This command is almost identical to');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',6,' the @ command. It is useful for running nested scripts because it');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',7,' has the additional functionality of looking for the nested script');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',8,' in the same url or path as the calling script.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',10,' @@ {url|file_name[.ext]} [arg ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',2,' / (slash)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',3,' ---------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',5,' Executes the most recently executed SQL command or PL/SQL block');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',6,' which is stored in the SQL buffer. Use slash (/) at the command');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',7,' prompt or line number prompt in SQL*Plus command line. The buffer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',8,' has no command history and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',10,' /');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',2,' ACCEPT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',5,' Reads a line of input and stores it in a given substitution variable.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',7,' ACC[EPT] variable [NUM[BER] | CHAR | DATE | BINARY_FLOAT | BINARY_DOUBLE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',8,' [FOR[MAT] format] [DEF[AULT] default] [PROMPT text | NOPR[OMPT]] [HIDE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',2,' APPEND');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',5,' Adds text to the end of the current line in the SQL buffer.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',7,' A[PPEND] text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',2,' ARCHIVE LOG');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',3,' -----------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',5,' Displays information about redo log files.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',7,' ARCHIVE LOG LIST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',2,' ATTRIBUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',3,' ---------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',5,' Specifies display characteristics for a given attribute of an Object Type');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',6,' column, such as the format of NUMBER data. Columns and attributes should');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',7,' not have the same names as they share a common namespace. Lists the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',8,' current display characteristics for a single attribute or all attributes.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',10,' ATTRIBUTE [type_name.attribute_name [option ... ]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',12,' where option represents one of the following terms or clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',13,'     ALI[AS] alias');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',14,'     CLE[AR]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',15,'     FOR[MAT] format');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',16,'     LIKE {type_name.attribute_name | alias}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',17,'     ON|OFF');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',18,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',2,' BREAK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',5,' Specifies where changes occur in a report and the formatting');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',6,' action to perform, such as:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',7,' - suppressing display of duplicate values for a given column');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',8,' - skipping a line each time a given column value changes');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',9,' - printing computed figures each time a given column value');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',10,'   changes or at the end of the report.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',11,' Enter BREAK with no clauses to list the current BREAK definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',13,' BRE[AK] [ON report_element [action [action]]] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',15,' where report_element has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',16,'     {column | expression | ROW | REPORT}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',17,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',18,' and where action has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',19,'     [SKI[P] n | [SKI[P]] PAGE] [NODUP[LICATES] | DUP[LICATES]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',20,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',2,' BTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',5,' Places and formats a specified title at the bottom of each report');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',6,' page, or lists the current BTITLE definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',8,' BTI[TLE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',10,' where printspec represents one or more of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',12,'     COL n          LE[FT]        BOLD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',13,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',14,'     TAB n          R[IGHT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',15,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',2,' CHANGE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',5,' Changes the first occurrence of the specified text on the current');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',6,' line of the SQL buffer. The buffer has no command history list and');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',7,' does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',9,' C[HANGE] sepchar old [sepchar [new[sepchar]]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',2,' CLEAR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',5,' Resets or erases the current value or setting for the specified option.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',7,' CL[EAR] option ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',9,' where option represents one of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',10,'     BRE[AKS]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',11,'     BUFF[ER]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',12,'     COL[UMNS]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',13,'     COMP[UTES]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',14,'     SCR[EEN]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',15,'     SQL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',16,'     TIMI[NG]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',17,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',2,' COLUMN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',5,' Specifies display attributes for a given column, such as:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',6,'     - text for the column heading');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',7,'     - alignment for the column heading');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',8,'     - format for NUMBER data');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',9,'     - wrapping of column data');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',10,' Also lists the current display attributes for a single column');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',11,' or all columns.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',13,' COL[UMN] [{column | expr} [option ...] ]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',15,' where option represents one of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',16,'     ALI[AS] alias');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',17,'     BOOL[EAN] text1 text2');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',18,'     CLE[AR]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',19,'     ENTMAP {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',20,'     FOLD_A[FTER]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',21,'     FOLD_B[EFORE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',22,'     FOR[MAT] format');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',23,'     HEA[DING] text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',24,'     JUS[TIFY] {L[EFT] | C[ENTER] | R[IGHT]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',25,'     LIKE {expr | alias}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',26,'     NEWL[INE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',27,'     NEW_V[ALUE] variable');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',28,'     NOPRI[NT] | PRI[NT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',29,'     NUL[L] text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',30,'     OLD_V[ALUE] variable');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',31,'     ON|OFF');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',32,'     WRA[PPED] | WOR[D_WRAPPED] | TRU[NCATED]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',33,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',2,' COMPUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',5,' In combination with the BREAK command, calculates and prints');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',6,' summary lines using various standard computations. Also lists');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',7,' all COMPUTE definitions.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',9,' COMP[UTE] [function [LAB[EL] text] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',10,'   OF {expr|column|alias} ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',11,'   ON {expr|column|alias|REPORT|ROW} ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',2,' CONNECT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',5,' Connects a given username to the Oracle Database. When you run a');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',6,' CONNECT command, the site profile, glogin.sql, and the user profile,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',7,' login.sql, are processed in that order. CONNECT does not reprompt');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',8,' for username or password if the initial connection does not succeed.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',10,' CONN[ECT] [{logon|/|proxy}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',11,' [AS {SYSASM|SYSBACKUP|SYSDBA|SYSDG|SYSOPER|SYSRAC|SYSKM}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',12,' [edition=value]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',13,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',14,' where logon has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',15,'     username[/password][@connect_identifier]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',16,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',17,' where proxy has the syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',18,'     proxyuser[username][/password][@connect_identifier]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',19,' NOTE: Brackets around username in proxy are required syntax');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',20,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',2,' COPY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',5,' Copies data from a query to a table in the same or another');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',6,' database. COPY supports CHAR, DATE, LONG, NUMBER and VARCHAR2.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',8,' COPY {FROM database | TO database | FROM database TO database}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',9,'            {APPEND|CREATE|INSERT|REPLACE} destination_table');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',10,'            [(column, column, column, ...)] USING query');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',12,' where database has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',13,'     username[/password]@connect_identifier');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',2,' DEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',5,' Specifies a substitution variable and assigns a CHAR value to it, or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',6,' lists the value and variable type of a single variable or all variables.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',8,' DEF[INE] [variable] | [variable = text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',2,' DEL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',3,' ---');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',5,' Deletes one or more lines of the SQL buffer. The buffer has no');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',6,' command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',8,' DEL [n | n m | n * | n LAST | * | * n | * LAST | LAST]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',2,' DESCRIBE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',3,' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',5,' Lists the column definitions for a table, view, or synonym,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',6,' or the specifications for a function or procedure.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',8,' DESC[RIBE] {[schema.]object[@connect_identifier]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',2,' DISCONNECT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',3,' ----------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',5,' Commits pending changes to the database and logs the current');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',6,' user out of Oracle, but does not exit SQL*Plus.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',7,' In SQL*Plus command line, use EXIT or QUIT to log out of Oracle');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',8,' and return control to your computer''s operating system.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',10,' DISC[ONNECT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',2,' EDIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',5,' Invokes an operating system text editor on the contents of the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',6,' specified file or on the contents of the SQL buffer. The buffer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',7,' has no command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',9,' ED[IT] [file_name[.ext]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',2,' EXECUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',5,' Executes a single PL/SQL statement or runs a stored procedure.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',7,' EXEC[UTE] statement');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',2,' EXIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',5,' Commits or rolls back all pending changes, logs out of Oracle,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',6,' terminates SQL*Plus and returns control to the operating system.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',8,' {EXIT|QUIT} [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',9,'   [COMMIT|ROLLBACK]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',2,' GET');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',3,' ---');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',5,' Loads a SQL statement or PL/SQL block from a script into the SQL buffer.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',6,' The buffer has no command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',8,' GET [FILE] file_name[.ext] [LIST | NOLIST]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',2,' HELP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',5,' Accesses this command line help system. Enter HELP INDEX or ? INDEX');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',6,' for a list of topics.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',8,' You can view SQL*Plus resources at');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',9,'     http://www.oracle.com/technology/documentation/');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',11,' ******************************************************************************');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',2,' HISTORY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',5,' Stores, lists, executes, or edits commands');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',6,' entered during the current SQL*Plus session.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',8,' HIST[ORY] [[[N] {R[UN] | E[DIT] | D[ELETE]}] | CLEAR | LIST]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',10,' N is the entry number listed in the history list to RUN, EDIT or DELETE.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',11,' If N is omitted then the active entry is used.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',12,' The most recently run or edited command becomes the active entry.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',13,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',14,' SET HISTORY needs to be ON to record command history.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',15,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',16,' Examples:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',17,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',18,' HIST       - Lists all entries in the history.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',19,'              The active entry is indicated by an asterisk.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',20,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',21,' HIST 3 R   - Runs the 3rd entry in the history.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',22,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',2,' HOST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',5,' Executes an operating system command without leaving SQL*Plus.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',6,' Enter HOST without command to display an operating system prompt.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',7,' You can then enter multiple operating system commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',9,' HO[ST] [command]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',2,'Enter Help [topic] for help.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',3,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',4,' @             COPY         PASSWORD                 SHOW');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',5,' @@            DEFINE       PAUSE                    SHUTDOWN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',6,' /             DEL          PRINT                    SPOOL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',7,' ACCEPT        DESCRIBE     PROMPT                   SQLPLUS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',8,' APPEND        DISCONNECT   QUIT                     START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',9,' ARCHIVE LOG   EDIT         RECOVER                  STARTUP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',10,' ATTRIBUTE     EXECUTE      REMARK                   STORE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',11,' BREAK         EXIT         REPFOOTER                TIMING');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',12,' BTITLE        GET          REPHEADER                TTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',13,' CHANGE        HELP         RESERVED WORDS (SQL)     UNDEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',14,' CLEAR         HISTORY      RESERVED WORDS (PL/SQL)  VARIABLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',15,' COLUMN        HOST         RUN                      WHENEVER OSERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',16,' COMPUTE       INPUT        SAVE                     WHENEVER SQLERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',17,' CONNECT       LIST         SET                      XQUERY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',18,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',2,' INPUT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',5,' Adds one or more new lines of text after the current line in the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',6,' SQL buffer. The buffer has no command history list and does not');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',7,' record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',9,' I[NPUT] [text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',2,' LIST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',5,' Lists one or more lines of the most recently executed SQL command');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',6,' or PL/SQL block which is stored in the SQL buffer. Enter LIST with');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',7,' no clauses to list all lines. In SQL*Plus command-line you can also');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',8,' use ";" to list all the lines in the SQL buffer. The buffer has no');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',9,' command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',11,' L[IST] [n | n m | n  * | n LAST | * | * n | * LAST | LAST]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',2,' Menu');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',5,' Enter HELP INDEX for a list of help topics.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',2,' PASSWORD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',3,' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',5,' Allows you to change a password without displaying it on an input device.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',7,' PASSW[ORD] [username]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',2,' PAUSE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',5,' Displays the specified text then waits for the user to press RETURN.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',7,' PAU[SE] [text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',2,' PRINT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',5,' Displays the current values of bind variables, or lists all bind');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',6,' variables.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',8,' PRINT [variable ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',2,' PROMPT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',5,' Sends the specified message or a blank line to the user''s screen.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',7,' PRO[MPT] [text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',2,' QUIT (Identical to EXIT)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',5,' Commits or rolls back all pending changes, logs out of Oracle,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',6,' terminates SQL*Plus and returns control to the operating system.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',8,' {QUIT|EXIT} [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',9,'   [COMMIT|ROLLBACK]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',2,' RECOVER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',5,' Performs media recovery on one or more tablespaces, one or more');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',6,' datafiles, or the entire database.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',8,' RECOVER {general | managed} | BEGIN BACKUP | END BACKUP}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',10,' where the general clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',11,'   [AUTOMATIC] [FROM location]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',12,'   { {full_database_recovery | partial_database_recovery |LOGFILE filename}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',13,'   [ {TEST | ALLOW integer CORRUPTION | parallel_clause}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',14,'   [TEST | ALLOW integer CORRUPTION | parallel_clause] ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',15,'   |CONTINUE [DEFAULT]|CANCEL}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',16,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',17,'   where the full_database_recovery clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',18,'     [STANDBY] DATABASE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',19,'     [{ UNTIL {CANCEL | TIME date | CHANGE integer}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',20,'      | USING BACKUP CONTROLFILE}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',21,'      [ UNTIL {CANCEL | TIME date | CHANGE integer}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',22,'      | USING BACKUP CONTROLFILE] ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',23,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',24,'   where the partial_database_recovery clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',25,'     {TABLESPACE tablespace [, tablespace] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',26,'      | DATAFILE filename | filenumber} [,filename | filenumber] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',27,'      | STANDBY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',28,'       {TABLESPACE tablespace [, tablespace] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',29,'       | DATAFILE filename | filenumber} [,filename | filenumber] ...}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',30,'     UNTIL [CONSISTENT WITH] CONTROLFILE }');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',31,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',32,' where the parallel clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',33,'   {NOPARALLEL | PARALLEL [integer]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',34,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',35,' where the managed clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',36,'   MANAGED STANDBY DATABASE recover_clause | cancel_clause | finish_clause');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',37,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',38,' where the recover_clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',39,'   {{DISCONNECT [FROM SESSION] | {TIMEOUT integer | NOTIMEOUT} }');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',40,'    |{NODELAY | DEFAULT DELAY | DELAY integer} | NEXT integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',41,'    |{EXPIRE integer | NO EXPIRE} | parallel_clause');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',42,'    | USING CURRENT LOGFILE | UNTIL CHANGE integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',43,'    | THROUGH {[THREAD integer] SEQUENCE integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',44,'              | ALL ARCHIVELOG  | {ALL | LAST | NEXT } SWITCHOVER} }');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',45,'      [DISCONNECT [FROM SESSION ]  | {TIMEOUT integer | NOTIMEOUT}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',46,'       | {NODELAY | DEFAULT DELAY | DELAY integer} | NEXT integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',47,'       | {EXPIRE integer | NO EXPIRE} | parallel_clause');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',48,'       | USING CURRENT LOGFILE | UNTIL CHANGE integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',49,'       | THROUGH {[THREAD integer] SEQUENCE integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',50,'                 | ALL ARCHIVELOG  | {ALL | LAST | NEXT } SWITCHOVER} ]...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',51,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',52,' where the cancel_clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',53,'   CANCEL [IMMEDIATE] [WAIT | NOWAIT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',54,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',55,' where the finish_clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',56,'   [DISCONNECT [FROM SESSION]] [parallel_clause]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',57,'   FINISH [SKIP [STANDBY LOGFILE]] [WAIT | NOWAIT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',58,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',59,' where the parallel_clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',60,'   {NOPARALLEL | PARALLEL [integer] }');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',61,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',2,' REMARK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',5,' Begins a comment in a script. SQL*Plus does not interpret the comment');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',6,' as a command.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',8,' REM[ARK]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',2,' REPFOOTER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',3,' ---------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',5,' Places and formats a footer at the bottom of a report, or lists the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',6,' REPFOOTER definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',8,' REPF[OOTER] [PAGE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',10,' where printspec represents one or more of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',11,'     COL n          LE[FT]        BOLD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',12,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',13,'     TAB n          R[IGHT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',2,' REPHEADER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',3,' ---------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',5,' Places and formats a header at the top of a report, or lists the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',6,' REPHEADER definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',8,' REPH[EADER] [PAGE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',10,' where printspec represents one or more of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',11,'     COL n          LE[FT]        BOLD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',12,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',13,'     TAB n          R[IGHT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',2,' RESERVED WORDS (SQL)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',3,' --------------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',5,' SQL Reserved Words have special meaning in SQL, and may not be used for');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',6,' identifier names unless enclosed in "quotes".');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',8,' An asterisk (*) indicates words are also ANSI Reserved Words.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',10,' Oracle prefixes implicitly generated schema object and subobject names');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',11,' with "SYS_". To avoid name resolution conflict, Oracle discourages you');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',12,' from prefixing your schema object and subobject names with "SYS_".');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',13,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',14,' ACCESS          DEFAULT*         INTEGER*        ONLINE          START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',15,' ADD*            DELETE*          INTERSECT*      OPTION*         SUCCESSFUL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',16,' ALL*            DESC*            INTO*           OR*             SYNONYM');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',17,' ALTER*          DISTINCT*        IS*             ORDER*          SYSDATE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',18,' AND*            DROP*            LEVEL*          PCTFREE         TABLE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',19,' ANY*            ELSE*            LIKE*           PRIOR*          THEN*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',20,' AS*             EXCLUSIVE        LOCK            PRIVILEGES*     TO*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',21,' ASC*            EXISTS           LONG            PUBLIC*         TRIGGER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',22,' AUDIT           FILE             MAXEXTENTS      RAW             UID');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',23,' BETWEEN*        FLOAT*           MINUS           RENAME          UNION*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',24,' BY*             FOR*             MLSLABEL        RESOURCE        UNIQUE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',25,' CHAR*           FROM*            MODE            REVOKE*         UPDATE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',26,' CHECK*          GRANT*           MODIFY          ROW             USER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',27,' CLUSTER         GROUP*           NOAUDIT         ROWID           VALIDATE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',28,' COLUMN          HAVING*          NOCOMPRESS      ROWNUM          VALUES*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',29,' COMMENT         IDENTIFIED       NOT*            ROWS*           VARCHAR*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',30,' COMPRESS        IMMEDIATE*       NOWAIT          SELECT*         VARCHAR2');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',31,' CONNECT*        IN*              NULL*           SESSION*        VIEW*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',32,' CREATE*         INCREMENT        NUMBER          SET*            WHENEVER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',33,' CURRENT*        INDEX            OF*             SHARE           WHERE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',34,' DATE*           INITIAL          OFFLINE         SIZE*           WITH*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',35,' DECIMAL*        INSERT*          ON*             SMALLINT*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',36,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',2,' RESERVED WORDS (PL/SQL)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',3,' -----------------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',5,' PL/SQL Reserved Words have special meaning in PL/SQL, and may not be used');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',6,' for identifier names (unless enclosed in "quotes").');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',8,' An asterisk (*) indicates words are also SQL Reserved Words.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',10,' ALL*            DESC*           JAVA            PACKAGE         SUBTYPE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',11,' ALTER*          DISTINCT*       LEVEL*          PARTITION       SUCCESSFUL*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',12,' AND*            DO              LIKE*           PCTFREE*        SUM');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',13,' ANY*            DROP*           LIMITED         PLS_INTEGER     SYNONYM*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',14,' ARRAY           ELSE*           LOCK*           POSITIVE        SYSDATE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',15,' AS*             ELSIF           LONG*           POSITIVEN       TABLE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',16,' ASC*            END             LOOP            PRAGMA          THEN*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',17,' AT              EXCEPTION       MAX             PRIOR*          TIME');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',18,' AUTHID          EXCLUSIVE*      MIN             PRIVATE         TIMESTAMP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',19,' AVG             EXECUTE         MINUS*          PROCEDURE       TIMEZONE_ABBR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',20,' BEGIN           EXISTS*         MINUTE          PUBLIC*         TIMEZONE_HOUR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',21,' BETWEEN*        EXIT            MLSLABEL*       RAISE           TIMEZONE_MINUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',22,' BINARY_INTEGER  EXTENDS         MOD             RANGE           TIMEZONE_REGION');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',23,' BODY            EXTRACT         MODE*           RAW*            TO*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',24,' BOOLEAN         FALSE           MONTH           REAL            TRIGGER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',25,' BULK            FETCH           NATURAL         RECORD          TRUE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',26,' BY*             FLOAT*          NATURALN        REF             TYPE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',27,' CHAR*           FOR*            NEW             RELEASE         UI');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',28,' CHAR_BASE       FORALL          NEXTVAL         RETURN          UNION*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',29,' CHECK*          FROM*           NOCOPY          REVERSE         UNIQUE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',30,' CLOSE           FUNCTION        NOT*            ROLLBACK        UPDATE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',31,' CLUSTER*        GOTO            NOWAIT*         ROW*            USE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',32,' COALESCE        GROUP*          NULL*           ROWID*          USER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',33,' COLLECT         HAVING*         NULLIF          ROWNUM*         VALIDATE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',34,' COMMENT*        HEAP            NUMBER*         ROWTYPE         VALUES*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',35,' COMMIT          HOUR            NUMBER_BASE     SAVEPOINT       VARCHAR*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',36,' COMPRESS*       IF              OCIROWID        SECOND          VARCHAR2*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',37,' CONNECT*        IMMEDIATE*      OF*             SELECT*         VARIANCE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',38,' CONSTANT        IN*             ON*             SEPERATE        VIEW*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',39,' CREATE*         INDEX*          OPAQUE          SET*            WHEN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',40,' CURRENT*        INDICATOR       OPEN            SHARE*          WHENEVER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',41,' CURRVAL         INSERT*         OPERATOR        SMALLINT*       WHERE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',42,' CURSOR          INTEGER*        OPTION*         SPACE           WHILE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',43,' DATE*           INTERFACE       OR*             SQL             WITH*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',44,' DAY             INTERSECT*      ORDER*          SQLCODE         WORK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',45,' DECIMAL*        INTERVAL        ORGANIZATION    SQLERRM         WRITE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',46,' DECLARE         INTO*           OTHERS          START*          YEAR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',47,' DEFAULT*        IS*             OUT             STDDEV          ZONE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',48,' DELETE*         ISOLATION');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',49,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',2,' RUN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',3,' ---');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',5,' Lists and executes the most recently executed SQL command or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',6,' PL/SQL block which is stored in the SQL buffer. The buffer has');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',7,' no command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',9,' R[UN]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',2,' SAVE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',5,' Saves the contents of the SQL buffer in a script. The');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',6,' buffer has no command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',8,' SAV[E] [FILE] file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',2,' SET');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',3,' ---');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',5,' Sets a system variable to alter the SQL*Plus environment settings');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',6,' for your current session. For example, to:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',7,'     -   set the display width for data');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',8,'     -   customize HTML formatting');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',9,'     -   enable or disable printing of column headings');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',10,'     -   set the number of lines per page');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',12,' SET system_variable value');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',13,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',14,' where system_variable and value represent one of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',15,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',16,'   APPI[NFO]{OFF|ON|text}                   NEWP[AGE] {1|n|NONE}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',17,'   ARRAY[SIZE] {15|n}                       NULL text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',18,'   AUTO[COMMIT] {OFF|ON|IMM[EDIATE]|n}      NUMF[ORMAT] format');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',19,'   AUTOP[RINT] {OFF|ON}                     NUM[WIDTH] {10|n}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',20,'   AUTORECOVERY {OFF|ON}                    PAGES[IZE] {14|n}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',21,'   AUTOT[RACE] {OFF|ON|TRACE[ONLY]}         PAU[SE] {OFF|ON|text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',22,'     [EXP[LAIN]] [STAT[ISTICS]]             RECSEP {WR[APPED]|EA[CH]|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',23,'   BLO[CKTERMINATOR] {.|c|ON|OFF}           RECSEPCHAR {_|c}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',24,'   CMDS[EP] {;|c|OFF|ON}                    ROWPREF[ETCH] {n}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',25,'   COLINVI[SIBLE] {OFF|ON}                  SERVEROUT[PUT] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',26,'   COLSEP {_|text}                            [SIZE {n | UNLIMITED}]|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',27,'   CON[CAT] {.|c|ON|OFF}                      [FOR[MAT]  {WRA[PPED]|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',28,'   COPYC[OMMIT] {0|n}                          WOR[D_WRAPPED]|TRU[NCATED]}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',29,'   COPYTYPECHECK {ON|OFF}                   SHIFT[INOUT] {VIS[IBLE] |');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',30,'   DEF[INE] {&|c|ON|OFF}                      INV[ISIBLE]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',31,'   DESCRIBE [DEPTH {1|n|ALL}]               SHOW[MODE] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',32,'     [LINENUM {OFF|ON}] [INDENT {OFF|ON}]   SQLBL[ANKLINES] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',33,'   ECHO {OFF|ON}                            SQLC[ASE] {MIX[ED] |');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',34,'   EDITF[ILE] file_name[.ext]                 LO[WER] | UP[PER]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',35,'   EMB[EDDED] {OFF|ON}                      SQLCO[NTINUE] {> | text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',36,'   ERRORL[OGGING] {ON|OFF}                  SQLN[UMBER] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',37,'     [TABLE [schema.]tablename]             SQLPLUSCOMPAT[IBILITY] {x.y[.z]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',38,'     [TRUNCATE] [IDENTIFIER identifier]     SQLPRE[FIX] {#|c}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',39,'   ESC[APE] {\|c|OFF|ON}                    SQLP[ROMPT] {SQL>|text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',40,'   ESCCHAR {@|?|%|$|OFF}                    SQLT[ERMINATOR] {;|c|ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',41,'   EXITC[OMMIT] {ON|OFF}                    STATEMENTC[ACHE] {n}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',42,'   FEED[BACK] {6|n|ON|OFF|ONLY}[SQL_ID]     SUF[FIX] {SQL|text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',43,'   FLAGGER {OFF|ENTRY|INTERMED[IATE]|FULL}  TAB {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',44,'   FLU[SH] {ON|OFF}                         TERM[OUT] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',45,'   HEA[DING] {ON|OFF}                       TI[ME] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',46,'   HEADS[EP] {||c|ON|OFF}                   TIMI[NG] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',47,'   HIST[ORY] {ON|OFF|N}                     TRIM[OUT] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',48,'   INSTANCE [instance_path|LOCAL]           TRIMS[POOL] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',49,'   LIN[ESIZE] {80|n|WINDOW}                 UND[ERLINE] {-|c|ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',50,'   LOBOF[FSET] {1|n}                        VER[IFY] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',51,'   LOBPREF[ETCH] {n}                        WRA[P] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',52,'   LOGSOURCE [pathname]                     XQUERY {BASEURI text|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',53,'   LONG {80|n}                                ORDERING{UNORDERED|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',54,'   LONGC[HUNKSIZE] {80|n}                     ORDERED|DEFAULT}|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',55,'   MARK[UP] {HTML html_option|CSV csv_option} NODE{BYVALUE|BYREFERENCE|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',56,'     html_option;                             DEFAULT}|CONTEXT text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',57,'       {ON|OFF} [HEAD text] [BODY text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',58,'       [TABLE {ON|OFF}] [ENTMAP {ON|OFF}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',59,'       [SPOOL {ON|OFF}] [PRE[FORMAT] {ON|OFF}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',60,'     csv_option:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',61,'       {ON|OFF} [DELIM[ITER] {c}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',62,'       [QUOTE {ON|OFF}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',63,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',2,' SHOW');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',5,' Shows the value of a SQL*Plus system variable, or the current');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',6,' SQL*Plus environment. SHOW SGA requires a DBA privileged login.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',8,' SHO[W] option');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',10,' where option represents one of the following terms or clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',11,'     system_variable');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',12,'     ALL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',13,'     BTI[TLE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',14,'     CON_ID');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',15,'     CON_NAME');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',16,'     EDITION');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',17,'     ERR[ORS] [{ANALYTIC VIEW | ATTRIBUTE DIMENSION | HIERARCHY | FUNCTION');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',18,'        | PROCEDURE | PACKAGE | PACKAGE BODY | TRIGGER | VIEW | TYPE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',19,'        | TYPE BODY | DIMENSION | JAVA CLASS} [schema.]name]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',20,'     LNO');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',21,'     PARAMETERS [parameter_name]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',22,'     PDBS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',23,'     PNO');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',24,'     RECYC[LEBIN] [original_name]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',25,'     REL[EASE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',26,'     REPF[OOTER]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',27,'     REPH[EADER]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',28,'     SGA');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',29,'     SPOO[L]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',30,'     SPPARAMETERS [parameter_name]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',31,'     SQLCODE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',32,'     TTI[TLE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',33,'     USER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',34,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',2,' SHUTDOWN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',3,' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',5,' Shuts down a currently running Oracle Database instance, optionally');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',6,' closing and dismounting a database.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',8,' SHUTDOWN [ABORT|IMMEDIATE|NORMAL|TRANSACTIONAL [LOCAL]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',2,' SPOOL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',5,' Stores query results in a file, or optionally sends the file to a printer.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',7,' SPO[OL] [file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]] | OFF | OUT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',2,' SQLPLUS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',5,' Starts SQL*Plus from the operating system prompt.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',7,' SQLPLUS [ [option] [logon|/NOLOG] [start] ]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',9,' where option has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',10,'     -H[ELP]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',11,'     | -V[ERSION]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',12,'     | [[-C[OMPATIBILITY] x.y[.z]] [-L[OGON]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',13,'        [-M[ARKUP] markup_option] [-NOLOGINTIME] [-R[ESTRICT] {1|2|3}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',14,'	[-S[ILENT]] ]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',15,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',16,' and where markup_option has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',17,'     {HTML html_options|CSV csv_options}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',18,'     See SET MARKUP command for detailed HTML and CSV options');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',19,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',20,' and where logon has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',21,'     {username[/password][@connect_identifier] | /}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',22,'     [AS {SYSASM|SYSBACKUP|SYSDBA|SYSDG|SYSOPER|SYSRAC|SYSKM}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',23,'     [edition=value]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',24,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',25,' and where start has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',26,'     @{url|filename[.ext]} [arg ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',27,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',2,' START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',5,' Runs the SQL*Plus statements in the specified script. The script can be');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',6,' called from the local file system or a web server.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',8,' STA[RT] {url|file_name[.ext]} [arg ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',10,' where url supports HTTP and FTP protocols in the form:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',12,'    http://host.domain/script.sql');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',13,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',2,' STARTUP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',5,' Starts an Oracle instance with several options, including mounting,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',6,' and opening a database.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',8,' STARTUP db_options | cdb_options | upgrade_options');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',10,' where db_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',11,'    [FORCE] [RESTRICT] [PFILE=filename] [QUIET] [ MOUNT [dbname] |');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',12,'    [ OPEN [open_db_options] [dbname] ] |');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',13,'    NOMOUNT ]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',15,'    where open_db_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',16,'       READ {ONLY | WRITE [RECOVER]} | RECOVER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',17,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',18,' where cdb_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',19,'    root_connection_options | pdb_connection_options');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',20,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',21,' where root_connection_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',22,'    PLUGGABLE DATABASE pdbname');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',23,'    [FORCE] [RESTRICT] | [OPEN [open_pdb_options]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',24,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',25,' where pdb_connection_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',26,'    [FORCE] [RESTRICT] | [OPEN [open_pdb_options]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',27,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',28,'    where open_pdb_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',29,'       READ WRITE | READ ONLY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',30,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',31,' and where upgrade_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',32,'    [PFILE=filename] {UPGRADE | DOWNGRADE} [QUIET]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',33,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',2,' STORE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',5,' Saves attributes of the current SQL*Plus environment in a script.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',7,' STORE {SET} file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',2,' TIMING');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',5,' Records timing data for an elapsed time period, lists the current');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',6,' timer''s name and timing data, or lists the number of active timers.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',8,' TIMI[NG] [START text|SHOW|STOP]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',2,' TTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',5,' Places and formats a title at the top of each report page.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',6,' Enter TTITLE with no clause to list its current definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',8,' The old form of TTITLE is used if only a single word or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',9,' a string in quotes follows the TTITLE command.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',11,' TTI[TLE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',13,' where printspec represents one or more of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',15,'     COL n          LE[FT]        BOLD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',16,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',17,'     TAB n          R[IGHT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',18,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',2,' UNDEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',3,' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',5,' Deletes one or more substitution variables that you defined either');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',6,' explicitly (with the DEFINE command), or implicitly (with a START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',7,' command argument).');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',9,' UNDEF[INE] variable ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',2,' VARIABLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',3,' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',5,' Declares a bind variable that can be referenced in PL/SQL, or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',6,' lists the current display characteristics for a single variable');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',7,' or all variables.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',9,' VAR[IABLE] [<variable> [type][=value]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',11,' where type represents one of the following:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',13,'     NUMBER         CHAR          CHAR (n [CHAR|BYTE])');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',14,'     NCHAR          NCHAR (n)     VARCHAR2 (n [CHAR|BYTE])');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',15,'     NVARCHAR2 (n)  CLOB          NCLOB');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',16,'     REFCURSOR      BINARY_FLOAT  BINARY_DOUBLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',17,'     BOOLEAN        VECTOR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',18,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',19,' One can assign value to a variable for input with the new syntax');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',20,' Example:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',21,'   VARIABLE tmp_var VAHRCHAR2(10)=Smith');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',22,'   or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',23,'   VARIABLE tmp_var VAHRCHAR2(10)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',24,'   VARIABLE tmp_var=Smith');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',25,'   EXECUTE DBMS_OUTPUT.PUT_LINE(:tmp_var)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',26,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',2,' WHENEVER OSERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',3,' ----------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',5,' Performs the specified action (exits SQL*Plus by default) if an');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',6,' operating system error occurs (such as a file writing error).');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',8,' WHENEVER OSERROR {EXIT [SUCCESS|FAILURE|n|variable|:BindVariable]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',9,'                   [COMMIT|ROLLBACK] | CONTINUE [COMMIT|ROLLBACK|NONE]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',2,' WHENEVER SQLERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',3,' -----------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',5,' Performs the specified action (exits SQL*Plus by default) if a');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',6,' SQL command or PL/SQL block generates an error.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',8,' WHENEVER SQLERROR {EXIT [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',9,'                    [COMMIT|ROLLBACK] | CONTINUE [COMMIT|ROLLBACK|NONE]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',2,' XQUERY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',5,' Performs an XQuery 1.0 query on a specified database. Attempting to use');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',6,' XQUERY on a database earlier than Oracle Database 10g (Release 2) generates');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',7,' an error.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',9,' XQUERY xquery_statement');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',2,' Help is available on the following topics:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',3,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',11,'/');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',12,'@');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',13,'@@');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',14,'ACCEPT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',15,'APPEND');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',16,'ARCHIVE LOG');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',17,'ATTRIBUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',18,'BREAK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',19,'BTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',20,'CHANGE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',21,'CLEAR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',22,'COLUMN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',23,'COMPUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',24,'CONNECT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',25,'COPY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',26,'DEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',27,'DEL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',28,'DESCRIBE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',29,'DISCONNECT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',30,'EDIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',31,'EXECUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',32,'EXIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',33,'GET');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',34,'HELP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',35,'HISTORY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',36,'HOST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',37,'INDEX');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',38,'INPUT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',39,'LIST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',40,'MENU');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',41,'PASSWORD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',42,'PAUSE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',43,'PRINT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',44,'PROMPT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',45,'QUIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',46,'RECOVER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',47,'REMARK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',48,'REPFOOTER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',49,'REPHEADER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',50,'RESERVED WORDS (PL/SQL)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',51,'RESERVED WORDS (SQL)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',52,'RUN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',53,'SAVE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',54,'SET');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',55,'SHOW');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',56,'SHUTDOWN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',57,'SPOOL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',58,'SQLPLUS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',59,'START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',60,'STARTUP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',61,'STORE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',62,'TIMING');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',63,'TOPICS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',64,'TTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',65,'UNDEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',66,'VARIABLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',67,'WHENEVER OSERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',68,'WHENEVER SQLERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',69,'XQUERY');
REM INSERTING into SYSTEM.LOANS
SET DEFINE OFF;
Insert into SYSTEM.LOANS (LOAN_ID,LOAN_TYPE,LOAN_AMOUNT,LOAN_TERM,INTEREST_RATE,START_DATE,LOAN_STATUS,REMAINING_BALANCE,END_DATE,GUARANTOR_ID,IS_DELETED,CUSTOMER_ID) values (1,'Home Loan',95000,20,5,to_date('01-JAN-20','DD-MON-RR'),'Active',90000,to_date('01-JAN-40','DD-MON-RR'),1,'N',3);
Insert into SYSTEM.LOANS (LOAN_ID,LOAN_TYPE,LOAN_AMOUNT,LOAN_TERM,INTEREST_RATE,START_DATE,LOAN_STATUS,REMAINING_BALANCE,END_DATE,GUARANTOR_ID,IS_DELETED,CUSTOMER_ID) values (2,'Car Loan',25000,5,3.5,to_date('01-JAN-21','DD-MON-RR'),'Active',20000,to_date('01-JAN-26','DD-MON-RR'),1,'N',3);
Insert into SYSTEM.LOANS (LOAN_ID,LOAN_TYPE,LOAN_AMOUNT,LOAN_TERM,INTEREST_RATE,START_DATE,LOAN_STATUS,REMAINING_BALANCE,END_DATE,GUARANTOR_ID,IS_DELETED,CUSTOMER_ID) values (3,'Home Loan',100000,20,5,to_date('01-JAN-20','DD-MON-RR'),'Active',95000,to_date('01-JAN-40','DD-MON-RR'),1,'N',4);
Insert into SYSTEM.LOANS (LOAN_ID,LOAN_TYPE,LOAN_AMOUNT,LOAN_TERM,INTEREST_RATE,START_DATE,LOAN_STATUS,REMAINING_BALANCE,END_DATE,GUARANTOR_ID,IS_DELETED,CUSTOMER_ID) values (4,'Car Loan',25000,5,3.5,to_date('01-JAN-21','DD-MON-RR'),'Active',20000,to_date('01-JAN-26','DD-MON-RR'),1,'N',2);
REM INSERTING into SYSTEM.LOAN_GUARANTORS
SET DEFINE OFF;
Insert into SYSTEM.LOAN_GUARANTORS (GUARANTOR_ID,GUARANTOR_STATUS) values (1,'Active');
Insert into SYSTEM.LOAN_GUARANTORS (GUARANTOR_ID,GUARANTOR_STATUS) values (2,'Inactive');
REM INSERTING into SYSTEM.LOAN_PAYMENTS
SET DEFINE OFF;
Insert into SYSTEM.LOAN_PAYMENTS (PAYMENT_ID,PAYMENT_AMOUNT,PAYMENT_DATE,PAYMENT_MODE,LOAN_ID,IS_DELETED) values (1,5500,to_date('10-MAY-24','DD-MON-RR'),'Online',1,'Y');
Insert into SYSTEM.LOAN_PAYMENTS (PAYMENT_ID,PAYMENT_AMOUNT,PAYMENT_DATE,PAYMENT_MODE,LOAN_ID,IS_DELETED) values (2,3500,to_date('10-AUG-24','DD-MON-RR'),'Card',2,'N');
Insert into SYSTEM.LOAN_PAYMENTS (PAYMENT_ID,PAYMENT_AMOUNT,PAYMENT_DATE,PAYMENT_MODE,LOAN_ID,IS_DELETED) values (3,5000,to_date('10-MAY-24','DD-MON-RR'),'Online',1,'N');
Insert into SYSTEM.LOAN_PAYMENTS (PAYMENT_ID,PAYMENT_AMOUNT,PAYMENT_DATE,PAYMENT_MODE,LOAN_ID,IS_DELETED) values (4,3000,to_date('10-AUG-24','DD-MON-RR'),'Card',2,'N');
REM INSERTING into SYSTEM.MVIEW$_ADV_AJG
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_BASETABLE
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_CLIQUE
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_ELIGIBLE
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_EXCEPTIONS
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_FILTER
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_FILTERINSTANCE
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_FJG
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_GC
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_INFO
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_JOURNAL
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_LEVEL
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_LOG
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_OUTPUT
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_PARAMETERS
SET DEFINE OFF;
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_EXACT_DELETE',0,null,null,0.02);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_EXACT_BUCKETS',0,null,null,1000);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_PARTIAL_DELETE',0,null,null,0.02);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_PARTIAL_BUCKETS',0,null,null,1000);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_AJG_DELETE',0,null,null,0.02);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_AJG_BUCKETS',0,null,null,100);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_FJG_DELETE',0,null,null,0.02);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_GC_DELETE',0,null,null,0.02);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_MEA_DELETE',0,null,null,0.05);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_TRACE_LEVEL',0,null,null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_REWRITE_NRF',0,null,null,10);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.console_output',1,'True',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.wip_interval',0,null,null,250);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.commit_interval',0,null,null,100);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.sql_exclusions',1,'SYSTEM.%',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.pretty',1,'True',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.lcase_names',1,'True',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.lcase_keywords',1,'False',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.add_alias',1,'False',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.ignore_ambig',1,'True',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.fixup_alias',1,'False',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.optimize',1,'True',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.ignore_columns',1,'True',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.fixup_schema',1,'False',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.remove_optional_keywords',1,'False',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.dump_tree',1,'True',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.debug_flags',1,null,null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.datetime_mask',1,'dd/MM/yyyy HH:mm',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_MIN_CLQ_MF_RATIO',0,null,null,0.05);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_MIN_SUM_BC_RATIO',0,null,null,0.05);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_MAX_GCS',0,null,null,1000);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_PCT_COMPL_POLL_INTL',0,null,null,10);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_TRACE_LEVEL',0,null,null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_AEP_MAX_LAT_SIZE',0,null,null,1024);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_AEP_MAX_FACT_TABLES',0,null,null,10);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color1',1,'#FFFFDE',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color2',1,'#336699',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color3',1,'#FFCC60',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color4',1,'white',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.include_unused',1,'False',null,0);
REM INSERTING into SYSTEM.MVIEW$_ADV_PLAN
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_PRETTY
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_ROLLUP
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_SQLDEPEND
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_TEMP
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_WORKLOAD
SET DEFINE OFF;
REM INSERTING into SYSTEM.OL$
SET DEFINE OFF;
REM INSERTING into SYSTEM.OL$HINTS
SET DEFINE OFF;
REM INSERTING into SYSTEM.OL$NODES
SET DEFINE OFF;
REM INSERTING into SYSTEM.REDO_DB
SET DEFINE OFF;
Insert into SYSTEM.REDO_DB (DBID,GLOBAL_DBNAME,DBUNAME,VERSION,THREAD#,RESETLOGS_SCN_BAS,RESETLOGS_SCN_WRP,RESETLOGS_TIME,PRESETLOGS_SCN_BAS,PRESETLOGS_SCN_WRP,PRESETLOGS_TIME,SEQNO_RCV_CUR,SEQNO_RCV_LO,SEQNO_RCV_HI,SEQNO_DONE_CUR,SEQNO_DONE_LO,SEQNO_DONE_HI,GAP_SEQNO,GAP_RET,GAP_DONE,APPLY_SEQNO,APPLY_DONE,PURGE_DONE,HAS_CHILD,ERROR1,STATUS,CREATE_DATE,TS1,TS2,GAP_NEXT_SCN,GAP_NEXT_TIME,CURSCN_TIME,RESETLOGS_SCN,PRESETLOGS_SCN,GAP_RET2,CURLOG,ENDIAN,ENQIDX,SPARE4,SPARE5,SPARE6,SPARE7,TS3,CURBLKNO,SPARE8,SPARE9,SPARE10,SPARE11,SPARE12,TENANT_KEY) values (0,null,null,null,0,0,0,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,null,0,0,0,0,0,0,0,0,0,0,0,0,null,null,null,0,0,0,0,0,0,0,0);
REM INSERTING into SYSTEM.REDO_LOG
SET DEFINE OFF;
REM INSERTING into SYSTEM.SCHEDULER_JOB_ARGS_TBL
SET DEFINE OFF;
REM INSERTING into SYSTEM.SCHEDULER_PROGRAM_ARGS_TBL
SET DEFINE OFF;
REM INSERTING into SYSTEM.SQLPLUS_PRODUCT_PROFILE
SET DEFINE OFF;
REM INSERTING into SYSTEM.TRANSACTIONS
SET DEFINE OFF;
Insert into SYSTEM.TRANSACTIONS (TRANSACTION_ID,TRANSACTION_TYPE,AMOUNT,TRANSACTION_DATE,TRANSACTION_MODE,ACCOUNT_ID) values (1,'Credit',500,to_date('25-SEP-24','DD-MON-RR'),'Online',1);
Insert into SYSTEM.TRANSACTIONS (TRANSACTION_ID,TRANSACTION_TYPE,AMOUNT,TRANSACTION_DATE,TRANSACTION_MODE,ACCOUNT_ID) values (2,'Debit',250,to_date('01-OCT-24','DD-MON-RR'),'Cash',2);
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_PARAMETERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_PARAMETERS_PK" ON "SYSTEM"."MVIEW$_ADV_PARAMETERS" ("PARAMETER_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index OL$HNT_NUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."OL$HNT_NUM" ON "SYSTEM"."OL$HINTS" ("OL_NAME", "HINT#") ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_BASETABLE_IDX_01
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."MVIEW$_ADV_BASETABLE_IDX_01" ON "SYSTEM"."MVIEW$_ADV_BASETABLE" ("QUERYID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_WORKLOAD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_WORKLOAD_PK" ON "SYSTEM"."MVIEW$_ADV_WORKLOAD" ("QUERYID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_LEVEL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_LEVEL_PK" ON "SYSTEM"."MVIEW$_ADV_LEVEL" ("RUNID#", "LEVELID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_PRETTY_IDX_01
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."MVIEW$_ADV_PRETTY_IDX_01" ON "SYSTEM"."MVIEW$_ADV_PRETTY" ("QUERYID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index HELP_TOPIC_SEQ
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."HELP_TOPIC_SEQ" ON "SYSTEM"."HELP" ("TOPIC", "SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 16384 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_TEMP_IDX_01
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."MVIEW$_ADV_TEMP_IDX_01" ON "SYSTEM"."MVIEW$_ADV_TEMP" ("ID#", "SEQ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_ROLLUP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_ROLLUP_PK" ON "SYSTEM"."MVIEW$_ADV_ROLLUP" ("RUNID#", "CLEVELID#", "PLEVELID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_SQLDEPEND_IDX_01
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."MVIEW$_ADV_SQLDEPEND_IDX_01" ON "SYSTEM"."MVIEW$_ADV_SQLDEPEND" ("COLLECTIONID#", "FROM_ADDRESS", "FROM_HASH", "INST_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_FILTER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_FILTER_PK" ON "SYSTEM"."MVIEW$_ADV_FILTER" ("FILTERID#", "SUBFILTERNUM#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_CLIQUE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_CLIQUE_PK" ON "SYSTEM"."MVIEW$_ADV_CLIQUE" ("CLIQUEID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index OL$NAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."OL$NAME" ON "SYSTEM"."OL$" ("OL_NAME") ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_WORKLOAD_IDX_01
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."MVIEW$_ADV_WORKLOAD_IDX_01" ON "SYSTEM"."MVIEW$_ADV_WORKLOAD" ("COLLECTIONID#", "QUERYID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_AJG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_AJG_PK" ON "SYSTEM"."MVIEW$_ADV_AJG" ("AJGID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_GC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_GC_PK" ON "SYSTEM"."MVIEW$_ADV_GC" ("GCID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index OL$SIGNATURE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."OL$SIGNATURE" ON "SYSTEM"."OL$" ("SIGNATURE", "CATEGORY") ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_OUTPUT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_OUTPUT_PK" ON "SYSTEM"."MVIEW$_ADV_OUTPUT" ("RUNID#", "RANK#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index REDO_DB_IDX
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."REDO_DB_IDX" ON "SYSTEM"."REDO_DB" ("TENANT_KEY", "DBID", "THREAD#", "RESETLOGS_SCN", "RESETLOGS_TIME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index REDO_LOG_IDX
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."REDO_LOG_IDX" ON "SYSTEM"."REDO_LOG" ("TENANT_KEY", "DBID", "THREAD#", "RESETLOGS_SCN", "RESETLOGS_TIME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_FJG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_FJG_PK" ON "SYSTEM"."MVIEW$_ADV_FJG" ("FJGID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_LOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_LOG_PK" ON "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_JOURNAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_JOURNAL_PK" ON "SYSTEM"."MVIEW$_ADV_JOURNAL" ("RUNID#", "SEQ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_INFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_INFO_PK" ON "SYSTEM"."MVIEW$_ADV_INFO" ("RUNID#", "SEQ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_ELIGIBLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_ELIGIBLE_PK" ON "SYSTEM"."MVIEW$_ADV_ELIGIBLE" ("SUMOBJN#", "RUNID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger CHECK_CARD_EXPIRY_DATE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."CHECK_CARD_EXPIRY_DATE" 
BEFORE INSERT OR UPDATE ON cards
FOR EACH ROW
BEGIN
    IF :NEW.expiry_date <= SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20001, 'Expiry date must be in the future.');
    END IF;
END;
/
ALTER TRIGGER "SYSTEM"."CHECK_CARD_EXPIRY_DATE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CHECK_CUSTOMER_DOB
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."CHECK_CUSTOMER_DOB" 
BEFORE INSERT OR UPDATE ON customers
FOR EACH ROW
BEGIN
    IF :NEW.dob >= SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20002, 'Date of Birth must be in the past.');
    END IF;
END;
/
ALTER TRIGGER "SYSTEM"."CHECK_CUSTOMER_DOB" ENABLE;
--------------------------------------------------------
--  DDL for Procedure BRANCH_PERFORMANCE_REPORTS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."BRANCH_PERFORMANCE_REPORTS" AS
BEGIN
    FOR rec IN (
        SELECT b.branch_id, b.location, COUNT(c.customer_id) AS total_customers, SUM(l.loan_amount) AS total_loans
        FROM branches b
        JOIN customers c ON b.branch_id = c.branch_id
        LEFT JOIN loans l ON c.customer_id = l.customer_id
        GROUP BY b.branch_id, b.location
        HAVING SUM(l.loan_amount) > 0
        ORDER BY total_loans DESC
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Branch ID: ' || rec.branch_id || ', Location: ' || rec.location || ', Total Customers: ' || rec.total_customers || ', Total Loan Amount: ' || rec.total_loans);
    END LOOP;
END branch_performance_reports;

/
--------------------------------------------------------
--  DDL for Procedure CREATE_ACCOUNT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CREATE_ACCOUNT" (
    p_AccountID IN NUMBER,
    p_AccountType IN VARCHAR2,
    p_Balance IN NUMBER,
    p_OpenDate IN DATE,
    p_InterestRate IN NUMBER,
    p_AccountStatus IN VARCHAR2,
    p_customerID IN NUMBER,
    p_BranchID IN NUMBER
) AS 
BEGIN
    INSERT INTO accounts (account_id, account_type, balance, open_date, interest_rate, account_status, customer_id, branch_id)
    VALUES (p_AccountID, p_AccountType, p_Balance, p_OpenDate, p_InterestRate, p_AccountStatus, p_customerID, p_BranchID);
    COMMIT;  -- Commit the transaction
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error creating account: ' || SQLERRM);
END create_account;

/
--------------------------------------------------------
--  DDL for Procedure CREATE_BRANCH
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CREATE_BRANCH" (
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

/
--------------------------------------------------------
--  DDL for Procedure CREATE_BRANCHES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CREATE_BRANCHES" (
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
END create_branches;

/
--------------------------------------------------------
--  DDL for Procedure CREATE_CARD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CREATE_CARD" (
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

/
--------------------------------------------------------
--  DDL for Procedure CREATE_CARDS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CREATE_CARDS" (
    p_Card_ID IN NUMBER,
    p_Account_ID IN NUMBER,
    p_Status IN VARCHAR2,
    p_Expiry_Date IN DATE
) AS 
BEGIN
    INSERT INTO cards (card_id, account_id, status, expiry_date)
    VALUES (p_Card_ID, p_Account_ID, p_Status, p_Expiry_Date);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error issuing card: ' || SQLERRM);
END create_cards;

/
--------------------------------------------------------
--  DDL for Procedure CREATE_CUSTOMER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CREATE_CUSTOMER" (
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

/
--------------------------------------------------------
--  DDL for Procedure CREATE_EMPLOYEE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CREATE_EMPLOYEE" (
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

/
--------------------------------------------------------
--  DDL for Procedure CREATE_EMPLOYEES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CREATE_EMPLOYEES" (
    p_Employee_ID IN NUMBER,
    p_Name IN VARCHAR2,
    p_Position IN VARCHAR2,
    p_Salary IN NUMBER,
    p_Branch_ID IN NUMBER
) AS 
BEGIN
    INSERT INTO employees (employee_id, employee_name, position, salary, branch_id)
    VALUES (p_Employee_ID, p_Name, p_Position, p_Salary, p_Branch_ID);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error creating employee: ' || SQLERRM);
END create_employees;

/
--------------------------------------------------------
--  DDL for Procedure CREATE_GUARANTOR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CREATE_GUARANTOR" (
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

/
--------------------------------------------------------
--  DDL for Procedure CREATE_LOAN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CREATE_LOAN" (
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

/
--------------------------------------------------------
--  DDL for Procedure CREATE_LOAN_PAYMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CREATE_LOAN_PAYMENT" (
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

/
--------------------------------------------------------
--  DDL for Procedure CREATE_TRANSACTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CREATE_TRANSACTION" (
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

/
--------------------------------------------------------
--  DDL for Procedure CUSTOMER_LOAN_SUMMARY_REPORTS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CUSTOMER_LOAN_SUMMARY_REPORTS" AS
    CURSOR customer_loan_cursor IS
        SELECT c.customer_id, c.name, COUNT(l.loan_id) AS total_loans, SUM(l.loan_amount) AS total_loan_amount
        FROM customers c
        LEFT JOIN loans l ON c.customer_id = l.customer_id
        GROUP BY c.customer_id, c.name
        HAVING SUM(l.loan_amount) > 0
        ORDER BY total_loan_amount DESC;
    
    rec customer_loan_cursor%ROWTYPE;
BEGIN
    FOR rec IN customer_loan_cursor LOOP
        DBMS_OUTPUT.PUT_LINE('Customer ID: ' || rec.customer_id || ', Name: ' || rec.name || ', Total Loans: ' || rec.total_loans || ', Total Loan Amount: ' || rec.total_loan_amount);
    END LOOP;
END customer_loan_summary_reports;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_ACCOUNT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."DELETE_ACCOUNT" (
    p_AccountID IN NUMBER
) AS 
BEGIN
    UPDATE accounts
    SET account_status = 'Closed'
    WHERE account_id = p_AccountID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'Account not found for closure.');
    END IF;

    COMMIT;  -- Commit the transaction
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error closing account: ' || SQLERRM);
END delete_account;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_BRANCH
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."DELETE_BRANCH" (
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

/
--------------------------------------------------------
--  DDL for Procedure DELETE_BRANCHES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."DELETE_BRANCHES" (
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
END delete_branches;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_CARD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."DELETE_CARD" (
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

/
--------------------------------------------------------
--  DDL for Procedure DELETE_CARDS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."DELETE_CARDS" (
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
END delete_cards;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_CUSTOMER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."DELETE_CUSTOMER" (
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

/
--------------------------------------------------------
--  DDL for Procedure DELETE_EMPLOYEE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."DELETE_EMPLOYEE" (
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

/
--------------------------------------------------------
--  DDL for Procedure DELETE_EMPLOYEES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."DELETE_EMPLOYEES" (
    p_Employee_ID IN NUMBER
) AS 
BEGIN
    UPDATE employees
    SET is_deleted = '1'
    WHERE employee_id = p_Employee_ID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Employee not found for deletion.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error deleting employee: ' || SQLERRM);
END delete_employees;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_GUARANTOR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."DELETE_GUARANTOR" (
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

/
--------------------------------------------------------
--  DDL for Procedure DELETE_LOAN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."DELETE_LOAN" (
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

/
--------------------------------------------------------
--  DDL for Procedure DELETE_LOAN_PAYMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."DELETE_LOAN_PAYMENT" (
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

/
--------------------------------------------------------
--  DDL for Procedure DELETE_TRANSACTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."DELETE_TRANSACTION" (
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

/
--------------------------------------------------------
--  DDL for Procedure EMPLOYEE_SALARY_REPORTS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."EMPLOYEE_SALARY_REPORTS" AS
BEGIN
    FOR rec IN (
        SELECT e.position, COUNT(e.employee_id) AS total_employees, AVG(e.salary) AS avg_salary,
               CASE 
                   WHEN AVG(e.salary) < 5000 THEN 'Low Salary'
                   WHEN AVG(e.salary) BETWEEN 5000 AND 10000 THEN 'Medium Salary'
                   ELSE 'High Salary'
               END AS salary_category
        FROM employees e
        WHERE e.salary IS NOT NULL
        GROUP BY e.position
        ORDER BY avg_salary DESC
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Position: ' || rec.position || ', Total Employees: ' || rec.total_employees || ', Average Salary: ' || rec.avg_salary || ', Salary Category: ' || rec.salary_category);
    END LOOP;
END employee_salary_reports;

/
--------------------------------------------------------
--  DDL for Procedure HIGH_BALANCE_ACCOUNTS_REPORTS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."HIGH_BALANCE_ACCOUNTS_REPORTS" (
    p_threshold IN NUMBER
) AS
BEGIN
    FOR rec IN (
        SELECT a.account_id, a.balance, a.account_type
        FROM accounts a
        WHERE a.balance > p_threshold
        AND a.account_status = 'Active'
        ORDER BY a.balance DESC
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Account ID: ' || rec.account_id || ', Account Type: ' || rec.account_type || ', Balance: ' || rec.balance);
    END LOOP;
END high_balance_accounts_reports;

/
--------------------------------------------------------
--  DDL for Procedure LOAN_PAYMENTS_REPORTS_BY_MONTH
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."LOAN_PAYMENTS_REPORTS_BY_MONTH" AS
BEGIN
    FOR rec IN (
        SELECT TO_CHAR(p.payment_date, 'YYYY-MM') AS payment_month, SUM(p.payment_amount) AS total_payments
        FROM loan_payments p
        WHERE p.payment_date >= ADD_MONTHS(SYSDATE, -12)  -- Last 12 months
        GROUP BY TO_CHAR(p.payment_date, 'YYYY-MM')
        HAVING SUM(p.payment_amount) > 0
        ORDER BY payment_month DESC
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Month: ' || rec.payment_month || ', Total Payments: ' || rec.total_payments);
    END LOOP;
END loan_payments_reports_by_month;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_ACCOUNT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."UPDATE_ACCOUNT" (
    p_AccountID IN NUMBER,
    p_AccountType IN VARCHAR2,
    p_Balance IN NUMBER,
    p_OpenDate IN DATE,
    p_InterestRate IN NUMBER,
    p_AccountStatus IN VARCHAR2,
    p_customerID IN NUMBER,
    p_BranchID IN NUMBER
) AS 
BEGIN
    UPDATE accounts
    SET account_type = p_AccountType,
        balance = p_Balance,
        open_date = p_OpenDate,
        interest_rate = p_InterestRate,
        account_status = p_AccountStatus,
        customer_id = p_customerID,
        branch_id = p_BranchID
    WHERE account_id = p_AccountID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Account not found for update.');
    END IF;

    COMMIT;  -- Commit the transaction
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error updating account: ' || SQLERRM);
END update_account;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_BRANCH
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."UPDATE_BRANCH" (
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

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_BRANCHES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."UPDATE_BRANCHES" (
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
END update_branches;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_CARD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."UPDATE_CARD" (
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

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_CARDS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."UPDATE_CARDS" (
    p_Card_ID IN NUMBER,
    p_Status IN VARCHAR2,
    p_Expiry_Date IN DATE
) AS 
BEGIN
    UPDATE cards
    SET status = p_Status,
        expiry_date = p_Expiry_Date
    WHERE card_id = p_Card_ID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Card not found for update.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error updating card: ' || SQLERRM);
END update_cards;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_CUSTOMER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."UPDATE_CUSTOMER" (
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

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_EMPLOYEE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."UPDATE_EMPLOYEE" (
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

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_EMPLOYEES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."UPDATE_EMPLOYEES" (
    p_Employee_ID IN NUMBER,
    p_Name IN VARCHAR2,
    p_Position IN VARCHAR2,
    p_Salary IN NUMBER,
    p_Branch_ID IN NUMBER
) AS 
BEGIN
    UPDATE employees
    SET employee_name = p_Name,
        position = p_Position,
        salary = p_Salary,
        branch_id = p_Branch_ID
    WHERE employee_id = p_Employee_ID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Employee not found for update.');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20000, 'Error updating employee: ' || SQLERRM);
END update_employees;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_GUARANTOR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."UPDATE_GUARANTOR" (
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

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_LOAN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."UPDATE_LOAN" (
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

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_LOAN_PAYMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."UPDATE_LOAN_PAYMENT" (
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

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_TRANSACTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."UPDATE_TRANSACTION" (
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

/
--------------------------------------------------------
--  DDL for Function READ_ACCOUNT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."READ_ACCOUNT" (
    p_AccountID IN NUMBER
) RETURN accounts%ROWTYPE AS
    v_account accounts%ROWTYPE;
BEGIN
    SELECT *
    INTO v_account
    FROM accounts
    WHERE account_id = p_AccountID;

    RETURN v_account;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'Account not found.');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'Error reading account: ' || SQLERRM);
END read_account;

/
--------------------------------------------------------
--  DDL for Function READ_BRANCH
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."READ_BRANCH" (
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

/
--------------------------------------------------------
--  DDL for Function READ_BRANCHES
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."READ_BRANCHES" (
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
END read_branches;

/
--------------------------------------------------------
--  DDL for Function READ_CARD
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."READ_CARD" (
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

/
--------------------------------------------------------
--  DDL for Function READ_CARDS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."READ_CARDS" (
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
END read_cards;

/
--------------------------------------------------------
--  DDL for Function READ_CUSTOMER
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."READ_CUSTOMER" (
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

/
--------------------------------------------------------
--  DDL for Function READ_EMPLOYEE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."READ_EMPLOYEE" (
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

/
--------------------------------------------------------
--  DDL for Function READ_EMPLOYEES
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."READ_EMPLOYEES" (
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
END read_employees;

/
--------------------------------------------------------
--  DDL for Function READ_GUARANTOR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."READ_GUARANTOR" (
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

/
--------------------------------------------------------
--  DDL for Function READ_LOAN
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."READ_LOAN" (
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

/
--------------------------------------------------------
--  DDL for Function READ_LOAN_PAYMENT_HISTORY
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."READ_LOAN_PAYMENT_HISTORY" (
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

/
--------------------------------------------------------
--  DDL for Function READ_TRANSACTION
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."READ_TRANSACTION" (
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

/
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_WORKLOAD
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" MODIFY ("QUERYID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" MODIFY ("COLLECTIONID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" MODIFY ("COLLECTTIME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" MODIFY ("UNAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" MODIFY ("SQL_TEXT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" MODIFY ("SQL_TEXTLEN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" ADD CONSTRAINT "MVIEW$_ADV_WORKLOAD_PK" PRIMARY KEY ("QUERYID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_CLIQUE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("CLIQUEID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("CLIQUEDESLEN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("CLIQUEDES" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("HASHVALUE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("FREQUENCY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("BYTECOST" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("ROWSIZE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("NUMROWS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" ADD CONSTRAINT "MVIEW$_ADV_CLIQUE_PK" PRIMARY KEY ("CLIQUEID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOANS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOANS" MODIFY ("CUSTOMER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOANS" MODIFY ("LOAN_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOANS" MODIFY ("LOAN_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOANS" MODIFY ("LOAN_TERM" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOANS" MODIFY ("INTEREST_RATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOANS" MODIFY ("START_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOANS" MODIFY ("LOAN_STATUS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOANS" MODIFY ("REMAINING_BALANCE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOANS" ADD CHECK (loan_amount > 0) ENABLE;
  ALTER TABLE "SYSTEM"."LOANS" ADD CHECK (loan_term > 0) ENABLE;
  ALTER TABLE "SYSTEM"."LOANS" ADD CHECK (interest_rate >= 0) ENABLE;
  ALTER TABLE "SYSTEM"."LOANS" ADD CHECK (loan_status IN ('Active', 'Closed', 'Defaulted')) ENABLE;
  ALTER TABLE "SYSTEM"."LOANS" ADD CHECK (remaining_balance >= 0) ENABLE;
  ALTER TABLE "SYSTEM"."LOANS" ADD CHECK (is_deleted IN ('Y', 'N')) ENABLE;
  ALTER TABLE "SYSTEM"."LOANS" ADD PRIMARY KEY ("LOAN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_OUTPUT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" MODIFY ("OUTPUT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" MODIFY ("BENEFIT_TO_COST_RATIO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" ADD CONSTRAINT "MVIEW$_ADV_OUTPUT_PK" PRIMARY KEY ("RUNID#", "RANK#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_LEVEL
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" MODIFY ("LEVELID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" MODIFY ("TBLOBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" MODIFY ("COLUMNLIST" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" ADD CONSTRAINT "MVIEW$_ADV_LEVEL_PK" PRIMARY KEY ("RUNID#", "LEVELID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BRANCHES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."BRANCHES" MODIFY ("BRANCH_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."BRANCHES" MODIFY ("LOCATION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."BRANCHES" MODIFY ("CONTACT_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."BRANCHES" ADD CHECK (is_deleted IN ('Y', 'N')) ENABLE;
  ALTER TABLE "SYSTEM"."BRANCHES" ADD PRIMARY KEY ("BRANCH_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REDO_DB
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."REDO_DB" MODIFY ("DBID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_DB" MODIFY ("THREAD#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_DB" MODIFY ("RESETLOGS_TIME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_DB" MODIFY ("PRESETLOGS_TIME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_DB" MODIFY ("RESETLOGS_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_DB" MODIFY ("PRESETLOGS_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_DB" MODIFY ("TENANT_KEY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("CONTACT_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("CUSTOMER_STATUS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("NATIONAL_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOMERS" ADD CHECK (customer_status IN ('Active', 'Inactive')) ENABLE;
  ALTER TABLE "SYSTEM"."CUSTOMERS" ADD CHECK (gender IN ('Male', 'Female', 'Other')) ENABLE;
  ALTER TABLE "SYSTEM"."CUSTOMERS" ADD PRIMARY KEY ("CUSTOMER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."EMPLOYEES" MODIFY ("EMPLOYEE_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."EMPLOYEES" MODIFY ("POSITION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."EMPLOYEES" MODIFY ("BRANCH_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."EMPLOYEES" MODIFY ("HIRE_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."EMPLOYEES" MODIFY ("SALARY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."EMPLOYEES" MODIFY ("DEPARTMENT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."EMPLOYEES" ADD CHECK (salary >= 0) ENABLE;
  ALTER TABLE "SYSTEM"."EMPLOYEES" ADD PRIMARY KEY ("EMPLOYEE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CARDS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CARDS" MODIFY ("CARD_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CARDS" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CARDS" MODIFY ("ACCOUNT_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CARDS" ADD CHECK (card_type IN ('Debit', 'Credit', 'Prepaid')) ENABLE;
  ALTER TABLE "SYSTEM"."CARDS" ADD CHECK (status IN ('Active', 'Blocked', 'Expired')) ENABLE;
  ALTER TABLE "SYSTEM"."CARDS" ADD CHECK (is_deleted IN ('Y', 'N')) ENABLE;
  ALTER TABLE "SYSTEM"."CARDS" ADD PRIMARY KEY ("CARD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRANSACTIONS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TRANSACTIONS" ADD CHECK (transaction_type IN ('Credit', 'Debit')) ENABLE;
  ALTER TABLE "SYSTEM"."TRANSACTIONS" ADD CHECK (amount > 0) ENABLE;
  ALTER TABLE "SYSTEM"."TRANSACTIONS" ADD CHECK (transaction_mode IN ('Online', 'Cash', 'Card')) ENABLE;
  ALTER TABLE "SYSTEM"."TRANSACTIONS" ADD PRIMARY KEY ("TRANSACTION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."TRANSACTIONS" MODIFY ("TRANSACTION_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TRANSACTIONS" MODIFY ("AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TRANSACTIONS" MODIFY ("TRANSACTION_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TRANSACTIONS" MODIFY ("TRANSACTION_MODE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TRANSACTIONS" MODIFY ("ACCOUNT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HELP
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."HELP" MODIFY ("TOPIC" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."HELP" MODIFY ("SEQ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."HELP" ADD CONSTRAINT "HELP_TOPIC_SEQ" PRIMARY KEY ("TOPIC", "SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 16384 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ACCOUNTS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."ACCOUNTS" MODIFY ("ACCOUNT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ACCOUNTS" MODIFY ("BALANCE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ACCOUNTS" MODIFY ("OPEN_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ACCOUNTS" MODIFY ("INTEREST_RATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ACCOUNTS" MODIFY ("ACCOUNT_STATUS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ACCOUNTS" MODIFY ("CUSTOMER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ACCOUNTS" MODIFY ("BRANCH_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ACCOUNTS" ADD CHECK (balance >= 0) ENABLE;
  ALTER TABLE "SYSTEM"."ACCOUNTS" ADD CHECK (interest_rate >= 0) ENABLE;
  ALTER TABLE "SYSTEM"."ACCOUNTS" ADD CHECK (account_status IN ('Active', 'Closed', 'Frozen')) ENABLE;
  ALTER TABLE "SYSTEM"."ACCOUNTS" ADD PRIMARY KEY ("ACCOUNT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REDO_LOG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."REDO_LOG" MODIFY ("DBID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_LOG" MODIFY ("THREAD#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_LOG" MODIFY ("RESETLOGS_TIME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_LOG" MODIFY ("PRESETLOGS_TIME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_LOG" MODIFY ("SEQUENCE#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_LOG" MODIFY ("RESETLOGS_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_LOG" MODIFY ("PRESETLOGS_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_LOG" MODIFY ("TENANT_KEY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOAN_GUARANTORS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOAN_GUARANTORS" MODIFY ("GUARANTOR_STATUS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOAN_GUARANTORS" ADD CHECK (guarantor_status IN ('Active', 'Inactive')) ENABLE;
  ALTER TABLE "SYSTEM"."LOAN_GUARANTORS" ADD PRIMARY KEY ("GUARANTOR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_PARAMETERS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_PARAMETERS" MODIFY ("PARAMETER_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_PARAMETERS" ADD CONSTRAINT "MVIEW$_ADV_PARAMETERS_PK" PRIMARY KEY ("PARAMETER_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SCHEDULER_PROGRAM_ARGS_TBL
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SCHEDULER_PROGRAM_ARGS_TBL" MODIFY ("OWNER" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SCHEDULER_PROGRAM_ARGS_TBL" MODIFY ("PROGRAM_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SCHEDULER_PROGRAM_ARGS_TBL" MODIFY ("ARGUMENT_POSITION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SQLPLUS_PRODUCT_PROFILE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SQLPLUS_PRODUCT_PROFILE" MODIFY ("PRODUCT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_FILTER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTER" MODIFY ("FILTERID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTER" MODIFY ("SUBFILTERNUM#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTER" MODIFY ("SUBFILTERTYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTER" ADD CONSTRAINT "MVIEW$_ADV_FILTER_PK" PRIMARY KEY ("FILTERID#", "SUBFILTERNUM#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_INFO
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" MODIFY ("SEQ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" MODIFY ("INFOLEN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" ADD CONSTRAINT "MVIEW$_ADV_INFO_PK" PRIMARY KEY ("RUNID#", "SEQ#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_FJG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" MODIFY ("FJGID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" MODIFY ("AJGID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" MODIFY ("FJGDESLEN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" MODIFY ("FJGDES" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" MODIFY ("HASHVALUE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" ADD CONSTRAINT "MVIEW$_ADV_FJG_PK" PRIMARY KEY ("FJGID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_FILTERINSTANCE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTERINSTANCE" MODIFY ("RUNID#" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_GC
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" MODIFY ("GCID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" MODIFY ("FJGID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" MODIFY ("GCDESLEN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" MODIFY ("GCDES" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" MODIFY ("HASHVALUE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" ADD CONSTRAINT "MVIEW$_ADV_GC_PK" PRIMARY KEY ("GCID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_ROLLUP
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" MODIFY ("CLEVELID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" MODIFY ("PLEVELID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" ADD CONSTRAINT "MVIEW$_ADV_ROLLUP_PK" PRIMARY KEY ("RUNID#", "CLEVELID#", "PLEVELID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_ELIGIBLE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" MODIFY ("SUMOBJN#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" MODIFY ("BYTECOST" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" MODIFY ("FREQUENCY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" ADD CONSTRAINT "MVIEW$_ADV_ELIGIBLE_PK" PRIMARY KEY ("SUMOBJN#", "RUNID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_JOURNAL
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" MODIFY ("SEQ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" MODIFY ("TIMESTAMP" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" ADD CONSTRAINT "MVIEW$_ADV_JOURNAL_PK" PRIMARY KEY ("RUNID#", "SEQ#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_LOG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LOG" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LOG" ADD CONSTRAINT "MVIEW$_ADV_LOG_PK" PRIMARY KEY ("RUNID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_BASETABLE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_BASETABLE" MODIFY ("COLLECTIONID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_BASETABLE" MODIFY ("QUERYID#" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_AJG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" MODIFY ("AJGID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" MODIFY ("AJGDESLEN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" MODIFY ("AJGDES" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" MODIFY ("HASHVALUE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" ADD CONSTRAINT "MVIEW$_ADV_AJG_PK" PRIMARY KEY ("AJGID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOAN_PAYMENTS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOAN_PAYMENTS" MODIFY ("PAYMENT_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOAN_PAYMENTS" MODIFY ("PAYMENT_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOAN_PAYMENTS" MODIFY ("PAYMENT_MODE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOAN_PAYMENTS" MODIFY ("LOAN_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOAN_PAYMENTS" ADD CHECK (payment_amount > 0) ENABLE;
  ALTER TABLE "SYSTEM"."LOAN_PAYMENTS" ADD CHECK (payment_mode IN ('Online', 'Cash', 'Card')) ENABLE;
  ALTER TABLE "SYSTEM"."LOAN_PAYMENTS" ADD PRIMARY KEY ("PAYMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ACCOUNTS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."ACCOUNTS" ADD FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "SYSTEM"."CUSTOMERS" ("CUSTOMER_ID") ENABLE;
  ALTER TABLE "SYSTEM"."ACCOUNTS" ADD FOREIGN KEY ("BRANCH_ID")
	  REFERENCES "SYSTEM"."BRANCHES" ("BRANCH_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BRANCHES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."BRANCHES" ADD CONSTRAINT "FK_MANAGER_ID" FOREIGN KEY ("MANAGER_ID")
	  REFERENCES "SYSTEM"."EMPLOYEES" ("EMPLOYEE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CARDS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CARDS" ADD FOREIGN KEY ("ACCOUNT_ID")
	  REFERENCES "SYSTEM"."ACCOUNTS" ("ACCOUNT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CUSTOMERS" ADD CONSTRAINT "FK_BRANCH" FOREIGN KEY ("BRANCH_ID")
	  REFERENCES "SYSTEM"."BRANCHES" ("BRANCH_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."EMPLOYEES" ADD FOREIGN KEY ("BRANCH_ID")
	  REFERENCES "SYSTEM"."BRANCHES" ("BRANCH_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOANS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOANS" ADD CONSTRAINT "FK_CUSTOMER_ID" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "SYSTEM"."CUSTOMERS" ("CUSTOMER_ID") ENABLE;
  ALTER TABLE "SYSTEM"."LOANS" ADD FOREIGN KEY ("GUARANTOR_ID")
	  REFERENCES "SYSTEM"."LOAN_GUARANTORS" ("GUARANTOR_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOAN_PAYMENTS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOAN_PAYMENTS" ADD FOREIGN KEY ("LOAN_ID")
	  REFERENCES "SYSTEM"."LOANS" ("LOAN_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_AJG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" ADD CONSTRAINT "MVIEW$_ADV_AJG_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_BASETABLE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_BASETABLE" ADD CONSTRAINT "MVIEW$_ADV_BASETABLE_FK" FOREIGN KEY ("QUERYID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_WORKLOAD" ("QUERYID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_CLIQUE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" ADD CONSTRAINT "MVIEW$_ADV_CLIQUE_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_ELIGIBLE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" ADD CONSTRAINT "MVIEW$_ADV_ELIGIBLE_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_EXCEPTIONS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_EXCEPTIONS" ADD CONSTRAINT "MVIEW$_ADV_EXCEPTION_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_FILTERINSTANCE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTERINSTANCE" ADD CONSTRAINT "MVIEW$_ADV_FILTERINSTANCE_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_FJG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" ADD CONSTRAINT "MVIEW$_ADV_FJG_FK" FOREIGN KEY ("AJGID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_AJG" ("AJGID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_GC
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" ADD CONSTRAINT "MVIEW$_ADV_GC_FK" FOREIGN KEY ("FJGID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_FJG" ("FJGID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_INFO
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" ADD CONSTRAINT "MVIEW$_ADV_INFO_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_JOURNAL
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" ADD CONSTRAINT "MVIEW$_ADV_JOURNAL_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_LEVEL
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" ADD CONSTRAINT "MVIEW$_ADV_LEVEL_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_OUTPUT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" ADD CONSTRAINT "MVIEW$_ADV_OUTPUT_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_ROLLUP
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" ADD CONSTRAINT "MVIEW$_ADV_ROLLUP_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" ADD CONSTRAINT "MVIEW$_ADV_ROLLUP_CFK" FOREIGN KEY ("RUNID#", "CLEVELID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LEVEL" ("RUNID#", "LEVELID#") ENABLE;
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" ADD CONSTRAINT "MVIEW$_ADV_ROLLUP_PFK" FOREIGN KEY ("RUNID#", "PLEVELID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LEVEL" ("RUNID#", "LEVELID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TRANSACTIONS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TRANSACTIONS" ADD FOREIGN KEY ("ACCOUNT_ID")
	  REFERENCES "SYSTEM"."ACCOUNTS" ("ACCOUNT_ID") ENABLE;
