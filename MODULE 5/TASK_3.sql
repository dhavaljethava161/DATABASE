create database task3;
use task3;
create table employee(
employee_id int auto_increment,
first_name varchar(15),
last_name varchar(15),
salary int,
joining_date timestamp,
department varchar(15),
primary key (employee_id)
);

create table incentive(
Employee_ref_if int,
Incentive_date timestamp,
Incentive_amount int,
primary key(Incentive_amount),
foreign key (Employee_ref_if) references employee(employee_id)
);
-- G)
create table employee_triggers(
employee_id int,
first_name varchar(15),
last_name varchar(15),
salary int,
joining_date timestamp,
department varchar(15)
);

drop table  trigger_view;
-- drop database task3;
drop table incentive;
-- truncate table incentive;
drop table employee;
-- truncate table employee;

-- This is inserting data of employee table
insert into employee (first_name,last_name,salary,joining_date,department) 
values("John", "Abraham",1000000,STR_TO_DATE('01-JAN-13 12:00:00 AM', '%d-%b-%y %h:%i:%s %p'),"Banking");
insert into employee (first_name,last_name,salary,joining_date,department) 
values("Micheal", "Clarke",800000,STR_TO_DATE('01-JAN-13 12:00:00 AM', '%d-%b-%y %h:%i:%s %p'),"Insurance");
insert into employee (first_name,last_name,salary,joining_date,department) 
values("Roy", "Thomas",700000,STR_TO_DATE('01-FEB-13 12:00:00 AM', '%d-%b-%y %h:%i:%s %p'),"Banking");
insert into employee (first_name,last_name,salary,joining_date,department) 
values("Tom", "Jose",600000,STR_TO_DATE('01-FEB-13 12:00:00 AM', '%d-%b-%y %h:%i:%s %p'),"Insurance");
insert into employee (first_name,last_name,salary,joining_date,department) 
values("Jerry", "Pinto",650000,STR_TO_DATE('01-FEB-13 12:00:00 AM', '%d-%b-%y %h:%i:%s %p'),"Insurance");
insert into employee (first_name,last_name,salary,joining_date,department) 
values("Philip", "Mathew",750000,STR_TO_DATE('01-JAN-13 12:00:00 AM', '%d-%b-%y %h:%i:%s %p'),"Services");
insert into employee (first_name,last_name,salary,joining_date,department) 
values("TestName1", "123",650000,STR_TO_DATE('01-JAN-13 12:00:00 AM', '%d-%b-%y %h:%i:%s %p'),"Services");
insert into employee (first_name,last_name,salary,joining_date,department) 
values("TestName2", "Lname",600000,STR_TO_DATE('01-JAN-13 12:00:00 AM', '%d-%b-%y %h:%i:%s %p'),"Insurance");



-- INSERT INTO view_trigger VALUES(new.employee_id,new.first_name,new.last_name,new.salary,new.joining_date,new.department)
-- use task3;
-- this query for viewing time as 12 hour clock
select joining_date,date_format(joining_date,"%d-%b-%y %l:%i:%s %p")from employee ;	

-- drop table incentive;
insert into incentive(Employee_ref_if,Incentive_date,Incentive_amount) values (1,str_to_date('01-FEB-13','%d-%b-%Y'),5000);
insert into incentive(Employee_ref_if,Incentive_date,Incentive_amount) values (2,str_to_date('01-FEB-13','%d-%b-%Y'),3000);
insert into incentive(Employee_ref_if,Incentive_date,Incentive_amount) values (3,str_to_date('01-FEB-13','%d-%b-%Y'),4000);
insert into incentive(Employee_ref_if,Incentive_date,Incentive_amount) values (1,str_to_date('01-JAN-13','%d-%b-%Y'),4500);
insert into incentive(Employee_ref_if,Incentive_date,Incentive_amount) values (2,str_to_date('01-JAN-13','%d-%b-%Y'),3500);
-- this query for viewing time as 12 hour clock
select Incentive_date,date_format(Incentive_date,"%d-%b-%y %l:%i:%s %p")from incentive ;	

-- A)
select first_name from employee where first_name="Tom";
-- B)
select first_name,date_format(joining_date,"%d-%b-%y %l:%i:%s %p"),salary from employee;
-- C)
select employee.*,incentive.* from employee inner join incentive on employee.joining_date=incentive.Incentive_date order by first_name, salary desc;
-- D)
select *from employee where first_name like '%J%';
-- E)
select department department, max(salary) as max_salary from employee  group by department order by salary asc;
-- F)
select employee.first_name,incentive.Incentive_amount from employee inner join incentive
on employee.joining_date=incentive.Incentive_date where Incentive_amount > 3000;

