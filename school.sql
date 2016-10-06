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