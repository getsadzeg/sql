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
    