------ Create table  ------
-- -- connect to the database using SQLTools in vscode before doing the following --
-- CREATE TABLE person (
--     id BIGSERIAL NOT NULL PRIMARY KEY,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL,
--     gender VARCHAR(7) NOT NULL,
--     date_of_birth DATE NOT NULL,
--     email VARCHAR(150) NOT NULL
-- );
-- ALTER TABLE person
--     ALTER COLUMN email DROP NOT NULL;

-- add some recrod --
-- we add two, but one at a time
-- INSERT INTO person (
--         first_name,
--         last_name,
--         gender,
--         date_of_birth
--     ) VALUES (
--         'Ann',
--         'Smith',
--         'FEMALE',
--         DATE '1988-01-09'
--     );
-- INSERT INTO person (
--         first_name,
--         last_name,
--         gender, 
--         date_of_birth,
--         email
--     ) VALUES (
--         'Jake',
--         'Jones',
--         'MALE',
--         DATE '1990-12-31',
--         'jake@gmail.com'
--     );

------ table qury with SELECT FROM  ------
-- NOTE: the data table used here is created using data/person.sql
-- SELECT * FROM [table] LIMIT <n>; --
SELECT * FROM person LIMIT 10;
-- ORDER BY --
SELECT * FROM person ORDER BY (country_of_birth, date_of_birth) ASC;
-- SELECT DISTINCT * FROM --
SELECT DISTINCT country_of_birth FROM person ORDER BY country_of_birth ASC;
-- WHERE --
SELECT * FROM person WHERE gender='Female' ORDER BY last_name ASC;
SELECT * FROM person WHERE gender='Male' AND country_of_birth IN ('Canada', 'Russia') ORDER BY country_of_birth;
SELECT * FROM person WHERE country_of_birth IN ('Canada', 'Russia') AND last_name='Fisby' ORDER BY country_of_birth;
-- OFFSET --
-- NOTE:  certain orders need to be followed when combining ORDERBY, LIMIT and OFFSET. 
-- Specifically, ORDER BY always needs to be before OFFSET or LIMIT.
SELECT * FROM person ORDER BY country_of_birth LIMIT 10 OFFSET 5;
-- BETWEEN --
SELECT * FROM person 
    WHERE date_of_birth BETWEEN DATE '2013-01-01' AND '2015-01-01'
    ORDER BY date_of_birth;
-- LIKE and ILIKE --
-- NOTE: ILIKE is a case insensitive version of LIKE
SELECT * FROM person WHERE email LIKE '%@bloomberg.com';
SELECT * FROM person WHERE email LIKE '%@google.%';

    