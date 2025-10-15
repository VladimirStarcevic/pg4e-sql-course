DROP TABLE IF EXISTS automagic;


CREATE TABLE automagic (
                           id SERIAL PRIMARY KEY,
                           name VARCHAR(32) NOT NULL,
                           height FLOAT NOT NULL
);

INSERT INTO automagic (name, height) VALUES ('Vladimir', 180);
SELECT * FROM automagic;
