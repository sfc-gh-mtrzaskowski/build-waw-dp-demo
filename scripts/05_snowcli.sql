/*-----------------------------------------------------------------------------
BUILD 2023:   Database Change Management
Script:       05_snowcli.sql
Author:       Michał Trzaskowski
-----------------------------------------------------------------------------*/

-- ----------------------------------------------------------------------------
-- Step #1: Run our DCM process from SnowCLI
-- ----------------------------------------------------------------------------

-- Review the deploy_objects.sql script

DESCRIBE TABLE MY_INVENTORY;

-- snow sql -q "ALTER GIT REPOSITORY DEMO_REPO FETCH"
-- snow sql -q "EXECUTE IMMEDIATE FROM @DEMO_REPO/branches/main/snowflake_objects/deploy_objects.sql"

DESCRIBE TABLE MY_INVENTORY;
