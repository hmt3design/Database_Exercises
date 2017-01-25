SELECT 'Delete albums released after 1991' AS 'Exercise 1';
DELETE FROM albums WHERE release_date > 1991;
SELECT 'Delete albums with the genre of Disco' AS 'Exercise 2';
DELETE FROM albums WHERE genre LIKE 'Disco';
SELECT 'Delete albums by Peter Jackson' AS 'Exercise 3';
DELETE FROM albums WHERE artist = 'Peter Jackson';