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
---- Basic but important operations  ----
-- NOTE: the data table used here is created using data/person.sql
-- SELECT * FROM [table] LIMIT <n>; --
SELECT * FROM person LIMIT 10;
-- ORDER BY --
SELECT * FROM person ORDER BY (country_of_birth, date_of_birth) ASC;
-- SELECT DISTINCT * FROM --
SELECT DISTINCT country_of_birth FROM person ORDER BY country_of_birth ASC;

---- Filtering  ----
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
SELECT first_name, last_name FROM person 
    WHERE date_of_birth BETWEEN DATE '1999-01-01' AND '2000-01-01' 
    LIMIT 10;
-- LIKE and ILIKE --
-- NOTE: ILIKE is a case insensitive version of LIKE
SELECT * FROM person WHERE email LIKE '%@bloomberg.com';
SELECT * FROM person WHERE email LIKE '%@google.%';
-- below: select persons whose first name has "o" as the second letter
SELECT * FROM person WHERE first_name ILIKE '_o%' ORDER BY first_name; 

-- IS NULL and IS NOT NULL to filter null values --
SELECT * FROM person 
    WHERE email IS NULL 
    ORDER BY last_name ASC 
    LIMIT 30;

---- Aggregation  ----
-- count unique values in coutry_of_birth column
SELECT COUNT(DISTINCT country_of_birth) FROM person;
-- GROUP BY --
-- GROUP BY with COUNT
SELECT country_of_birth, COUNT(*) FROM person 
    GROUP BY country_of_birth
    ORDER BY count DESC;
-- GROUP BY with HAVING (aggregation -> conditional filtering)
-- NOTE: if to use with ORDER BY, HAVING clause has to come before ORDER BY but after GROUP BY
SELECT country_of_birth, COUNT(*) FROM person
    GROUP BY country_of_birth
    HAVING COUNT(*) >= 10
    ORDER BY count DESC;

-- In order to do more stats with aggregation functions, we are using another table data/car.sql --
-- command: \i <FILE> to run the car.sql data script to import the data table
SELECT * FROM car LIMIT 10;

-- MAX, MIN, AVG, SUM --
SELECT MAX(price) FROM car;
SELECT MAX(price), MIN(price), ROUND(AVG(price), 2) AS average FROM car;
SELECT SUM(price) FROM car;
-- find the highest, lowest and average car prices per maker --
SELECT make, MAX(price), MIN(price), ROUND(AVG(price), 2) AS average FROM car 
    GROUP BY make 
    ORDER BY make ASC; 
-- Example: sum aggregated by make --
SELECT make, SUM(price) FROM car
    GROUP BY make
    ORDER BY make DESC;

-- Mathematical operations: +, -, /, *, ^, !, % etc --
SELECT 10-2 AS subtraction;
SELECT 8!;
-- query and calculate 10% discount. Results displayed in a table with make, model, original price and discounted price --
SELECT make, model, price AS original, price*0.1 AS ten_percent, price*0.9 AS ten_percent_off FROM car
    ORDER BY make ASC;