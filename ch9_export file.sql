------ export file into a csv file ------
-- this will use the data script /data/person-car.sql
---- deleting records with foreign keys ----
---- export file into a CSV file ----
SELECT person.id AS person_id, person.first_name, person.last_name, person.gender, person.email, car.make, car.model, car.price
 FROM person LEFT JOIN car ON car.id = person.car_id ORDER BY person.id;

\copy (SELECT person.id AS person_id, person.first_name, person.last_name, person.gender, person.email, car.make, car.model, car.price
 FROM person LEFT JOIN car ON car.id = person.car_id ORDER BY person.id) TO
 '/Users/jingzhang/Documents/git_repo/git_postgresql_practice/data/test.csv' DELIMITER ',' CSV HEADER;

\copy (SELECT person.id AS person_id, person.first_name, person.last_name, person.gender, person.email, car.make, car.model, car.price FROM person LEFT JOIN car ON car.id = person.car_id ORDER BY person.id) TO '/Users/jingzhang/Documents/git_repo/git_postgresql_practice/data/test2.csv' DELIMITER ',' CSV HEADER