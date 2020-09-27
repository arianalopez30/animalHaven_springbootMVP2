CREATE DATABASE IF NOT EXISTS animal_haven;

USE animal_haven;

CREATE TABLE animals(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    type VARCHAR(50),
    gender VARCHAR(10),
    breed VARCHAR(50),
    age	INT,
    PRIMARY KEY (id)
    );
    
    CREATE USER 'springuser'@'localhost' IDENTIFIED BY 'springuser';
    
    GRANT SELECT, INSERT, DELETE, UPDATE ON animal_haven.animals TO 'springuser'@'localhost';
    GRANT ALL PRIVILEGES ON * . * TO 'springuser'@'localhost';
    
INSERT INTO animals(name, type, gender, breed, age) VALUES ('Patches', 'Cat', 'Female', 'Tortoise Shell Calico', 1);

INSERT INTO animals(name, type, gender, breed, age) VALUES ('Pochacco', 'Dog', 'Male', 'Dalmation', 10);