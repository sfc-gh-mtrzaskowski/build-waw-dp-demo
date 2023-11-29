/*-----------------------------------------------------------------------------
BUILD 2023:   Database Change Management
Script:       02_execute_immediate.sql
Author:       Michał Trzaskowski
-----------------------------------------------------------------------------*/

-- USE ROLE ACCOUNTADMIN;
-- USE WAREHOUSE XS;
-- USE SCHEMA DB_TRZAS.PUBLIC;

-- ----------------------------------------------------------------------------
-- Step #1: Execute scripts in a Git stage
-- ----------------------------------------------------------------------------
LIST @DEMO_REPO/branches/main;
LIST @DEMO_REPO/branches/main/scripts;

SHOW TABLES;

EXECUTE IMMEDIATE FROM @DEMO_REPO/branches/main/scripts/initial_table.sql;
