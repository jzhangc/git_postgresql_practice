-- ========================================================================== --
-- this is a log file documenting all SQL codes creating/editing the database --
-- ========================================================================== --
-- no need to run these lines again --
--
--
------ Create a practice database in a custom location ------
-- create a table space --
CREATE TABLESPACE postgres_practice OWNER jingzhang LOCATION '/Users/jingzhang/Documents/git_repo/git_postgresql_practice/db';
-- create the database --
CREATE DATABASE test;
--
-- connect to the database using SQLTools in vscode before doing the following --