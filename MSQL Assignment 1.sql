use employee;
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(30) NOT NULL UNIQUE
    );
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    designation VARCHAR(100),
    hire_date DATE DEFAULT (CURRENT_DATE()),
    department_id INT,
    location_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (location_id) REFERENCES location(location_id)
);
DESCRIBE departments;
SELECT * FROM location;
SELECT * FROM employees;

ALTER TABLE employees
ADD COLUMN e_mail VARCHAR(150);

ALTER TABLE employees
MODIFY COLUMN designation VARCHAR(150);

ALTER TABLE employees
DROP COLUMN age;

ALTER TABLE employees
RENAME COLUMN hire_date TO date_of_joining;

RENAME TABLE departments TO departments_info;
RENAME TABLE location TO locations;

TRUNCATE TABLE employees;
DROP TABLE employees;
DROP DATABASE employee;

CREATE DATABASE employee;
USE employee;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    designation VARCHAR(100),
    hire_date DATE DEFAULT (CURRENT_DATE),
    department_id INT,
    location_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);


