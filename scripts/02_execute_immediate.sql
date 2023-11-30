/*-----------------------------------------------------------------------------
BUILD 2023:   Database Change Management
Script:       02_execute_immediate.sql
Author:       Michał Trzaskowski
-----------------------------------------------------------------------------*/

-- USE ROLE ACCOUNTADMIN;
-- USE WAREHOUSE XS;
-- USE SCHEMA DB_TRZAS.PUBLIC;

-- ----------------------------------------------------------------------------
-- Step #1: Execute scripts that create initial table in a Git stage
-- ----------------------------------------------------------------------------
SHOW TABLES;

EXECUTE IMMEDIATE FROM @DEMO_REPO/branches/main/databases/snowflake_objects/demo_db/schemas/tables/00_initial_table.sql
