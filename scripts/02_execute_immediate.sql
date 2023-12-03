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

EXECUTE IMMEDIATE FROM @DEMO_REPO/branches/main/scripts/demo_db/00_create_table_my_inventory.sql;

DESCRIBE TABLE MY_INVENTORY;
