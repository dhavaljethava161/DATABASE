create database task4;
use  task4;
create table salesperson(
Sno int,
Sname varchar(15),
City varchar(15),
Comm double,
primary key (Sno)
);
-- drop table salesperson;

insert into salesperson(Sno,Sname,City,Comm) value(1001,"Peel","London",.12);
insert into salesperson(Sno,Sname,City,Comm) value(1002,"Seeres","San jose",.13);
insert into salesperson(Sno,Sname,City,Comm) value(1004,"Motika","London",.11);
insert into salesperson(Sno,Sname,City,Comm) value(1007,"Rafkin","Barcelona",.15);
insert into salesperson(Sno,Sname,City,Comm) value(1003,"Axelrod","New york",.1);

create table customer(
CNM int,
Cname varchar(15),
City varchar(15),
Rating int,
Sno int,
primary key(CNM),
foreign key (Sno) references salesperson(Sno)
);

insert into customer(CNM,Cname,City,Rating,Sno) value(201,"Hoffman","London",100,1001);
insert into customer(CNM,Cname,City,Rating,Sno) value(202,"Giovanne","Roe",200,1003);
insert into customer(CNM,Cname,City,Rating,Sno) value(203,"Liu","San jose",300,1002);
insert into customer(CNM,Cname,City,Rating,Sno) value(204,"Grass","Barcelona",100,1002);
insert into customer(CNM,Cname,City,Rating,Sno) value(206,"Clemens","London",300,1007);
insert into customer(CNM,Cname,City,Rating,Sno) value(207,"Pereira","Roe",100,1004);


select * from customer where Sno>1000;
select * from salesperson where City="London" and Comm>0.12;
select * from salesperson where City="London" or City= "Barcelona";
select * from salesperson where Comm>= 0.10 and Comm<=0.12;
select * from customer where rating<=100;