USE employees;

DESCRIBE departments;

DESCRIBE dept_emp;

DESCRIBE dept_manager;

DESCRIBE employees;

DESCRIBE salaries;

DESCRIBE titles;


USE codeup_test_db;

DESCRIBE albums;

ALTER TABLE albums
ADD UNIQUE (artist, name);

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Alanis Morissette','Jagged Little Pill', 1995, 24.4, 'Alternative rock');

# table creation named artists that uses unique key contraints on combined values of name and artist
# CREATE TABLE artists (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     artist VARCHAR(255) NOT NULL,
#     name VARCHAR(255) NOT NULL,
#     PRIMARY KEY (id),
#     UNIQUE (name, artist)
# );




