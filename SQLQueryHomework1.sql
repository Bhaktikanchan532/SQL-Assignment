create table customer(
city varchar(20),
country varchar(20),
customerId int,
postalcode int
)
sp_help customer
select * from customer
select city from customer        --Q1 Write a statement that will select the City column from the Customers table
insert into customer values('Pune','India',1,12345)
insert into customer values('Pune','India',1,123456)
insert into customer values('Berlin','USA',3,121110)
insert into customer values('London','USA',2,221214)
insert into customer values('Pune','India',1,12345)
insert into customer values('fff','Jermani',4,0)
insert into customer values('Pune','India',5,0)
insert into customer values('xxx','Norway',4,564423)
insert into customer values('aaa','France',3,0)
insert into customer values('sss','India',2,789456)
insert into customer values('ccc','India',5,987654)

select Distinct country from customer            ----Q2 Select all the different values from the Country column in the Customers table.

select * from customer where city='London'        ----Q3 Select all records where the City column has the value "London
select * from customer where city not in('Berlin')  -----Q4 Use the NOT keyword to select all records where City is NOT "Berlin".
update customer set customerId=23 where customerId=5
select * from customer where customerId=23      -----Q5 Select all records where the CustomerID column has the value 23.
select * from customer where city='Berlin' or city='London'   ---Q7 Select all records where the City column has the value 'Berlin' or 'London'.
select * from customer where city='Berlin' and postalcode=121110  --Q6 	Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.

select * from customer
order by city  ------Q8 	Select all records from the Customers table, sort the result alphabetically by the column City.

select * from customer
order by city desc ------Q9 	Select all records from the Customers table, sort the result reversed alphabetically by the column City.

select * from customer
order by country,city      ---Q10  	Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City

update customer set postalcode=null where postalcode=0
select * from customer where postalcode is null  --Q11  	Select all records from the Customers where the PostalCode column is empty.

select * from customer where postalcode is not null   ----Q12 	Select all records from the Customers where the PostalCode column is NOT empty.

update customer set city='Oslo'where country='Norway'  ---Q13 	Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".

delete from customer where country='Norway'  --Q14 	Delete all the records from the Customers table where the Country value is 'Norway'.

select * from customer where city LIKE 'a%' ---Q20 	Select all records where the value of the City column starts with the letter "a".

select * from customer where city LIKE '%a'  ---Q21 	Select all records where the value of the City column ends with the letter "a".

select * from customer where city LIKE '%a%'   ---Q22  	Select all records where the value of the City column contains the letter "a".

select * from customer where city LIKE 'a%b' ---Q23 	Select all records where the value of the City column starts with letter "a" and ends with the letter "b".

select * from customer where city not LIKE 'a%' ---Q24 Select all records where the value of the City column does NOT start with the letter "a".

select * from customer where city LIKE '_a%'  ---Q25 Select all records where the second letter of the City is an "a".

select * from customer where city LIKE '[acs]%'  ---Q26 	Select all records where the first letter of the City is an "a" or a "c" or an "s".

select * from customer where city LIKE '[a-f]%' ---Q27 	Select all records where the first letter of the City starts with anything from an "a" to an "f".

select * from customer where city not LIKE '[!acf]%' ----Q28 	Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".

select * from customer where country in('Norway','France')  ---Q29 Use the IN operator to select all the records where the Country is either "Norway" or "France".

select * from customer where country not in ('Norway','France')  ---Q30 Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".

create table product(
pname varchar(40),
pid int,
price decimal
)
select * from product

insert into product values('pen',1,15)
insert into product values('Pensil',2,20)
insert into product values('Book',3,24)
insert into product values('Rubber',2,18)
insert into product values('Paper',6,30)
insert into product values('ink',4,50)
insert into product values('Notebook',3,30)
insert into product values('Drafter',2,100)
insert into product values('Writingpad',1,60)
insert into product values('calculator',7,500)
insert into product values('chock','5',5)


select * from product where price between 10 and 20 ---Q31.	Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20

select * from product where price not between 10 and 20 ----Q32	Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.

create table persons(
DOB date 
)
select * from persons
alter table persons add Birthday date  --Q40 Add a column of type DATE called Birthday in Persons table
alter table persons drop column Birthday --Q41.	Delete the column Birthday from the Persons table

select count (1) country from customer group by country 
order by count(1)desc  --36.	List the number of customers in each country.