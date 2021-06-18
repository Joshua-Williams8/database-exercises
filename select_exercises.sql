USE codeup_test_db;

-- SELECT column1, column2, ... FROM table_name;
-- SELECT artist FROM albums;
-- SELECT column1, column2, ...
--     FROM table_name
-- WHERE column_name = 'value';

-- 3. Below
-- The name of all albums by Pink Floyd.
SELECT name AS 'Pink Floyd''s albums'
FROM albums
WHERE artist = 'Pink Floyd';
-- select the name column to DISPLAY
-- from the table albums
-- WHERE each ARTIST has the value Pink floyd.

-- The year Sgt. Pepper's Lonely Hearts Club Band was released

SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released'
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT genre AS 'The genre of Nevermind is'
FROM albums
WHERE name = 'Nevermind';

-- Which albums were released in the 1990s
SELECT name AS 'Albums released in the 1990s'
FROM albums
WHERE release_date < 1990;
-- We are saying before 1990

-- Which albums had less than 20 million certified sales
SELECT name AS 'All the albums with less than 20 mill sales.'
FROM albums
WHERE sales < 20;

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT name AS 'All the albums with the Rock genre'
FROM albums
WHERE genre = 'Rock';

