CREATE TABLE employee_bio(
emp_no INT Primary Key NOT NULL,
birth_date DATE NOT NULL,   
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
gender VARCHAR NOT NULL,
hire_date DATE);

CREATE TABLE company_departments(
dept_no VARCHAR Primary Key NOT NULL,
dept_name VARCHAR NOT NULL);

CREATE TABLE employee_dept(
emp_no INT NOT NULL,
dept_no VARCHAR NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
Foreign Key(emp_no) References employee_bio(emp_no),
Foreign Key (dept_no) References company_departments(dept_no));

CREATE TABLE manager_dept(
dept_no VARCHAR Not NULL,
emp_no INT NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
Foreign Key(dept_no) References company_departments(dept_no),
Foreign Key(emp_no) References employee_bio(emp_no));

CREATE TABLE salary(
emp_no INT Primary Key NOT NULL,
salary INT NOT NULL,
from_date DATE NOT NUll,
to_date DATE NOT NULL,
Foreign Key(emp_no) References employee_bio(emp_no));

CREATE TABLE titles(
emp_no INT NOT NULL,
title VARCHAR NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
Foreign Key (emp_no) References employee_bio(emp_no))