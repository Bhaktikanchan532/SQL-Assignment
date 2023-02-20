create table book(
id int,
name varchar(20),
publication varchar(20),
contact int,
author varchar(40),
price decimal
)

drop table book 

alter table book alter column id int not null
alter table book add constraint pk_book primary key(id)
alter table book alter column name varchar(20) not null
alter table book add constraint df_book default 'TQ' for publication
alter table book add constraint un_book unique(contact)
sp_help book
--drop 
alter table book drop constraint pk_book
alter table book drop constraint df_book
alter table book drop constraint un_book
-----------------------------------------------------------------------------
--DML Data Manupulation Language
create table tbldept(
deptid int primary key,
deptname varchar(20)
)
create table tbleemployee(
empid int primary key identity(1,1),
empname varchar(40),
city varchar(40),
deptid int,
constraint fk_deptemp foreign key(deptid) references tbldept(deptid)
)
select * from tbldept
select * from tbleemployee

insert into tbldept values(1,'HR')
insert into tbldept values(2,'Admin')
insert into tbldept values(3,'Development')
insert into tbldept values(4,'Testing')

insert into tbleemployee values('Rohan','Mumbai',1)
insert into tbleemployee values('Pooja','Pune',1)
insert into tbleemployee values('Aarti','Nagpur',1)
insert into tbleemployee values('Kirti','Kolhapur',1)
insert into tbleemployee values('Prachi','Aurangabad',1)
insert into tbleemployee values('Arya','Solapur',1)
insert into tbleemployee values('Kiran','Nashik',1)
insert into tbleemployee values('Raj','Nagar',2)
insert into tbleemployee values('Riya','Satara',3)

insert into tbleemployee(empname,deptid) values('rajesh',3)