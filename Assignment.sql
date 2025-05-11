create database Emp_Data

use Emp_Data

create table employee (Emp_ID int primary key , Emp_Name varchar(50) , DEPT_ID int , Manager_ID int )

select * from  employee

insert into  employee  values  (102 , 'Bob' , 2 , 101)  , 
           
		                      (103 , 'Charlie' , 3 , 101) ,  (104 , 'David' , 4 , 102) ,
							  
							  (105 , 'Emma' , 5 , '')
							  

--=======================================================================--


create table depts (DEPT_ID int primary key , Dept_Name varchar(50))

select * from depts

insert into depts values (1 , 'HR') ,( 2 , 'Finance') , (3 , 'IT')


--=======================================================================--

create table projects (Project_ID int primary key , Project_Name varchar(50) , Emp_ID int)

insert into projects values (1 , 'AI Chatbot' , 101) , (2 , 'Payroll System' , 102) , (3 , 'Inventory System' , 106)  

select * from projects

--=======================================================================--

-- 1. INNER JOIN: List employee names along with their department names.

select employee.Emp_Name as 'employee name' ,  Dept_Name as 'department name'   

from employee inner join depts on employee.DEPT_ID=depts.DEPT_ID;

--=======================================================================--

-- 2. LEFT JOIN: Show all employees and their corresponding departments (if any).

select * from employee left join depts on employee.Emp_Name=depts.Dept_Name;


select employee.Emp_Name ,  Dept_Name  

from employee left join depts on employee.Emp_Name=depts.Dept_Name;

--=======================================================================--

-- 3. RIGHT JOIN: List all departments with their assigned employees (include those without employees).

select * from depts right join employee on depts.Dept_Name=employee.Emp_Name;


select  depts.Dept_Name  , employee.Emp_Name 

from depts right join  employee on depts.Dept_Name=employee.Emp_Name;


--=======================================================================--

-- 4. FULL OUTER JOIN: Display all employees and departments, including unmatched records on both sides.

select * from employee full outer join depts on employee.Emp_Name=depts.Dept_Name;
