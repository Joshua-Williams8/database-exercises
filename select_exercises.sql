USE
codeup_test_db;

-- SELECT column1, column2, ... FROM table_name;
-- SELECT artist FROM albums;
-- SELECT column1, column2, ...
--     FROM table_name
-- WHERE column_name = 'value';

-- 3. Below
-- The name of all albums by Pink Floyd.
SELECT name
FROM albums
WHERE artist = 'Pink Floyd';
-- select the name column to DISPLAY
-- from the table albums
-- WHERE each ARTIST has the value Pink floyd.

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT genre
FROM albums
WHERE name = 'Nevermind';

-- Which albums were released in the 1990s
SELECT name
FROM albums
WHERE release_date < 1990;
-- We are saying before 1990

-- Which albums had less than 20 million certified sales
SELECT name
FROM albums
WHERE sales < 20;

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT name
FROM albums
WHERE genre = 'Rock';

