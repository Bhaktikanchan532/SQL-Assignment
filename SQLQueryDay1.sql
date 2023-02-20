create table person(
personid int,
name varchar(40),
city varchar(20),
)

create table employee(
empid int,
empname varchar(40),
salary decimal
)

create table student(
rollno int primary key,
studname varchar(40) not null,
email varchar(40) unique,
age int check(age>18),
city varchar(10) default('Pune'),
--modify the size of city varchar(20) to varchar(40),
alter table student alter column city varchar(40)
sp_help student
alter table student drop colunm city
)