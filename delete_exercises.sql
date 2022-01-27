USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'After 1991';
-- SELECT name FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Albums with the genre of disco' AS 'Disco';
-- SELECT name FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'Albums by Meatloaf' AS 'Meatloaf';
-- SELECT name FROM albums WHERE artist = 'Meatloaf';
DELETE FROM albums WHERE artist = 'Meatloaf';



