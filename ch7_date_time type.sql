------ date and time type ------
-- show the current date and timestamp --
SELECT NOW();

-- elements --
SELECT NOW()::DATE;
SELECT NOW()::TIME;


-- calculate age --
SELECT first_name, last_name, gender, country_of_birth, date_of_birth, AGE(NOW(), date_of_birth) AS age FROM person;