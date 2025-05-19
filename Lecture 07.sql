create database Employee

use Employee

create table user_data (ID int primary key , NAMES varchar(50) , DEPT_ID int)

select * from user_data

insert into user_data values  (101 , 'Asad' , 111) , (102 , 'Anas' , 112)  , 
           
		                      (103 , 'Ahmed' , 113) ,  (104 , 'Ali' , 114)

---------------------------------------------------------------------

create table dept (DEPT_ID int primary key , NAMES varchar(50))

select * from dept

insert into dept values (111 , 'Sales') ,( 112 , 'Finance') , (113 , 'IT')

insert into dept values (114 , 'Marketing')

----------------------------------------------------------------------------

create table project (ID int primary key , NAMES varchar(50) , EMP_ID int)

insert into project values (1 , 'a-karachi' , 101) , (2 , 'b-karachi' , 102) , (3 , 'c-karachi' , 103)  

select * from project

-------------------------------------------------------------------------------

create table workers (
w_id int primary key , 
w_name varchar (50) , 
DEPT_ID int , 
joining_date date ,
w_email varchar (50) unique ,
salary int check (salary<=15000),
foreign key (DEPT_ID) references dept (DEPT_ID));

select * from workers

insert into workers values (1 , 'a-karachi' , 101) , (2 , 'b-karachi' , 102) , (3 , 'c-karachi' , 103)  

-------------------------------------------------------------------------------------------------


create table employees_ 
(
  id int primary key,
  full_name varchar(20),
  department varchar(20),
  position varchar(20),
  salary decimal(10,2),
);

select * from employees_;

insert into employees_ values (1013 , 'Ahmed' , 'IT' , 'Manager' , 99000) 

create table employees_Audit 
(
  Audit_id int primary key identity(1,1),
  id int,
  AuditTaken nvarchar(100),
  AuditDate datetime,
 
);

select * from employees_Audit ;


create trigger maintain_log_of_emp
on employees_
after insert
as
begin
insert into employees_Audit (id , AuditTaken , Auditdate)
select id, 'Inserted' , getdate()
from inserted;
end;

create trigger maintain_log_for_update_emp
on employees_
after update
as
begin
insert into employees_Audit (id , AuditTaken , Auditdate)
select id, 'Updated' , getdate()
from inserted;
end;

update employees_ set salary =98000 where id=1011;

select * from employees_Audit ;

create trigger maintain_log_for_delete_emp
on employees_
after delete
as
begin
insert into employees_Audit (id , AuditTaken , Auditdate)
select id, 'Delelted' , getdate()
from deleted;
end;


delete  employees_ where id=1012;



create table Products_ 
(
  id int primary key,
  Product_name varchar(100),
  Catgory nvarchar(100),
   price int ,
  Stock nvarchar(100),
);
select * from Products_ ;

insert into Products_
values 
(115, 'Levi’s 511 Jeans', 'Apparel', 70, 50)
(112 , 'Sony WH-1000XM5 Headphones', 'Electronics', 350, 30),
(113 , 'Adidas Ultraboost', 'Footwear', 180, 80),
(114 , 'The Alchemist Book', 'Books', 15, 200)

create table Products_Activity_Log 
(
  Log_id int primary key identity(1,1),
  id int ,
  ActionTaken nvarchar(100),
  ActionDate datetime,

  );

  create trigger maintain_log_of_pro0
on Products_
after insert
as
begin
insert into Products_Activity_Log  (id , ActionTaken , ActionDate)
select id, 'Inserted' , getdate()
from inserted;
end;

select * from Products_Activity_Log ;


create trigger maintain_log_of_pro1
on Products_
after insert
as
begin
insert into Products_Activity_Log  (id , ActionTaken , Actiondate)
select id, 'Inserted' , getdate()
from inserted;
end;

create trigger maintain_log_for_update_pro1
on Products_
after update
as
begin
insert into Products_Activity_Log  (id , ActionTaken , Actiondate)
select id, 'Updated' , getdate()
from inserted;
end;

update Products_ set Product_name ='Puma Hoodie' where id=115;

create trigger maintain_log_for_delete_pro
on Products_
after delete
as
begin
insert into Products_Activity_Log  (id , ActionTaken , ActionDate)
select id, 'Deleted' , getdate()
from deleted;
end;

delete  Products_ where id=115;
