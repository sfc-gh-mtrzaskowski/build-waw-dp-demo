snow sql -q "ALTER GIT REPOSITORY DEMO_REPO FETCH"
snow sql -q "EXECUTE IMMEDIATE FROM @DEMO_REPO/branches/main/databases/snowflake_objects/deploy_objects.sql"