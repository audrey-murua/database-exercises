USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist TEXT NOT NULL,
                        name  TEXT NOT NULL,
                        release_date INT(4) UNSIGNED NOT NULL,
                        sales FLOAT UNSIGNED NOT NULL,
                        genre VARCHAR(255) NOT NULL,
                        PRIMARY KEY (id)
);

SHOW TABLES;
DESCRIBE albums;
SHOW CREATE TABLE albums\G;


