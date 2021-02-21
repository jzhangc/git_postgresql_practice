-- creat tables
CREATE TABLE car(
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19, 2) NOT NULL
);

CREATE TABLE person(
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(50) NOT NULL,
	email VARCHAR(150),
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
	car_id BIGINT REFERENCES car(id) UNIQUE
);

-- insert cars
insert into car (make, model, price) values ('Mercedes-Benz', 'SLK-Class', '72043.11');
insert into car (make, model, price) values ('Toyota', 'Corolla', '97553.83');

-- insert persons
insert into person (first_name, last_name, gender, date_of_birth, country_of_birth, email) values ('Dehlia', 'Margrett', 'Male', '1986-02-19', 'Democratic Republic of the Congo', 'dmargrett0@1und1.de');
insert into person (first_name, last_name, gender, date_of_birth, country_of_birth, email) values ('Noemi', 'Dumper', 'Male', '2000-02-27', 'Indonesia', 'ndumper1@unicef.org');
insert into person (first_name, last_name, gender, date_of_birth, country_of_birth, email) values ('Viv', 'Hatherill', 'Male', '1983-07-16', 'Sweden', 'vhatherill2@infoseek.co.jp');