create database employees;

use employees;

create table employees_info(id int,first_name varchar(50),last_name varchar(50),age int,department varchar(100));

select * from employees_info;

insert into employees_info(id,first_name,last_name,age,department) values (101 , 'ahmed' , 'ali' , 25 , 'Finanace' ) , 
(102 , 'anas' , 'ali' , 23 , 'HR' ) , (103 , 'usman' , 'ahmed' , 24 , 'Marketing' ) , (104 , 'arman' , '' , 22 , 'IT' ) ,
(105 , 'hadi' , '' , 22 , 'Sales' );

update employees_info
set first_name='Abdul Hadi' where id=104;

update employees_info
set first_name='Arman' where id=105;

update employees_info
set age=23 where id=105;

update employees_info
set department='Sales' where id=104;