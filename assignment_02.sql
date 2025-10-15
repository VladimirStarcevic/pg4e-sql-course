DROP TABLE IF EXISTS ages;
CREATE TABLE ages (
                      name VARCHAR(128),
                      age INTEGER
);

DELETE FROM ages
WHERE TRUE;

INSERT INTO ages (name, age) VALUES ('Ailise', 37);
INSERT INTO ages (name, age) VALUES ('Cherry', 39);
INSERT INTO ages (name, age) VALUES ('Hately', 40);
INSERT INTO ages (name, age) VALUES ('Jay', 23);
INSERT INTO ages (name, age) VALUES ('Larissa', 18);

SELECT * FROM ages;
