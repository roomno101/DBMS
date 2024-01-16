#default_constraints

create table emp1(eid int,ename varchar(20),esal int default 10000);

insert into emp1 (eid,ename) values
(1001,"Akash"),
(1002,"Bikash"),
(1003,"Prakash");

select*from emp1;

#if we are not putting any deafult constraint during 
#the creation of table,we can declare it latter aslo.

alter table emp1 modify eid int default 101;
insert into emp1 (ename) values("ramesh");
insert into emp1 (ename,esal) values("mahesh",5000);

#Not_Null_Constraint

create table emp2 (eid INT NOT NULL,ename varchar(20),esal INT);

insert into emp2 values
(1001,"gopal",10500);

select*from emp2;

#get error because eid doesnot have a null values

insert into emp2 (ename,esal) values
("ganesh",10500);

#check_constraint

CREATE TABLE emp3 (
    eid INT CHECK (eid IN (1001, 1002)),
    ename VARCHAR(20),
    esal INT
);

insert into emp3 values(1001,"Rakesh",15000);
insert into emp3 values(1002,"Rajehs",14000);

select*from emp3;

#error for check constraint

insert into emp3 values(1005,"Mukesh",5000);





