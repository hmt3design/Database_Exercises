SELECT 'Update sales' AS 'Exercise 1';
UPDATE albums SET sales = (sales*10);
SELECT 'Update years' AS 'Exercise 2';
UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
SELECT 'Change name' AS 'Exercise 3';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

