select * from tbleemployee
select * from tbldept

truncate table tbleemployee
--update record
update tbleemployee set empname='Rani',city='Mumbai',deptid=3 where empid=1
update tbleemployee set city='Pune' where deptid=3

--delete perticular record
delete from tbleemployee where empid=2
insert into tbleemployee values('Surya','Mumbai',1)
insert into tbleemployee values('Kranti','Pune',1)
insert into tbleemployee values('Pari','Nashik',2)
insert into tbleemployee values('Kirti','Nagpur',3)
insert into tbleemployee values('Aarti','Solapur',4)
insert into tbleemployee values('Riya','Satara',3)
insert into tbleemployee values('Neha','Kolhapur',2)
insert into tbleemployee values('Nitin','Nagar',2)
insert into tbleemployee values('Pooja','Sangli',5)
insert into tbleemployee values('RAj','Aurangabad',4)
insert into tbleemployee values('Riya','Raigad',3)
insert into tbleemployee values('Neha','chiplun',1)
insert into tbleemployee values('Nitin','ANagar',4)
insert into tbleemployee values('Pooja','Sangola',5)
insert into tbleemployee values('RAj','Indapur',5)
insert into tbldept values(5,'Service')
alter table tbleemployee add salary decimal
update tbleemployee set salary=25000 where deptid=1
update tbleemployee set salary=28000 where deptid=2
update tbleemployee set salary=29000 where deptid=3
update tbleemployee set salary=35000 where deptid=4
update tbleemployee set salary=24000 where deptid=5

select empname,city,salary from tbleemployee
select empname from tbleemployee
--where
select * from tbleemployee where empid=1
select * from tbleemployee where deptid=4

--operators <,<=,>=,>,<>
select * from tbleemployee where salary=25000
select * from tbleemployee where salary <=24000
select * from tbleemployee where salary<>25000 --not equal to<>
select * from tbleemployee where salary>=25000
select * from tbleemployee where salary>25000
select * from tbleemployee where salary<25000

--between operator
select * from tbleemployee where salary between 24000 and 28000

--distinct
select distinct city from tbleemployee 
select distinct deptid from tbleemployee 

--in clause
--in it is used to select multiple distinct value
select * from tbleemployee where deptid in(3,4,5)

update tbleemployee set salary=34000 where empid in(1,4,7,11,14)

select * from tbleemployee where empid in(1,3,5,7,9,11)
select * from tbleemployee where city in('Pune','Mumbai')
select * from tbleemployee where salary in(25000,29000)

--not in clause
select * from tbleemployee where deptid not in(3,4,5)

update tbleemployee set salary=34000 where empid not in(1,4,7,11,14)
select * from tbleemployee where empid not in(1,3,5,7,9,11)
select * from tbleemployee where city not in('Pune','Mumbai')
select * from tbleemployee where salary not in(25000,29000)