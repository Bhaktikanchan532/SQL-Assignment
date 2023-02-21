create table customer(
city varchar(20),
country varchar(20),
customerId int,
postalcode int
)
sp_help customer
select * from customer
select city from customer  --Q1 display city colunm only
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


select * from customer where city='London'   ----Q3
select * from customer where city not in('Berlin')  -----Q4
update customer set customerId=23 where customerId=5
select * from customer where customerId=23   -----Q5
select * from customer where city='Berlin' or city='London'   ---Q7
select * from customer where city='Berlin' and postalcode=121110  --Q6

select * from customer
order by city  ------Q8

select * from customer
order by city desc ------Q9

--select * from customer
--order by country 
--order by city      ---Q10

select * from customer where postalcode=0  --Q11

select * from customer where not postalcode=0   ----Q12

update customer set city='Oslo'where country='Norway'  ---Q13

delete from customer where country='Norway'  --Q14

select * from customer where city LIKE 'a%' ---Q20

select * from customer where city LIKE '%a'  ---Q21

select * from customer where city LIKE '%a%'   ---Q22

select * from customer where city LIKE 'a%b' ---Q23

select * from customer where city not LIKE 'a%' ---Q24

select * from customer where city LIKE '_a%'  ---Q25

select * from customer where city LIKE '[acs]%'  ---Q26

select * from customer where city LIKE '[a-f]%' ---Q27

select * from customer where city not LIKE '[!acf]%' ----Q28

select * from customer where country in('Norway','France')  ---Q29

select * from customer where country not in ('Norway','France')  ---Q30

