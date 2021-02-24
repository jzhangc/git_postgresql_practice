-- creat tables
CREATE TABLE car(
	car_uuid UUID NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19, 2) NOT NULL
);

CREATE TABLE person(
	person_uuid UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(50) NOT NULL,
	email VARCHAR(150) UNIQUE,
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
	car_uuid UUID REFERENCES car(car_uuid) UNIQUE
);

-- insert cars
insert into car (car_uuid, make, model, price) values (uuid_generate_v4(), 'Mercedes-Benz', 'SLK-Class', '72043.11');
insert into car (car_uuid, make, model, price) values (uuid_generate_v4(), 'Toyota', 'Corolla', '97553.83');

-- insert persons
insert into person (person_uuid, first_name, last_name, gender, date_of_birth, country_of_birth, email) values (uuid_generate_v4(), 'Dehlia', 'Margrett', 'Male', '1986-02-19', 'Democratic Republic of the Congo', 'dmargrett0@1und1.de');
insert into person (person_uuid, first_name, last_name, gender, date_of_birth, country_of_birth, email) values (uuid_generate_v4(), 'Noemi', 'Dumper', 'Male', '2000-02-27', 'Indonesia', 'ndumper1@unicef.org');
insert into person (person_uuid, first_name, last_name, gender, date_of_birth, country_of_birth, email) values (uuid_generate_v4(), 'Viv', 'Hatherill', 'Male', '1983-07-16', 'Sweden', 'vhatherill2@infoseek.co.jp');