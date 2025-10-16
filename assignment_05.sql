DROP TABLE IF EXISTS model;
DROP TABLE IF EXISTS make;
CREATE TABLE make (
    id SERIAL,
    NAME VARCHAR(128) UNIQUE,
    PRIMARY KEY (id)
);

CREATE TABLE model (
    id SERIAL,
    NAME VARCHAR(128),
    make_id INTEGER REFERENCES make(id) ON DELETE CASCADE,
    PRIMARY KEY (id)
);

INSERT INTO make (NAME) VALUES ('Jaguar');
INSERT INTO make (NAME) VALUES ('Volkswagen');
INSERT INTO model (NAME, make_id) VALUES ('S-type (X200) V6', 1);
INSERT INTO model (NAME, make_id) VALUES ('S-type (X200) V8', 1);
INSERT INTO model (NAME, make_id) VALUES ('Super V8', 1);
INSERT INTO model (NAME, make_id) VALUES ('Golf SportWagen 4motion', 2);
INSERT INTO model (NAME, make_id) VALUES ('Golf/GTI',  2);

SELECT make.name, model.name
FROM model
JOIN make ON model.make_id = make.id
ORDER BY make.name LIMIT 5;