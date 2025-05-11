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

-------------------------------------------------------------------------------------------------

--JOINS

--Inner Joins

select * from user_data inner join dept on user_data.DEPT_ID=dept.DEPT_ID;


--Right Joints


select * from user_data right join dept on user_data.DEPT_ID=dept.DEPT_ID;

--Left Joints


select * from user_data left join dept on user_data.DEPT_ID=dept.DEPT_ID;

--Full Outer Joints

select * from user_data full outer join dept on user_data.DEPT_ID=dept.DEPT_ID;


----------------------------------------------------------------------------------

select user_data.NAMES as 'employee name' ,  dept.NAMES as 'department name'   

from user_data inner join dept on user_data.DEPT_ID=dept.DEPT_ID;

---------------------------------------------------------------------------------

select
user_data.NAMES as 'employee name' ,
dept.NAMES as 'department name'  , 
project.NAMES as 'Project Name'
from 
user_data left join dept
on 
user_data.DEPT_ID=dept.DEPT_ID
left join project
on
project.EMP_ID=user_data.ID
