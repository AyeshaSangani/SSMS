
 create database employees;

 use employees;

create table employees_data (
    EmpID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Department VARCHAR(50),
    JobTitle VARCHAR(50),
    Salary INT,
    HireDate DATE,
    City VARCHAR(50)
);

insert into employees_data values
(1, 'Alice Johnson', 'IT', 'Software Engineer', 70000, '2020-03-15', 'New York'),
(2, 'Bob Smith', 'HR', 'HR Manager', 68000, '2019-01-01', 'Chicago'),
(3, 'Charlie Lee', 'Finance', 'Accountant', 75000, '2021-11-22', 'Los Angeles'),
(4, 'Diana Clark', 'IT', 'Project Manager', 82000, '2020-08-23', 'New York'),
(5, 'Eve Adams', 'HR', 'Recruiter', 50000, '2022-10-05', 'San Francisco'),
(6, 'Frank Wright', 'Finance', 'Financial Analyst', 72000, '2020-08-19', 'Chicago'),
(7, 'Grace Hall', 'IT', 'Software Engineer', 65000, '2021-12-31', 'San Francisco'),
(8, 'Henry Ford', 'Marketing', 'SEO Specialist', 58000, '2021-12-01', 'New York'),
(9, 'Ivy Thomas', 'Marketing', 'Content Writer', 43000, '2022-03-01', 'Los Angeles'),
(10, 'Jake Miles', 'Finance', 'Accountant', 73000, '2017-04-10', 'Boston');


select * from emp_data;

                                      --CLAUSES

01--select
select names, department from emp_data
  
02--distint
select distinct department from emp_data
  
03--where
select * from emp_data where salary>10000
  
04--orderby
select * from emp_data  order by salary
  
05--groupby 
select department , count(*) as emp_no from emp_data group by department

06--having
select department, avg(salary) as avgsalary from emp_data group by department

07--top
select top(3)* from emp_data order by salary ASC
select top(3)* from emp_data order by salary DESC
