USE codeup_test_db;

SELECT 'All albums listed' AS 'All Albums';
SELECT * FROM albums;
UPDATE albums SET sales = (sales * 10);
SELECT * FROM albums;

SELECT 'All albums released before 1980' AS 'Before 1980';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = (release_date - 100) WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;

SELECT 'All albums by Michael Jackson' AS 'Michael Jackson Albums';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Peter Jackson';

