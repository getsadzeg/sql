CREATE TABLE TEACHER(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(30) NOT NULL,
    surname VARCHAR(30) NOT NULL,
    birthdate date NOT NULL,
    experience INT NOT NULL,
    salary INT NOT NULL,
    subject_id INT REFERENCES SUBJECT(id)
    );
   
    ALTER TABLE TEACHER ADD CONSTRAINT salary_checker CHECK(salary > 150 AND salary < 10000);

CREATE TABLE STUDENT(
    id serial PRIMARY KEY NOT NULL,
    name VARCHAR(30) NOT NULL,
    surname VARCHAR(30) NOT NULL,
    birthdate date NOT NULL,
    class smallint NOT NULL,
    classname VARCHAR(1) NOT NULL
    );

CREATE TABLE OFFICER(
    id serial PRIMARY KEY NOT NULL,
    name VARCHAR(30) NOT NULL,
    surname VARCHAR(30) NOT NULL
    );
    
CREATE TABLE SUBJECT(
    id serial PRIMARY KEY NOT NULL,
    name VARCHAR(30) NOT NULL
    );

CREATE TABLE MARK_WRITE(
    teacher_id INT REFERENCES TEACHER(id),
    student_id INT REFERENCES STUDENT(id),
    mark INT CHECK(mark>=2 AND mark<=10),
    date Date NOT NULL,
    edited boolean,
    comment VARCHAR(150)
    );

CREATE TABLE PROTOCOL_WRITE(
    teacher_id INT REFERENCES TEACHER(id),
    officer_id INT REFERENCES OFFICER(id),
    type VARCHAR(30) NOT NULL,
    date Date NOT NULL,
    statement VARCHAR(150) NOT NULL
    );

INSERT INTO TEACHER (id, name, surname, birthdate, experience, salary) VALUES (1, 'name', 'surname', '1963-09-01', 15, 800);

INSERT INTO STUDENT (id, name, surname, birthdate, class, classname) VALUES (1, 'name', 'surname', '2002-06-14', 9, 5);

INSERT INTO OFFICER (id, name, surname) VALUES (1, 'name', 'surname');

INSERT INTO SUBJECT (id, name) VALUES (1, 'math');

INSERT INTO MARK_WRITE(teacher_id, student_id, mark, date, edited, comment) VALUES(1, 1, 10, '2016-10-10', FALSE, NULL);

INSERT INTO MARK_WRITE(teacher_id, student_id, mark, date, edited, comment) VALUES(2, 2, 10, '2016-10-10', FALSE, NULL);

INSERT INTO TEACHER (id, name, surname, birthdate, experience, salary) VALUES (2, 'secname', 'secsurname', '1967-08-01', 10, 800);

INSERT INTO STUDENT (id, name, surname, birthdate, class, classname) VALUES (2, 'secname', 'secsurname', '2002-07-21', 10, 5);

INSERT INTO PROTOCOL_WRITE(teacher_id, officer_id, type, date, statement) VALUES(2, 1, 'შენიშვნა', '2016-10-11', 'შენიშვნის ტესტი');

UPDATE STUDENT SET name = 'guri', surname = 'getsadze' WHERE id = 1;

UPDATE STUDENT SET name = 'niko', surname = 'adeishvili' WHERE id=2;

SELECT (id, name, surname, birthdate, class, classname) FROM STUDENT ORDER BY id ASC, name ASC, surname ASC, birthdate ASC, class ASC, classname ASC; 

SELECT (student_id, mark) FROM MARK_WRITE WHERE teacher_id = 1; /*selecting marks written by specified teachers, for specified subjects. 4th */ 

SELECT (STUDENT.name, STUDENT.surname, MARK_WRITE.teacher_id, MARK_WRITE.mark) FROM MARK_WRITE INNER JOIN STUDENT ON MARK_WRITE.student_id = STUDENT.id WHERE student_id = 1;

/* selecting specified student's all marks above. 3th */

    