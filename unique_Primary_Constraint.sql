#unique_Constraint

CREATE TABLE emp4 (
    eid INT unique,
    ename VARCHAR(20),
    esal INT
);

insert into emp4 values(1001,'Ram',20000);

select * from emp4;

#primary_Constraint

CREATE TABLE emp5 (
    eid INT PRIMARY KEY,
    ename VARCHAR(20),
    esal INT
);

insert into emp5 values(1001,'Ram',20000);

select * from emp4;