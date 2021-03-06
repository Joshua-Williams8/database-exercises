USE codeup_test_db;
-- This file is for creating our albums table
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist  VARCHAR(50),
    name    VARCHAR(100) NOT NULL,
    release_date   INT,
    sales   DECIMAL(15,2),
    genre   VARCHAR(100),

    PRIMARY KEY (id)
);
