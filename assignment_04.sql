DROP TABLE IF EXISTS track_raw;

CREATE TABLE track_raw
(title TEXT, artist TEXT, album TEXT,
 count INTEGER, rating INTEGER, len INTEGER);


SELECT title, album FROM track_raw ORDER BY title LIMIT 3;
