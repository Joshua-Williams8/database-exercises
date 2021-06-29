DROP TABLE IF EXISTS quotes;

CREATE TABLE quotes
(
    id        INT UNSIGNED NOT NULL AUTO_INCREMENT,
    content   TEXT         NOT NULL,
    author_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (author_id) REFERENCES authors (id)
);
# Foreign keys will link our tables together, like the emp_no
# The author_id...

INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
        'I love deadlines. I love the whooshing noise they make as they go by.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
        'Time is an illusion. Lunchtime doubly so.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Mark' and last_name = 'Twain'),
        'Clothes make the man. Naked people have little or no influence on society.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Kurt' and last_name = 'Vonnegut'),
        'The universe is a big place, perhaps the biggest.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'), 'Don''t Panic.');
# Reformatted stuff, where it get's the ID from authors using the first_name and last_name to select the right ID.
# Shows us all the quotes, with the author's name next to it, using a join, ont he authors id.
SELECT quotes.content AS 'content',
       CONCAT(authors.first_name, ' ', authors.last_name)
                      AS 'author name'
FROM quotes
         JOIN authors ON authors.id = author_id;
DROP TABLE IF EXISTS topics;

CREATE TABLE topics
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO topics(name)
VALUES ('Space and Time'),
       ('Humor'),
       ('Office Life'),
       ('Hitchiker''s Guide to the Galaxy');

CREATE TABLE quote_topic
(
    quote_id iNT UNSIGNED NOT NULL,
    topic_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (quote_id) REFERENCES quotes (id),
    FOREIGN KEY (topic_id) REFERENCES topics(id)
);

INSERT INTO quote_topic(quote_id, topic_id)
VALUES (1, 2), (1, 3), (2, 4), (3, 1),
       (3, 2), (3, 3), (3, 4), (4, 2), (5, 1);


SELECT first_name, last_name, content, t.name
FROM quotes
         JOIN quote_topic qt on quotes.id = qt.quote_id
         JOIN topics t on qt.topic_id = t.id
         JOIN authors a on quotes.author_id = a.id;
