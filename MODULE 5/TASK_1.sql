create database task1;

use task1; 
create table student(
Rollno int auto_increment,
Name varchar(50),
Branch varchar(50),
primary key(Rollno)
);

create table exam(
Rollno int,
S_code varchar(25),
Marks int,
P_code varchar(15),
foreign key (Rollno) references student(Rollno)
);

-- drop table exam;
-- drop table student;

insert into student(Name,Branch) values ("Jay","Computer Science");
insert into student(Name,Branch) values ("Suhani","Electronic and Com");
insert into student(Name,Branch) values ("Kirti","Electronic and Com");

insert into exam (Rollno,S_code,Marks,P_code) values (1,"CS11",50,"CS");
insert into exam (Rollno,S_code,Marks,P_code) values (1,"CS12",60,"CS");
insert into exam (Rollno,S_code,Marks,P_code) values (2,"EC101",66,"EC");
insert into exam (Rollno,S_code,Marks,P_code) values (2,"EC102",70,"EC");
insert into exam (Rollno,S_code,Marks,P_code) values (3,"EC101",45,"EC");
insert into exam (Rollno,S_code,Marks,P_code) values (3,"EC102",50,"EC");


