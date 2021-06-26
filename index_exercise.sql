USE codeup_test_db

DESCRIBE table;

USE codeup_test_db;
-- Creates an INDEX that will not show duplicates?
-- An index is just a reference for data so we don't have ot access the entire database every time?
DESCRIBE albums;
ALTER TABLE albums
ADD UNIQUE unique_artist_and_name (name,artist);
INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Their Greatest Hits (1971–1975)', 1982, 47.3, 'Country rock, soft rock, folk rock'),
       ('AC/DC','Back in Black',1980,29.4,'Hard rock');

SELECT artist,name
FROM albums
WHERE artist = 'Michael Jackson';

SELECT artist,name
FROM albums
WHERE artist = 'AC/DC';

ALTER TABLE albums
    ADD UNIQUE unique_artist_and_name (name,artist);
-- You can swap the ADD for  drop to drop the index.
ALTER TABLE albums
    DROP UNIQUE unique_artist_and_name (name,artist);


