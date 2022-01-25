USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' AS 'Pink Floyd';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'The Beatles';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS 'Nirvana';
SELECT genre FROM albums WHERE artist = 'Nirvana';

SELECT 'Albums released in the 1990s' AS '90''s Albums';
SELECT release_date FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Albums had less than 20 million certified sales' AS 'Certified Sales';
SELECT sales FROM albums WHERE sales < 20.0;

SELECT 'All the albums with a genre of Rock' AS 'Rock albums';
SELECT name FROM albums WHERE genre = 'Rock';
