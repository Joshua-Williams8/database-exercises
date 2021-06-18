USE
codeup_test_db;

-- UPDATE table_name
-- SET column1 = 'value1', column2 = 'value2', ...
-- WHERE columnA = 'valueA';

-- 2.
-- All albums in your table.
-- SELECT *
-- FROM albums\G
-- Above is better to look at.
SELECT *
FROM albums;
-- Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET sales = sales * 10;
SELECT 'Sales * 10' AS 'Sales * 10';
-- For checking all the sales up by 10
SELECT *
FROM albums;

-- All albums released before 1980
SELECT name AS 'Albums released before 1980'
FROM albums
WHERE release_date < 1980;
--Move all the albums before 1980 back to the 1800s.
UPDATE albums
SELECT 'Before 1980 back 100' AS 'Moved all the albums';

SET release_date = release_date - 100
WHERE release_date < 1980;
SELECT 'Sales * 10';
-- Below is a test list to see if it got moved before 1800s it's empty initially.
SELECT name
FROM albums
WHERE release_date < 1880;

-- All albums by Michael Jackson
SELECT name AS 'Albums by Michael Jackson'
FROM albums
WHERE artist = 'Michael Jackson';
-- Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT 'Peter' AS 'Michael is now';

SELECT name
FROM albums
WHERE artist = 'Peter Jackson';
