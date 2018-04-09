DROP TABLE attendances;
DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

CREATE TABLE attendances (
	id SERIAL8 PRIMARY KEY,
	person_id INT REFERENCES people(id) ON DELETE CASCADE,
	movie_id INT REFERENCES movies(id) ON DELETE CASCADE
);

INSERT INTO people (name) VALUES ('Sarah Bartlett');
INSERT INTO people (name) VALUES ('Kelsie Braidwood');
INSERT INTO people (name) VALUES ('Liam Kavenns');
INSERT INTO people (name) VALUES ('Daniel Childs');
INSERT INTO people (name) VALUES ('Victor Chugbo');
INSERT INTO people (name) VALUES ('Brian Cooke');
INSERT INTO people (name) VALUES ('Patrick Cullen');
INSERT INTO people (name) VALUES ('Roberto De Marco');
INSERT INTO people (name) VALUES ('Ruaridh Dunbar');
INSERT INTO people (name) VALUES ('Edward Fallon');
INSERT INTO people (name) VALUES ('Hadsan Geele');
INSERT INTO people (name) VALUES ('Paul Kelly');
INSERT INTO people (name) VALUES ('John McCollum');
INSERT INTO people (name) VALUES ('Andrew Lowrie');
INSERT INTO people (name) VALUES ('Callum Mackenzie');
INSERT INTO people (name) VALUES ('Chris Marshall');
INSERT INTO people (name) VALUES ('Fraser McKay');
INSERT INTO people (name) VALUES ('Lyle Mitchell');
INSERT INTO people (name) VALUES ('Stuart O''Donnell');
INSERT INTO people (name) VALUES ('Connor Rose');
INSERT INTO people (name) VALUES ('Nikhil Sharma');
INSERT INTO people (name) VALUES ('Scott Stevenson');
INSERT INTO people (name) VALUES ('Alan Russell');

UPDATE people SET name = 'Liam Cavens' WHERE name = 'Liam Kavenns';
DELETE FROM people WHERE name = 'John McCollum';

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '21:55');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '15:45');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '18:30');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '13:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '23:45');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '16:50');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '16:35');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '21:55');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '17:30');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '15:30');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '15:30');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '13:30');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '19:25');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '16:50');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '22:10');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '16:30');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-man: Homecoming', 2017, '16:45');

UPDATE movies SET (title, show_time) = ('Guardians of the Galaxy', '21:00') WHERE title = 'Guardians of the Galaxy';
UPDATE movies SET (title, show_time) = ('Guardians of the Galaxy 2', '22:00') WHERE title = 'Guardians of the Galaxy 2';

DELETE FROM movies WHERE title = 'Batman Begins';

