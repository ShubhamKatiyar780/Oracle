-- Displays all user-created tables in the current schema (shortcut for USER_TABLES)
SELECT * FROM TAB;

-- Displays all tables in the entire database (from all users/schemas)
-- Requires DBA privileges
SELECT OWNER, TABLE_NAME FROM DBA_TABLES;

-- Shows when a specific object (e.g., table named 'SHUBH') was created
-- Filters for objects owned by SYSTEM and of type TABLE
SELECT CREATED 
FROM DBA_OBJECTS 
WHERE OBJECT_NAME = 'SHUBH' 
  AND OWNER = 'SYSTEM' 
  AND OBJECT_TYPE = 'TABLE';

--  Displays all tables that are accessible to the current user 
-- (includes own tables and those with granted privileges)
SELECT * FROM ALL_TABLES;

-- Shows all sequences accessible to the user (used to auto-generate numeric values like IDs)
SELECT * FROM ALL_SEQUENCES;

-- Lists all views the user can access (views are virtual tables based on SELECT queries)
SELECT * FROM ALL_VIEWS;

--  Displays all indexes accessible to the user 
-- Indexes are used to speed up data retrieval in tables
SELECT * FROM ALL_INDEXES;

-- Shows compilation errors for PL/SQL objects (e.g., procedures, functions, triggers)
SELECT * FROM ALL_ERRORS;

-- Lists all constraints accessible to the user
-- Includes PRIMARY KEY, FOREIGN KEY, UNIQUE, CHECK, NOT NULL, etc.
SELECT * FROM ALL_CONSTRAINTS;

-- Displays all clusters accessible to the user 
-- Clusters are a storage technique to store related rows of different tables together
SELECT * FROM ALL_CLUSTERS;
