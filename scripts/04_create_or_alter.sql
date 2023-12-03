/*-----------------------------------------------------------------------------
BUILD 2023:   Database Change Management
Script:       04_create_or_alter.sql
Author:       Michał Trzaskowski
-----------------------------------------------------------------------------*/

-- USE ROLE ACCOUNTADMIN;
-- USE WAREHOUSE XS;
-- USE SCHEMA DB_TRZAS.PUBLIC;

-- ----------------------------------------------------------------------------
-- Step #1: Run the CREATE OR ALTER TABLE command from the script in a Git stage
-- ----------------------------------------------------------------------------
SHOW TABLES;

EXECUTE IMMEDIATE FROM @DEMO_REPO/branches/main/databases/snowflake_objects/demo_db/schemas/tables/my_inventory.sql;

DESCRIBE TABLE MY_INVENTORY;
