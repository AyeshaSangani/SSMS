create database employees;


use employees;

create table emp_data 
(
  id int primary key,
  names varchar(20),
  department varchar(20),
  designation varchar(20),
  salary decimal(10,2),
  joining_date varchar(20),
  phone_no varchar(20),
  status_ bit
);


insert into
emp_data
(id,names,department,designation,salary,joining_date,phone_no,status_)
values(01, 'Ahmed' , 'IT' , 'Manager' , 60000 , '01-06-23' , '9276565367896' , 1),
  (02, 'Abdullah' , 'Marketing' , 'SEO Analyst' , 65000 , '01-06-23' , '9276565367896' , 2),
  (03, 'Umer' , 'Finance' , 'Manager' , 80000 , '01-06-23' , '9276565367896' , 3);




select *from emp_data;


                                ---- OPERATORS ----

select id , names , salary from emp_data

     01--Arithmetic Operators  (+ , - , * , / , %)
  
select names , salary , salary+5000 as final_salary from emp_data;

select names , salary , salary+(salary*0.5) as final_salary from emp_data;

     02--Relatoional Operator (< , > , <= , => , == , =)
  
select * from salary <=1500

     03--Logical operators (AND , OR , NOT)
  
select * from emp_data
  
select * from emp_data where salary <=30000 OR status_=0
  
select * from emp_data where NOT status_=1

select * from emp_data where salary >=30000 AND status_=0
