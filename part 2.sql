#for create a table

create table client_master(
client_no int not null,
name varchar (10),
city varchar (30),
pincode int check (CHAR_LENGTH(pincode)=7) ,
state varchar(20),
salary int );

#to see the table

select*from client_master;

#for inserting the values

insert into client_master (client_no,name,city,pincode,state,salary) values 
(1,"Ivan","Mumbai",4000054,"Maharashtra",15000),
(2,"mamta","Madras",7800001,"tamilnadu",10000),
(3,"chhaya","Mumbai",4000057,"Maharashtra",50000),
(4,"ashwini","bangalore",5600001,"karnataka",10000),
(5,"hansel","Mumbai",4000060,"Maharashtra",20000),
(6,"deepak","Mangalore",5600050,"karnataka",10000);

#to see the name ,city and pincode records

select name,city,pincode from client_master;

#to see the records where city is mumbai in the table 

select * from client_master where city="Mumbai";

#update the city of client_no 5

update client_master set city= "bangalore" where client_no=5;

#update the city of client_no 2

update client_master set city="pune" where client_no=2;

#update the salary of client_no 1
update client_master set salary=20000 where client_no=1;

#delte the rows where city is bangalore

delete from client_master where city="bangalore";

#destory the table with its data

drop table client_master;
