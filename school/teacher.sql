CREATE TABLE TEACHER(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(30) NOT NULL,
    surname VARCHAR(30) NOT NULL,
    subject VARCHAR(30) NOT NULL,
    birthdate date NOT NULL,
    experience INT NOT NULL,
    salary INT NOT NULL 
    );