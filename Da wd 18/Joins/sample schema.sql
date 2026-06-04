create database joins ; 
use joins ; 
-- 1. Create Departments Table
CREATE TABLE departments (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- 2. Create Employees Table
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    dept_id INT, -- Links clearly to departments table
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- 3. Create Salaries Table
CREATE TABLE salaries (
    emp_id INT PRIMARY KEY, -- Links clearly to employees table
    salary_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

-- Insert Departments
INSERT INTO departments (dept_name) VALUES 
('HR'),
('Engineering'),
('Marketing'),
('Finance');

-- Insert 10 Employees
INSERT INTO employees (name, dept_id) VALUES 
('Alice Smith', 1), 
('Bob Jones', 2),    
('Charlie Brown', 2), 
('Diana Prince', 3),  
('Evan Wright', 1),  
('Fiona Gallagher', 2),
('George Clark', 3),  
('Hannah Abbott', 1),
('Ian Malcolm', NULL),
('Julia Roberts', 2); 

-- Insert Salaries
INSERT INTO salaries (emp_id, salary_amount) VALUES 
(1, 60000.00),
(2, 85000.00), 
(3, 75000.00),  
(4, 90000.00),  
(5, 55000.00),  
(6, 95000.00),  
(7, 62000.00),  
(8, 48000.00),  
(9, 105000.00); 
