------ update and edit tables ------
---- NULL handling ----
SELECT COALESCE(null, 1);

---- primary key ----
-- show primary key: \d table (only in pgcli)--
-- insert a record with exact same match in the person tabel (will not work) --
SELECT * FROM person LIMIT 1;
insert into person (first_name, last_name, gender, date_of_birth, country_of_birth, email) values ('Sarah', 'Fissenden', 'Genderqueer', '2002-04-30', 'United States', null);

-- delete the primary key --

-- adding a record to create duplicated email --
insert into person (first_name, last_name, gender, date_of_birth, country_of_birth, email) values ('Sarah', 'Findlay', 'Genderfluid', '1994-04-22', 'Germany', 'nfindlay1@goo.ne.jp');

---- unique constraint ------

---- CHECK constraint ------
-- add a record with an irrelevant value to "gender" --
insert into person (first_name, last_name, gender, date_of_birth, country_of_birth, email) values ('Dehlia', 'Margrett', 'Car', '1986-02-19', 'Democratic Republic of the Congo', 'dmargrett0@1und1.de');

---- Delete records ----