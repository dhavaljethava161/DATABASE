create database task2;
use task2;

create table details(
First_name tinytext,	
Last_name tinytext,
Address tinytext,
City tinytext,
Age int
);

drop table details;

insert into details value("Mickey","Mouse","123 Fantasy Way","Anaheim",73);
insert into details value("Bat","Man","321 Cavern Ave","Gotham",54);
insert into details value("Wonder","Woman","987 Truth Way","Paradise",39);
insert into details value("Donald","Duck","555 Quack Street","Mallard",65);
insert into details value("Bugs","Bunny","567 Carrot Street","Rascal",58);
insert into details value("Wiley","Coyote","999 Acme Way","Canyon",61);
insert into details value("Cat","Woman","234 Purrfect Street","Hairball",32);
insert into details value("Tweety","Bird","543","Itotitaw",28);

