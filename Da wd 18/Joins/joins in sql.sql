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


select * from departments ;
select * from employees ;
select * from salaries ;


-- Find the department name for every employee. 
select employees.name , departments.dept_name
from employees -- left table 
inner join departments -- right table 
on employees.dept_id = departments.dept_id ;



-- write a query to display the employee name and salary
select employees.name , salaries.salary_amount
from employees 
inner join salaries
on employees.emp_id = salaries.emp_id ;

select e2.name , s.salary_amount 
from employees e2
inner join salaries s
on e2.emp_id = s.emp_id ;


-- Display employee name, department name, and salary.
select e.emp_id ,e.name , d.dept_name , s.salary_amount 
from employees e 
inner join departments d 
on e.dept_id = d.dept_id 
inner join salaries s 
on e.emp_id = s.emp_id ;




-- Show all employees working in the HR department.
select e.name , d.dept_name -- 3rd 
from employees e -- 1st 
inner join departments d -- 2nd  
on e.dept_id = d.dept_id 
where d.dept_name = 'HR'; -- 4th 


-- Display employees whose salary is greater than 50,000 along with their department.
select e.name , s.salary_amount , d.dept_name 
from employees e 
inner join departments d 
on e.dept_id = d.dept_id 
inner join salaries s 
on e.emp_id = s.emp_id 
where s.salary_amount > 50000 ;



-- display employees working 'HR' department and name starting with 'G'
select e.name , d.dept_name 
from employees e 
inner join departments d 
on e.dept_id = d.dept_id 
where e.name like 'G%' and d.dept_name = 'HR';


-- union
create table table1(name varchar(20));

create table table2(name varchar(20));

insert into table1(name) values('Dhawal'),('Aman'),('Priyanshu'),('Piyush'),('Jain') ;

insert into table2(name) values('Dhawal') , ('Amit') , ('Harsh') ,('Jain') ;
 
select name from table1 union select name from table2; 

select name from table1 union all select name from table2 ;
 
