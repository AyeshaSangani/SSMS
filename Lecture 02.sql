 create database employees;

 use employees;

 create table info (id int , first_name varchar(50), last_name varchar(50) , age int , depart varchar(25) );

 insert into info(id , first_name , last_name , age , depart ) values (101 , 'Anas', 'Ahmed', 25 , 'web developer'),
   (102 , 'Arman', 'Shaikh', 22 , 'web designer'),
   (101 , 'Abdullah', 'Taqi', 20 , 'Graphic designer');

 
select * from info;

update info
set age=21 where id=3;

select * from info;


update info
set id=101 where id=3;

update info
set first_name='ahmed' where id=101;


update info
set last_name='ali' where id=101;
