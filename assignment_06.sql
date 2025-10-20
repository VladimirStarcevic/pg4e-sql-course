DROP TABLE IF EXISTS roster;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS student;

CREATE TABLE student (
                         id SERIAL,
                         name VARCHAR(128) UNIQUE,
                         PRIMARY KEY(id)
);


CREATE TABLE course (
                        id SERIAL,
                        title VARCHAR(128) UNIQUE,
                        PRIMARY KEY(id)
);

CREATE TABLE roster (
                        id SERIAL,
                        student_id INTEGER REFERENCES student(id) ON DELETE CASCADE,
                        course_id INTEGER REFERENCES course(id) ON DELETE CASCADE,
                        role INTEGER,
                        UNIQUE(student_id, course_id),
                        PRIMARY KEY (id)
);


-- STUDENTS
INSERT INTO student (name) VALUES ('Aneesah');
INSERT INTO student (name) VALUES ('Ayva');
INSERT INTO student (name) VALUES ('Che');
INSERT INTO student (name) VALUES ('Sharon');
INSERT INTO student (name) VALUES ('Basile');
INSERT INTO student (name) VALUES ('Elodie');
INSERT INTO student (name) VALUES ('Imogen');
INSERT INTO student (name) VALUES ('Sol');
INSERT INTO student (name) VALUES ('Bartosz');
INSERT INTO student (name) VALUES ('Derrin');
INSERT INTO student (name) VALUES ('Jason');
INSERT INTO student (name) VALUES ('Zeph');
-- INSTRUCTORS
INSERT INTO student (name) VALUES ('Ryhs');
INSERT INTO student (name) VALUES ('Rahel');
INSERT INTO student (name) VALUES ('Brad');




INSERT INTO course (title) VALUES ('si106');
INSERT INTO course (title) VALUES ('si110');
INSERT INTO course (title) VALUES ('si206');

SELECT * FROM student;
SELECT * FROM course;

INSERT INTO roster (student_id, course_id, role) VALUES (1, 1, 0);
INSERT INTO roster (student_id, course_id, role) VALUES (2, 1, 0);
INSERT INTO roster (student_id, course_id, role) VALUES (3, 1, 0);
INSERT INTO roster (student_id, course_id, role) VALUES (4, 1, 0);
INSERT INTO roster (student_id, course_id, role) VALUES (5, 2, 0);
INSERT INTO roster (student_id, course_id, role) VALUES (6, 2, 0);
INSERT INTO roster (student_id, course_id, role) VALUES (7, 2, 0);
INSERT INTO roster (student_id, course_id, role) VALUES (8, 2, 0);
INSERT INTO roster (student_id, course_id, role) VALUES (9, 3, 0);
INSERT INTO roster (student_id, course_id, role) VALUES (10, 3, 0);
INSERT INTO roster (student_id, course_id, role) VALUES (11, 3, 0);
INSERT INTO roster (student_id, course_id, role) VALUES (12, 3, 0);
INSERT INTO roster (student_id, course_id, role) VALUES (13, 1, 1);
INSERT INTO roster (student_id, course_id, role) VALUES (14, 2, 1);
INSERT INTO roster (student_id, course_id, role) VALUES (15, 3, 1);

SELECT student.name, course.title, roster.role
FROM student
         JOIN roster ON student.id = roster.student_id
         JOIN course ON roster.course_id = course.id
ORDER BY course.title, roster.role DESC, student.name;


