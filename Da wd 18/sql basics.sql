create database db2 ;
use db2 ;
show databases ;

drop database db2 ;
-- this is a comment 
-- char , varchar 
create table db2.users(
user_id int primary key,
username varchar(20) unique not null,
age int check(age>=18) ,
phone_no varchar(20) ,
city varchar(10) default("Noida") ,
designation varchar(30) check (designation in ("Manager","Intern","CEO"))
) ;
select * from db2.users ;

create table db2.orders(
order_id int primary key ,
user_id int ,
quantity int ,
product_name varchar(30),
category varchar(20) ,
foreign key (user_id) references users(user_id)
);

-- alter ( create a column ) 
alter table db2.users
add column email varchar(40) ; 

-- alter ( modify a column ) 
alter table db2.users 
modify column email char(30);

alter table db2.orders 
modify column product_name varchar(50) ;

alter table db2.users
drop column email ;


describe db2.orders;
describe db2.users ;


drop table db2.users ;
-- constraints - primary key , unique , not null , default , check , foreign key

-- inserting data 

insert into users(user_id , username , age , phone_no , city , designation) values
				(1001, "Dhawal", 34 ,"900030009","Gurgaon","Manager"),
                (1002, "Aman", 18 , "9876004321","Delhi","Intern");
                
select * from users ;

update users 
set age = 30
where user_id = 1002 ;                
                
delete from users 
where user_id = 1001 ;        

INSERT INTO users (user_id, username, age, phone_no, city, designation) VALUES
(1, 'alex_g', 28, '9876543210', 'Noida', 'Manager'),
(2, 'sam_b', 19, '9876543211', 'Delhi', 'Intern'),
(3, 'johndoe', 45, '9876543212', 'Mumbai', 'CEO'),
(4, 'clara_p', 22, '9876543213', 'Noida', 'Intern'),
(5, 'mike_r', 35, '9876543214', 'Bangalore', 'Manager'),
(6, 'emily_w', 20, '9876543215', 'Noida', 'Intern'),
(7, 'david_k', 40, '9876543216', 'Chennai', 'Manager'),
(8, 'rachel_m', 25, '9876543217', 'Gurgaon', 'Intern'),
(9, 'chris_t', 31, '9876543218', 'Noida', 'Manager'),
(10, 'sarah_f', 18, '9876543219', 'Pune', 'Intern'),
(11, 'kevin_v', 29, '9876543220', 'Noida', 'Manager'),
(12, 'lisa_o', 21, '9876543221', 'Hyderabad', 'Intern'),
(13, 'ryan_d', 38, '9876543222', 'Noida', 'Manager'),
(14, 'anna_s', 23, '9876543223', 'Kolkata', 'Intern'),
(15, 'james_h', 50, '9876543224', 'Noida', 'Manager');        


INSERT INTO db2.orders (order_id, user_id, quantity, product_name, category) VALUES
(101, 1, 2, 'Wireless Mouse', 'Electronics'),
(102, 2, 1, 'Leather Journal', 'Stationery'),
(103, 3, 1, 'Ergonomic Desk Chair', 'Furniture'),
(104, 4, 3, 'Gel Pens Pack', 'Stationery'),
(105, 5, 1, 'Mechanical Keyboard', 'Electronics'),
(106, 6, 2, 'Water Bottle 1L', 'Fitness'),
(107, 7, 1, 'Noise Cancelling Headphones', 'Electronics'),
(108, 8, 4, 'Notebooks A5', 'Stationery'),
(109, 9, 1, 'Laptop Stand', 'Electronics'),
(110, 10, 2, 'Coffee Mug', 'Kitchenware'),
(111, 11, 1, 'Fitness Smartwatch', 'Electronics'),
(112, 12, 3, 'Sticky Notes Pack', 'Stationery'),
(113, 13, 1, 'Desk Mat Large', 'Office Supplies'),
(114, 14, 5, 'AA Batteries Pack', 'Electronics'),
(115, 15, 1, 'External Hard Drive 1TB', 'Electronics');

select * from orders ;

-- find users having the age more than 22 years 
select username,city  -- second execution 
from users  -- first execution 
where age > 22 ;  -- last execution

























