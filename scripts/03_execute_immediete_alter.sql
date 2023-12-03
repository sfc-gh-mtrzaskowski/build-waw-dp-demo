/*-----------------------------------------------------------------------------
BUILD 2023:   Database Change Management
Script:       03_execute_immediate_alter.sql
Author:       Michał Trzaskowski
-----------------------------------------------------------------------------*/

-- USE ROLE ACCOUNTADMIN;
-- USE WAREHOUSE XS;
-- USE SCHEMA DB_TRZAS.PUBLIC;

-- ----------------------------------------------------------------------------
-- Step #1: Execute script in a Git stage that alter initial table
-- ----------------------------------------------------------------------------
SHOW TABLES;

EXECUTE IMMEDIATE FROM @DEMO_REPO/branches/main/scripts/demo_db/01_alter_table_my_inventory.sql;

DESCRIBE TABLE MY_INVENTORY;