------ foreign keys, joins and relationships ------
-- this will use the data script /data/person-car.sql


-- foreign keys, joins and relationships --


---- deleting records with foreign keys ----
-- let's add a new car record and a person
insert into car (id, make, model, price) values (13, 'Dodge', 'Stratus', '29093.09');
insert into person (id, first_name, last_name, gender, date_of_birth, country_of_birth, email) values (9000, 'Caria', 'Burnip', 'Female', '1997-10-10', 'Croatia', null);
UPDATE person SET car_id=13 WHERE id=9000;