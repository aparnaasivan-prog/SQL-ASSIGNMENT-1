create database employee;
use employee;
create table Departments(department_id int,department_name varchar(100));
create table Location(location_id int,location varchar(30));
create table Employees(employee_id int,employee_name varchar(50),
gender enum("M,F"),age int,hire_date date,designation varchar(100),
department_id int,location_id int,salary decimal(10,2));

alter table Employees add column email varchar(255);
alter table Employees modify designation varchar(255);
alter table Employees drop column Age;

rename table Departments to Departmnent_info;
rename table Location to Loactions;

TRUNCATE TABLE Employees;

drop table Employees;
drop database employee;

DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);