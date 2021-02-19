------ update and edit tables ------
---- NULL handling ----
SELECT COALESCE(null, 1);

---- primary key ----
-- show primary key: \d table (only in pgcli)--
-- insert a record with exact same match in the person tabel (will not work) --
SELECT * FROM person LIMIT 1;
insert into person (id, first_name, last_name, gender, date_of_birth, country_of_birth, email) values (1, 'Tiffany', 'Fissenden', 'Genderqueer', '2002-04-30', 'United States', null);

-- delete the primary key --
