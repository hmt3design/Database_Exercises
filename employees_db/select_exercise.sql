SELECT 'Pink Floyd albums' AS 'Exercise 1';
SELECT name FROM albums WHERE artist = 'Pink Floyd';
SELECT 'Sgt. Pepper release date' AS 'Exercise 2';
SELECT release_date from albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';
SELECT 'Nevermind genre' AS 'Exercise 3';
SELECT genre from albums where name = 'Nevermind';
SELECT '1990s albums' AS 'Exercise 4';
SELECT name from albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT 'lesser certified sales' AS 'Exercise 5';
SELECT name FROM albums WHERE sales <= 20000000;
SELECT 'Rock albums' AS 'Exercise 6';
SELECT * FROM albums WHERE genre = 'Rock';

