------ Create table  ------
-- connect to the database using SQLTools in vscode before doing the following --
CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(7) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(150) NOT NULL
);
ALTER TABLE person
    ALTER COLUMN email DROP NOT NULL;
-- add some recrod --
-- we add two, but one at a time
INSERT INTO person (
        first_name,
        last_name,
        gender,
        date_of_birth
    ) VALUES (
        'Ann',
        'Smith',
        'FEMALE',
        DATE '1988-01-09'
    );
INSERT INTO person (
        first_name,
        last_name,
        gender, 
        date_of_birth,
        email
    ) VALUES (
        'Jake',
        'Jones',
        'MALE',
        DATE '1990-12-31',
        'jake@gmail.com'
    );