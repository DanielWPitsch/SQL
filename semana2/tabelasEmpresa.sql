------------------------------------------
-- DDL statement for table 'HR' database--
--------------------------------------------
create database empresa;
use empresa;

CREATE TABLE EMPLOYEES (
                            EMP_ID CHAR(9) NOT NULL, 
                            F_NAME VARCHAR(15) NOT NULL,
                            L_NAME VARCHAR(15) NOT NULL,
                            SSN CHAR(9),
                            B_DATE DATE,
                            SEX CHAR,
                            ADDRESS VARCHAR(30),
                            JOB_ID CHAR(9),
                            SALARY DECIMAL(10,2),
                            MANAGER_ID CHAR(9),
                            DEP_ID CHAR(9) NOT NULL,
                            PRIMARY KEY (EMP_ID));
                            
  CREATE TABLE JOB_HISTORY (
                            EMPL_ID CHAR(9) NOT NULL, 
                            START_DATE DATE,
                            JOBS_ID CHAR(9) NOT NULL,
                            DEPT_ID CHAR(9),
                            PRIMARY KEY (EMPL_ID,JOBS_ID));
 
 CREATE TABLE JOBS (
                            JOB_IDENT CHAR(9) NOT NULL, 
                            JOB_TITLE VARCHAR(15) ,
                            MIN_SALARY DECIMAL(10,2),
                            MAX_SALARY DECIMAL(10,2),
                            PRIMARY KEY (JOB_IDENT));

CREATE TABLE DEPARTMENTS (
                            DEPT_ID_DEP CHAR(9) NOT NULL, 
                            DEP_NAME VARCHAR(15) ,
                            MANAGER_ID CHAR(9),
                            LOC_ID CHAR(9),
                            PRIMARY KEY (DEPT_ID_DEP));

CREATE TABLE LOCATIONS (
                            LOCT_ID CHAR(9) NOT NULL,
                            DEP_ID_LOC CHAR(9) NOT NULL,
                            PRIMARY KEY (LOCT_ID,DEP_ID_LOC));
                            
SHOW VARIABLES LIKE "secure_file_priv";

LOAD DATA INFILE 'c:\\wamp64\\tmp\\Departments.csv'
INTO TABLE DEPARTMENTS
FIELDS TERMINATED BY ',';

SELECT * FROM DEPARTMENTS;

#DROP TABLE DEPARTMENTS;

LOAD DATA INFILE 'c:\\wamp64\\tmp\\Employees.csv'
INTO TABLE EMPLOYEES
FIELDS TERMINATED BY ',';

SELECT * FROM EMPLOYEES;

LOAD DATA INFILE 'c:\\wamp64\\tmp\\JobHistory.csv'
INTO TABLE JOB_HISTORY
FIELDS TERMINATED BY ',';

SELECT * FROM JOB_HISTORY;

LOAD DATA INFILE 'c:\\wamp64\\tmp\\Jobs.csv'
INTO TABLE JOBS
FIELDS TERMINATED BY ',';

SELECT * FROM JOBS;

LOAD DATA INFILE 'c:\\wamp64\\tmp\\Locations.csv'
INTO TABLE LOCATIONS
FIELDS TERMINATED BY ',';

SELECT * FROM LOCATIONS;