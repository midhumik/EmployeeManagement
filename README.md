# EmployeeManagement

Database information of the project.

mysql code for database.
-------------------------------------------
create database projectgroup5;
use projectgroup5;

create table employeedetails(
employee_id int(10) not null,
first_name varchar(50),
last_name varchar(50),
gender varchar(20),
contact_no varchar(14),
email varchar(40),
age int(3),
manager_id int(10),
business_unit varchar(40),
job_title varchar(30),
salary double(10,2),
date_of_joining date,
primary key(employee_id));

drop table employeedetails;

select * from employeedetails;
desc employeedetails;

insert into employeedetails values(234352,'Arun','Kumar','Male','9456382716','arun@outlook.com',27,182345,'Insurance','Programming Analyst',35000,'2015-02-18');
insert into employeedetails values(234353,'Jyothi','Kumari','Female','8675462376','jyothi123@gmail.com',25,182346,'Transport','Junior Developer',28000,'2016-10-02');
insert into employeedetails values(234354,'Rakesh','Tiwari','Male','6538291090','rakesh@gmail.com',26,182347,'Communication','Java Developer',30000,'2016-07-28');
insert into employeedetails values(234355,'John','Pulikkattil','Male','8085237896','pkjohn@hotmail.com',30,182345,'Insurance','Full Stack Developer',40000,'2012-04-10');


create table EmployeeManager(username varchar(20) primary key,pass varchar(20));

insert into employeemanager value("sooraj","sooraj@123");
insert into employeemanager value("devaraj","dev@321");

select * from employeemanager;
drop table employeemanager;
